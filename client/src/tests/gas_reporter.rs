//! Starknet Resource Reporter - Utility for measuring Cairo execution costs
//!
//! This module provides tools for tracking computational resources across multiple
//! transactions during E2E tests, useful for comparing costs of different operations.
//!
//! Starknet fees are based on:
//! - Cairo VM steps (main compute cost)
//! - Builtin usage (pedersen, poseidon, range_check, etc.)
//! - Data availability costs (not tracked here)

use starknet::core::types::TransactionReceipt;
use starknet_crypto::Felt;

/// Individual resource measurement for a single operation
#[derive(Debug, Clone)]
pub struct ResourceReport {
    pub operation: String,
    pub transaction_hash: Felt,
    pub steps: u64,
    pub memory_holes: u64,
    pub range_check_builtin: u64,
    pub pedersen_builtin: u64,
    pub poseidon_builtin: u64,
    pub ec_op_builtin: u64,
    pub bitwise_builtin: u64,
    pub keccak_builtin: u64,
}

impl ResourceReport {
    /// Create a new ResourceReport from a transaction receipt
    pub fn from_receipt(operation: impl Into<String>, receipt: &TransactionReceipt) -> Self {
        let (tx_hash, resources) = match receipt {
            TransactionReceipt::Invoke(r) => (r.transaction_hash, r.execution_resources.clone()),
            TransactionReceipt::Declare(r) => (r.transaction_hash, r.execution_resources.clone()),
            TransactionReceipt::Deploy(r) => (r.transaction_hash, r.execution_resources.clone()),
            TransactionReceipt::DeployAccount(r) => {
                (r.transaction_hash, r.execution_resources.clone())
            }
            TransactionReceipt::L1Handler(r) => (r.transaction_hash, r.execution_resources.clone()),
        };

        Self {
            operation: operation.into(),
            transaction_hash: tx_hash,
            steps: resources.computation_resources.steps,
            memory_holes: resources.computation_resources.memory_holes.unwrap_or(0),
            range_check_builtin: resources
                .computation_resources
                .range_check_builtin_applications
                .unwrap_or(0),
            pedersen_builtin: resources
                .computation_resources
                .pedersen_builtin_applications
                .unwrap_or(0),
            poseidon_builtin: resources
                .computation_resources
                .poseidon_builtin_applications
                .unwrap_or(0),
            ec_op_builtin: resources
                .computation_resources
                .ec_op_builtin_applications
                .unwrap_or(0),
            bitwise_builtin: resources
                .computation_resources
                .bitwise_builtin_applications
                .unwrap_or(0),
            keccak_builtin: resources
                .computation_resources
                .keccak_builtin_applications
                .unwrap_or(0),
        }
    }

    /// Total builtin applications
    pub fn total_builtins(&self) -> u64 {
        self.range_check_builtin
            + self.pedersen_builtin
            + self.poseidon_builtin
            + self.ec_op_builtin
            + self.bitwise_builtin
            + self.keccak_builtin
    }
}

// Keep GasReport as alias for backwards compatibility
pub type GasReport = ResourceReport;

/// Aggregated resource reporter for multiple operations
#[derive(Debug, Default)]
pub struct GasReporter {
    reports: Vec<ResourceReport>,
}

impl GasReporter {
    pub fn new() -> Self {
        Self::default()
    }

    /// Record a new resource measurement
    pub fn record(&mut self, operation: impl Into<String>, receipt: &TransactionReceipt) {
        let report = ResourceReport::from_receipt(operation, receipt);
        tracing::info!(
            "Resources: {} - {} steps, {} builtins",
            report.operation,
            report.steps,
            report.total_builtins()
        );
        self.reports.push(report);
    }

    /// Record with manual values
    pub fn record_simple(
        &mut self,
        operation: impl Into<String>,
        tx_hash: Felt,
        steps: u64,
        pedersen: u64,
    ) {
        self.reports.push(ResourceReport {
            operation: operation.into(),
            transaction_hash: tx_hash,
            steps,
            memory_holes: 0,
            range_check_builtin: 0,
            pedersen_builtin: pedersen,
            poseidon_builtin: 0,
            ec_op_builtin: 0,
            bitwise_builtin: 0,
            keccak_builtin: 0,
        });
    }

    /// Get total steps across all operations
    pub fn total_steps(&self) -> u64 {
        self.reports.iter().map(|r| r.steps).sum()
    }

    /// Get total pedersen builtin usage
    pub fn total_pedersen(&self) -> u64 {
        self.reports.iter().map(|r| r.pedersen_builtin).sum()
    }

    /// Get total poseidon builtin usage
    pub fn total_poseidon(&self) -> u64 {
        self.reports.iter().map(|r| r.poseidon_builtin).sum()
    }

    /// Get total range_check builtin usage
    pub fn total_range_check(&self) -> u64 {
        self.reports.iter().map(|r| r.range_check_builtin).sum()
    }

    /// Get report for a specific operation
    pub fn get(&self, operation: &str) -> Option<&ResourceReport> {
        self.reports.iter().find(|r| r.operation == operation)
    }

    /// Print a summary of all resource usage
    pub fn summary(&self) {
        println!();
        println!("╔═══════════════════════════════════════════════════════════════════════════════════╗");
        println!("║                         STARKNET RESOURCE USAGE REPORT                            ║");
        println!("╠═══════════════════════════════════════════════════════════════════════════════════╣");
        println!(
            "║ {:30} │ {:>12} │ {:>10} │ {:>10} │ {:>10} ║",
            "Operation", "Steps", "Pedersen", "Poseidon", "RangeCheck"
        );
        println!("╠───────────────────────────────────────────────────────────────────────────────────╣");

        for report in &self.reports {
            println!(
                "║ {:30} │ {:>12} │ {:>10} │ {:>10} │ {:>10} ║",
                truncate(&report.operation, 30),
                format_number(report.steps),
                format_number(report.pedersen_builtin),
                format_number(report.poseidon_builtin),
                format_number(report.range_check_builtin)
            );
        }

        println!("╠───────────────────────────────────────────────────────────────────────────────────╣");
        println!(
            "║ {:30} │ {:>12} │ {:>10} │ {:>10} │ {:>10} ║",
            "TOTAL",
            format_number(self.total_steps()),
            format_number(self.total_pedersen()),
            format_number(self.total_poseidon()),
            format_number(self.total_range_check())
        );
        println!("╚═══════════════════════════════════════════════════════════════════════════════════╝");
        println!();
    }

    /// Export reports as JSON
    pub fn to_json(&self) -> String {
        let reports: Vec<serde_json::Value> = self
            .reports
            .iter()
            .map(|r| {
                serde_json::json!({
                    "operation": r.operation,
                    "transaction_hash": r.transaction_hash.to_hex_string(),
                    "steps": r.steps,
                    "memory_holes": r.memory_holes,
                    "builtins": {
                        "range_check": r.range_check_builtin,
                        "pedersen": r.pedersen_builtin,
                        "poseidon": r.poseidon_builtin,
                        "ec_op": r.ec_op_builtin,
                        "bitwise": r.bitwise_builtin,
                        "keccak": r.keccak_builtin,
                    },
                })
            })
            .collect();

        serde_json::to_string_pretty(&serde_json::json!({
            "reports": reports,
            "summary": {
                "total_steps": self.total_steps(),
                "total_pedersen": self.total_pedersen(),
                "total_poseidon": self.total_poseidon(),
                "total_range_check": self.total_range_check(),
            }
        }))
        .unwrap()
    }

    /// Compare two operations by resource usage
    pub fn compare(&self, op1: &str, op2: &str) -> Option<String> {
        let r1 = self.get(op1)?;
        let r2 = self.get(op2)?;

        let step_diff = r2.steps as i64 - r1.steps as i64;
        let step_pct = (step_diff as f64 / r1.steps as f64) * 100.0;

        Some(format!(
            "{} vs {}: {:+} steps ({:+.1}%)",
            op1, op2, step_diff, step_pct
        ))
    }
}

/// Format number with thousand separators for readability
fn format_number(n: u64) -> String {
    if n == 0 {
        return "0".to_string();
    }

    let s = n.to_string();
    let mut result = String::new();
    for (i, c) in s.chars().rev().enumerate() {
        if i > 0 && i % 3 == 0 {
            result.push(',');
        }
        result.push(c);
    }
    result.chars().rev().collect()
}

/// Truncate string to max length
fn truncate(s: &str, max_len: usize) -> String {
    if s.len() <= max_len {
        s.to_string()
    } else {
        format!("{}...", &s[..max_len - 3])
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_gas_reporter_new() {
        let reporter = GasReporter::new();
        assert_eq!(reporter.total_steps(), 0);
    }

    #[test]
    fn test_format_number() {
        assert_eq!(format_number(0), "0");
        assert_eq!(format_number(999), "999");
        assert_eq!(format_number(1000), "1,000");
        assert_eq!(format_number(1234567), "1,234,567");
    }

    #[test]
    fn test_truncate() {
        assert_eq!(truncate("short", 10), "short");
        assert_eq!(truncate("this is a very long string", 10), "this is...");
    }
}
