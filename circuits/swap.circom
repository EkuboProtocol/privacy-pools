pragma circom 2.2.0;
include "hash.circom";
include "merkle_tree.circom";
include "./circomlib/comparators.circom";

/// Circuit for private swaps on Ekubo AMM
/// 
/// This circuit proves:
/// 1. The user knows the secret/nullifier for a valid commitment in the Merkle tree
/// 2. The commitment has sufficient balance for the swap amount
/// 3. The new balance commitment is correctly computed
/// 
/// Public Inputs:
/// - root: Merkle root of the commitment tree
/// - nullifierHash: Hash of the nullifier (to prevent double-spend)
/// - tokenIn: Address of the token being sold (for verification in contract)
/// - tokenOut: Address of the token being bought (for verification in contract)
/// - amountIn: Amount of tokenIn to swap
/// - minAmountOut: Minimum amount of tokenOut to receive (slippage protection)
/// - newBalanceCommitment: Commitment to the new balance after swap
/// 
/// Private Inputs:
/// - secret: User's secret
/// - nullifier: User's nullifier
/// - oldBalance: User's balance before swap
/// - merkle_path: Path elements for Merkle proof
/// - path_indices: Path indices for Merkle proof

// Computes commitment hash from secret, nullifier, and balance
template SwapCommitmentHasher() {
    signal input nullifier;
    signal input secret;
    signal input balance;
    signal output commitment;
    signal output nullifierHash;
    
    signal secretNullifierHash;
    secretNullifierHash <== Hash()([secret, nullifier]);
    commitment <== Hash()([secretNullifierHash, balance]);
    nullifierHash <== HashOne()(nullifier);
}

// Main swap circuit
template Swap(levels) {
    // Public inputs
    signal input root;
    signal input nullifierHash;
    signal input tokenIn;       // Address of input token (not used in computation, but included for contract verification)
    signal input tokenOut;      // Address of output token (not used in computation, but included for contract verification)
    signal input amountIn;      // Amount of tokenIn to swap
    signal input minAmountOut;  // Minimum amount of tokenOut (slippage protection)
    signal input newBalanceCommitment; // New commitment after swap

    // Private inputs
    signal input secret;
    signal input nullifier;
    signal input oldBalance;
    signal input newSecret;     // New secret for the updated balance commitment
    signal input newNullifier;  // New nullifier for the updated balance commitment
    signal input expectedOutputAmount; // Expected output (private, but must be >= minAmountOut)
    signal input pathElements[levels];
    signal input pathIndices[levels];

    // 1. Verify old commitment is in the Merkle tree
    component oldHasher = SwapCommitmentHasher();
    oldHasher.nullifier <== nullifier;
    oldHasher.secret <== secret;
    oldHasher.balance <== oldBalance;
    oldHasher.nullifierHash === nullifierHash;

    component tree = MerkleTreeChecker(levels);
    tree.leaf <== oldHasher.commitment;
    tree.root <== root;
    for (var i = 0; i < levels; i++) {
        tree.pathElements[i] <== pathElements[i];
        tree.pathIndices[i] <== pathIndices[i];
    }

    // 2. Verify user has sufficient balance for the swap
    component balanceCheck = LessThan(252);
    balanceCheck.in <== [amountIn, oldBalance + 1]; // amountIn <= oldBalance
    balanceCheck.out === 1;

    // 3. Verify expected output meets minimum
    component slippageCheck = LessThan(252);
    slippageCheck.in <== [minAmountOut, expectedOutputAmount + 1]; // minAmountOut <= expectedOutputAmount
    slippageCheck.out === 1;

    // 4. Compute new balance: oldBalance - amountIn + expectedOutputAmount
    // Note: In a real implementation, the actual output would be determined by the AMM
    // This proves the user's *expected* balance, which will be verified on-chain
    signal newBalance;
    newBalance <== oldBalance - amountIn + expectedOutputAmount;

    // 5. Verify new balance commitment is correctly computed
    component newHasher = SwapCommitmentHasher();
    newHasher.nullifier <== newNullifier;
    newHasher.secret <== newSecret;
    newHasher.balance <== newBalance;
    newHasher.commitment === newBalanceCommitment;

    // Add hidden signals to prevent tampering
    signal tokenInSquare;
    signal tokenOutSquare;
    signal minAmountOutSquare;
    tokenInSquare <== tokenIn * tokenIn;
    tokenOutSquare <== tokenOut * tokenOut;
    minAmountOutSquare <== minAmountOut * minAmountOut;
}

// Instantiate with 24 levels (same as Pool circuit)
component main {public [root, nullifierHash, tokenIn, tokenOut, amountIn, minAmountOut, newBalanceCommitment]} = Swap(24);

