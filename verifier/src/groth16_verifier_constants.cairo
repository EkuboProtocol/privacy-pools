use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0xada6fd5adff43859c9dfb8be,
            limb1: 0x88060b5516d6f681ea451bb6,
            limb2: 0x276943bb034d64be,
        },
        w1: u288 {
            limb0: 0x42fd9abaaa97a441e4bfaeca,
            limb1: 0x1b7c1f0770a0bc696638d785,
            limb2: 0x92b8d7824b8216b,
        },
        w2: u288 {
            limb0: 0x13ef65bbf8352bc61700cfc9,
            limb1: 0xe3f983673f6f7ef335f68e3c,
            limb2: 0x233fa3b11df15aae,
        },
        w3: u288 {
            limb0: 0xda4f78294a36f1d83af1b7d7,
            limb1: 0x36b05afbf07881475ddbc926,
            limb2: 0x8b9742a3e87c0f1,
        },
        w4: u288 {
            limb0: 0x3bcc815f14802100b060176a,
            limb1: 0xb663badf2d450312ac4df2bf,
            limb2: 0x2b3836d12fec1f07,
        },
        w5: u288 {
            limb0: 0xadc92858737d5dda5028b013,
            limb1: 0x6f0e103bd2b6b9f624f980dc,
            limb2: 0x2cf26b48d58296ff,
        },
        w6: u288 {
            limb0: 0x716fa15f43506a86b3fee5b2,
            limb1: 0x42433879ee447a087f55158d,
            limb2: 0x626aa8fcde6d6,
        },
        w7: u288 {
            limb0: 0xb9a92a54c6d7175846c48d21,
            limb1: 0x4b979906be8d51d8e86c54c9,
            limb2: 0x2972d10ece0572a3,
        },
        w8: u288 {
            limb0: 0x7d0910dde5cd105d32a3374,
            limb1: 0xd268cdf3a2327d1fd13a28fc,
            limb2: 0x3334ae0c44efbaa,
        },
        w9: u288 {
            limb0: 0x61be1ac38bcf04840055f685,
            limb1: 0x342a5d7b47a5532413f583af,
            limb2: 0x80580953879d200,
        },
        w10: u288 {
            limb0: 0xc1b664e097b92807c122c180,
            limb1: 0x6a180b1d9666534cf76723c2,
            limb2: 0x12119169bfe69de5,
        },
        w11: u288 {
            limb0: 0x166e05ecdeebd030b2857ee7,
            limb1: 0x42bf458efc0d0c4e0f54efed,
            limb2: 0x1cafb099350ef904,
        },
    },
    gamma_g2: G2Point {
        x0: u384 {
            limb0: 0xf75edadd46debd5cd992f6ed,
            limb1: 0x426a00665e5c4479674322d4,
            limb2: 0x1800deef121f1e76,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x35a9e71297e485b7aef312c2,
            limb1: 0x7260bfb731fb5d25f1aa4933,
            limb2: 0x198e9393920d483a,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xc43d37b4ce6cc0166fa7daa,
            limb1: 0x4aab71808dcb408fe3d1e769,
            limb2: 0x12c85ea5db8c6deb,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x70b38ef355acdadcd122975b,
            limb1: 0xec9e99ad690c3395bc4b3133,
            limb2: 0x90689d0585ff075,
            limb3: 0x0,
        },
    },
    delta_g2: G2Point {
        x0: u384 {
            limb0: 0x44de8ca738b234cc4082a28f,
            limb1: 0x5602f602ed073c5614009976,
            limb2: 0xde280f17dc237f0,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xe082fed81f4604380285f8bc,
            limb1: 0x2503bf2ad7cdfba41e6cb59d,
            limb2: 0x2038ff42aee22f92,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x997eb4e4b3d0b1f5a284d6ab,
            limb1: 0xcc8d0687ec8c6a39503c10e9,
            limb2: 0xca45ccfd44c5c60,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0xbf08a54a561eaacd5f61c6de,
            limb1: 0x4f185490e462fcf1c04956c6,
            limb2: 0x1053d8b38b17e16,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x3e0def55a79eb3466fbd2173,
            limb1: 0xd07d80c802339fde7dcf3b30,
            limb2: 0x10db13b69fc20323,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x76dd3140aa5a52d6c5e9551,
            limb1: 0x9ae27575ca2ce7e15054b69,
            limb2: 0x11ed88dc2b6790c7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x54789379c3ca7c2a15b43059,
            limb1: 0x73ac5f4f67f9b0881ad8eed9,
            limb2: 0x9f8aabdb6f2895c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x5cc4cdfe1f83bd5dbe70ad11,
            limb1: 0x9b7a54a8daa01fde2edfc21,
            limb2: 0x3161d665e78783f,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x71ec2add47a26b8461b01fba,
            limb1: 0x4a1d34b424d838415ee43ad6,
            limb2: 0xa8dc6209e817e48,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1b3ba0b114408d73bf53d862,
            limb1: 0x551b4a2f57f5f898bdb6a53b,
            limb2: 0xe290efa226e16ed,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xc697bf2a791c897b176c25bc,
            limb1: 0x6e024e2327e55cbf816daf35,
            limb2: 0x4938dadfd7108a4,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xab5ea3fffc8f1faa11775819,
            limb1: 0x1cb075963b43aa4b64db6a55,
            limb2: 0x23025af93438025b,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x9332b78fc711439201c8d27,
            limb1: 0x6a952d3219f163acc58e4ad0,
            limb2: 0x647083d15705ff5,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xae97a4336c1a01def4168683,
            limb1: 0xc4155b5a8b7537bddd3f7400,
            limb2: 0x22736acba496060d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x445af6d500a7320db82af679,
            limb1: 0xfd94da81d544427d96879f76,
            limb2: 0xf94485eb62b296e,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xc84f769f9d755fd65b3fa655,
            limb1: 0x9a08c2f96f0ed64281dd0578,
            limb2: 0x2e5f93d87cf8d18d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xd4e6ab0360f0f96cfd1b899a,
            limb1: 0xf22d94b634eda8a25662edf1,
            limb2: 0x2109043c3af3fe0a,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe698d4f28cb2f26fa703261e,
            limb1: 0x58633270ac54886845bc97c,
            limb2: 0x2e8e542a48d7108e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xb1d86a7f91c8a20bb9add31d,
            limb1: 0xefdf86f8fef773a0c905d667,
            limb2: 0x1d94e6453843c009,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x2a14d38bcc05021229dec23f,
            limb1: 0x711476ffc5d0cbd8e1c7b454,
            limb2: 0x2dbaa7fcdd48d7ba,
            limb3: 0x0,
        },
    },
];


pub const precomputed_lines: [G2Line; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc,
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a,
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da,
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x51cc3a8156b2ce5dc494324e,
            limb1: 0x3a118715348edcace4de189,
            limb2: 0x1265d9ebf41f896f,
        },
        r0a1: u288 {
            limb0: 0xb5ca3c00d6f39d8d57ec07b8,
            limb1: 0x72d9776514aa67fd37804304,
            limb2: 0x1d05cc375ba15791,
        },
        r1a0: u288 {
            limb0: 0xf564144685373924318d273f,
            limb1: 0xbb01cab935de6975d35281d4,
            limb2: 0x555816cb8c27a4f,
        },
        r1a1: u288 {
            limb0: 0xebb52d8984fce9823173d0a6,
            limb1: 0x7ded0aa43e994c3afa1679c0,
            limb2: 0x8386c454505dd1e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d,
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf,
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f,
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb,
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582,
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36,
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x16a5900be56dbdb913e8caf9,
            limb1: 0xb4af2d452e386a92c9338908,
            limb2: 0x1dfe7486ed1216ba,
        },
        r0a1: u288 {
            limb0: 0xb2a78e8c652cee898090f58f,
            limb1: 0x4576ce516cd6f0606001278c,
            limb2: 0x135e823b85904898,
        },
        r1a0: u288 {
            limb0: 0x730db646b6e952f2a6efd608,
            limb1: 0xfd4e7afd4ba2eee7c42ee8bc,
            limb2: 0x2b0ecd06286f25d9,
        },
        r1a1: u288 {
            limb0: 0x7cbc9d03b723a294a7092ca1,
            limb1: 0x3a633b1242e80c229d6af0d0,
            limb2: 0x282be22d9c2bc30b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6ba9fd3b892a6887d3b75a9,
            limb1: 0x3fade42f09c27f2c189cf07b,
            limb2: 0x10fa0e75c2c69c76,
        },
        r0a1: u288 {
            limb0: 0x5f27f23400b31c68d5047eb5,
            limb1: 0xdac206c51fd1f59a0e7ce212,
            limb2: 0xe791d385a116cf,
        },
        r1a0: u288 {
            limb0: 0x236af63933ecc50f13637130,
            limb1: 0xce88c7c93f5a8272c40de705,
            limb2: 0x2b14f3cff4ed802b,
        },
        r1a1: u288 {
            limb0: 0xb20c6d984615ed39cbb32893,
            limb1: 0x1ae54105de9ac195ac25607b,
            limb2: 0x43bdbcdff1b965b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447,
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62,
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb,
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4ebf0f37e3c7345ef00fc6b1,
            limb1: 0x53986b3ea1e02e3f4447c2e5,
            limb2: 0x2b58551a0271ed26,
        },
        r0a1: u288 {
            limb0: 0xb257747abf2510293c5c1ed6,
            limb1: 0xf3f3d6c92724093b2d5811e3,
            limb2: 0x1073e9c78288c22f,
        },
        r1a0: u288 {
            limb0: 0x57d58663bcf69eebd4dc46a0,
            limb1: 0xcac8f85eb21459b985e0ea9c,
            limb2: 0x25df17fe979155c8,
        },
        r1a1: u288 {
            limb0: 0xcdf0b30294ae54a316a0dc90,
            limb1: 0xaa07b5e881c4f5314656951d,
            limb2: 0x1002216a3a8df101,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad,
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192,
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf,
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463,
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0,
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31,
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x58fafa062802456f37a2c9e1,
            limb1: 0xf855de0ba600b38d8d8a72e7,
            limb2: 0x26923f29e646b571,
        },
        r0a1: u288 {
            limb0: 0x762142c747aae481b5dd81de,
            limb1: 0x14eff8168d3d7f40ab743aaf,
            limb2: 0x8a43cf6ea05292f,
        },
        r1a0: u288 {
            limb0: 0xb45f988e2c70cb40e599293f,
            limb1: 0x5675ac7fbc86c741cdf66bb0,
            limb2: 0x24b71f36eaca3928,
        },
        r1a1: u288 {
            limb0: 0xfaf9bb356fa1f895ae91378a,
            limb1: 0x144c6e03482fc9fb92897837,
            limb2: 0x25f2d0868a8af62d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd4f7a7b8de8578033c20ae21,
            limb1: 0xb009d115eeb2702c13814f1b,
            limb2: 0x134d7c61b87c5cb6,
        },
        r0a1: u288 {
            limb0: 0x3677c5bbd8d216dfb34f3af0,
            limb1: 0xa20e22a4a26c757870a01fdf,
            limb2: 0x2f3838e5bfb18068,
        },
        r1a0: u288 {
            limb0: 0x3c84e9f113615fe1121a2120,
            limb1: 0xffd604eaae0e8ac2b43a5a20,
            limb2: 0x2c39dc3919720e01,
        },
        r1a1: u288 {
            limb0: 0x12988c10e55164cd6851cf43,
            limb1: 0x57b77a68330cd84344745de0,
            limb2: 0x5574cfe45e1ea36,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c,
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7,
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1,
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7ecda9d109a0121fa9355a3c,
            limb1: 0x5a1cf000856c4e217d7a5b8f,
            limb2: 0xf586e5fa354581b,
        },
        r0a1: u288 {
            limb0: 0xa06c6adddd6e577169e2b4ec,
            limb1: 0x153451c213f77029bf9ac773,
            limb2: 0x1162f81592c170d5,
        },
        r1a0: u288 {
            limb0: 0x70ad9c977beb5d6f781ac60f,
            limb1: 0xed87b98ec71049b3142395bd,
            limb2: 0x1be9ebcd766fefd7,
        },
        r1a1: u288 {
            limb0: 0xa400e87ab269ca9e284bcfb2,
            limb1: 0x5d16a6cfba0df7307e465201,
            limb2: 0x1dcde5eccac15c4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9,
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f,
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb,
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd48851b540ee5e350930607f,
            limb1: 0x746c71551c7b69c6bf554bb3,
            limb2: 0x9a01a830cee0a86,
        },
        r0a1: u288 {
            limb0: 0x3684cda6bba48777e1ef07ff,
            limb1: 0xb840a15c259a8ad0394b2162,
            limb2: 0x2f9630c540ebca7d,
        },
        r1a0: u288 {
            limb0: 0x48d78dd257fd508bdf401f16,
            limb1: 0xaf9003c456a20951a9a83b15,
            limb2: 0x1101349316e11eee,
        },
        r1a1: u288 {
            limb0: 0xa23e1a60156d2ef82e1bb96d,
            limb1: 0xecb5fc5923ec05de82aba02b,
            limb2: 0x21ba2a39ae07e188,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d,
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244,
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d,
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7c0e0bd611dd46854846dd1d,
            limb1: 0xbec08a136f4322ca8d3a526e,
            limb2: 0x93636b06473ce8a,
        },
        r0a1: u288 {
            limb0: 0x38c64d50873a1fda3e8d9b90,
            limb1: 0xecc85c3f03dd4e509d5a9a2d,
            limb2: 0x13b48e62610257b,
        },
        r1a0: u288 {
            limb0: 0xe45f7c2ee6e4f01225bd4e36,
            limb1: 0x7efa1a03d95b403ba870a6dc,
            limb2: 0x1a53e5b138124621,
        },
        r1a1: u288 {
            limb0: 0xe65f8d60f24820588dd3d2a,
            limb1: 0xf8fdff8fd40856f80524dc59,
            limb2: 0x1442b6c487af5146,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6,
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035,
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc,
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad,
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780,
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45,
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x543f72c0d5aa4003750654f3,
            limb1: 0x24c2818dbdb549dfe6e83c7f,
            limb2: 0x900b99bda3397a3,
        },
        r0a1: u288 {
            limb0: 0xa31936851ad1976a196b53d2,
            limb1: 0xfba2ce5637c9185071b1dca,
            limb2: 0x1a5b88602906521b,
        },
        r1a0: u288 {
            limb0: 0xa5c63ee15075506a8aa37855,
            limb1: 0x65e8afbba06602e3879ef1d1,
            limb2: 0x29252237081ecba8,
        },
        r1a1: u288 {
            limb0: 0xec384bc41b263ef00031495f,
            limb1: 0xcdee157e4a9d6683b1e3ca67,
            limb2: 0x945d25ec620accf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc69d6f10d11c4b7c42f8f912,
            limb1: 0xdef2e7186b4378079a57ea85,
            limb2: 0x250d978e41901d4a,
        },
        r0a1: u288 {
            limb0: 0xfd225d9945aa2d7247d59df4,
            limb1: 0xf7474665ea36c0549a42ef02,
            limb2: 0x1ebf31b11d87de26,
        },
        r1a0: u288 {
            limb0: 0x45bdfbffaa0685c3e248b26d,
            limb1: 0x73ac00bdd224ca53215cde57,
            limb2: 0x1a1679261794485a,
        },
        r1a1: u288 {
            limb0: 0xd1f684d1a80fc54a634cadd3,
            limb1: 0x37ac50c610fce5e5e669a027,
            limb2: 0x52103fb9212cbd7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30,
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb,
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf,
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x706f90883f3f536da6368c66,
            limb1: 0xf6ef9b3af06e276caa5b5371,
            limb2: 0x12d3fb5451aecc6b,
        },
        r0a1: u288 {
            limb0: 0x5ae71dc7d145fc2c5cfb341e,
            limb1: 0x8691ea88125bb9c3beb5044b,
            limb2: 0x2d9662d3b000971d,
        },
        r1a0: u288 {
            limb0: 0x1fcc8394244e028f58c80958,
            limb1: 0xbf4e81d04026e38ff4308cca,
            limb2: 0x8d4fc438ece88ff,
        },
        r1a1: u288 {
            limb0: 0x58f4fe865e309ce38f015eca,
            limb1: 0xefbc7fe7c1b1df38fc412d79,
            limb2: 0x1940493f639e3c5b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82,
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6,
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857,
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46,
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b,
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542,
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe977f3fd5fc8abffe118bc4d,
            limb1: 0x5117b75da9b05d16bfc744b6,
            limb2: 0xde144bb6963e1bf,
        },
        r0a1: u288 {
            limb0: 0xdb4f73bc1fdae269a587a8e0,
            limb1: 0x844fd869a66779a237332ce1,
            limb2: 0x1942ead90da8f80f,
        },
        r1a0: u288 {
            limb0: 0x7a758ad0034f55fb2b3cdf8e,
            limb1: 0x1502d9127b00c94bc0593696,
            limb2: 0xf2e0832ee597102,
        },
        r1a1: u288 {
            limb0: 0x942c10f1bd4ebb9250508f86,
            limb1: 0x71135316a4117bad167cedb5,
            limb2: 0x1f7eba64b050760a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa0e766c5ff6b5819ae29d213,
            limb1: 0x23a3dec5a5d852b4c9e9f440,
            limb2: 0x2223a12ecf5b038,
        },
        r0a1: u288 {
            limb0: 0xa9e3e8cb306b000bb080ce70,
            limb1: 0xe7ec449587703dc76eff0deb,
            limb2: 0x1f70ec60c262bd9e,
        },
        r1a0: u288 {
            limb0: 0x5d6e4fe3fcf3b0cd3f1847ee,
            limb1: 0x1b100dc863f5a9a14457dc89,
            limb2: 0x14022fb297d15d80,
        },
        r1a1: u288 {
            limb0: 0xcca4a27f73f0f1e49c610a5f,
            limb1: 0xa24c2935b13173662c11fa1,
            limb2: 0x24996d476d4376c2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb,
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2,
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd,
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc474b7c109adf55a1b3ee5,
            limb1: 0x8330b8ce39aa56338653b8d2,
            limb2: 0x26edfb01a4121f22,
        },
        r0a1: u288 {
            limb0: 0xa1619a61c0b7c376e6de4001,
            limb1: 0xe8d233b5357c0b8c88d0715a,
            limb2: 0xdb137a05ac65077,
        },
        r1a0: u288 {
            limb0: 0xe64a4ec1abfcbe243742acb5,
            limb1: 0x3fd2723c7b3de4706d366d35,
            limb2: 0xfd56c90202b6dff,
        },
        r1a1: u288 {
            limb0: 0x38ebba816a6b8ff25160e93,
            limb1: 0xacbeb0842a501b3a0ecb465,
            limb2: 0x944139dbcf734cb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28,
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6,
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c,
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5eea4960517d6589f45e2a86,
            limb1: 0x66c95e1382113c20245ebfa3,
            limb2: 0xd515dba311e7f6a,
        },
        r0a1: u288 {
            limb0: 0x8be0322ac77eb375770bb0f0,
            limb1: 0x76a84e58cd6825220d7d97a7,
            limb2: 0x6c1b81a8ef3a40c,
        },
        r1a0: u288 {
            limb0: 0x5c678b729008a5c94239f2f6,
            limb1: 0xc433d1fc9f1abb3ace729a9f,
            limb2: 0x16c1ff1e53b0b5ea,
        },
        r1a1: u288 {
            limb0: 0x5d242f434da66292a01896cc,
            limb1: 0x216dddcce38c6c45cb36a9f2,
            limb2: 0x2f7d05e47d59674e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df,
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b,
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144,
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5fd540f56572ec78978f91f2,
            limb1: 0xe7c2148db32ede816d90a836,
            limb2: 0x2d8133f810ec5f5c,
        },
        r0a1: u288 {
            limb0: 0xc69e228bb03058116cae5ce6,
            limb1: 0xa5b2ce34be4f82be32e69e9e,
            limb2: 0x2a5cd45224ae2cdf,
        },
        r1a0: u288 {
            limb0: 0xcc6eb64433d2fe4302a24f7c,
            limb1: 0x4566018da7ee5c19b824477,
            limb2: 0xb6402c61e47ff86,
        },
        r1a1: u288 {
            limb0: 0xf3f13660e53a2e34c6dd7529,
            limb1: 0x29cfa427721ee3d43bf42412,
            limb2: 0x1bff85a9d91c6d82,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e,
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7,
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09,
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7,
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53,
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13,
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f6b002dbbaf1809e0129437,
            limb1: 0xb40bcb8f748aa96f4d2fb988,
            limb2: 0xca6f4d1125840db,
        },
        r0a1: u288 {
            limb0: 0x61f3f3ecd86c0b0479d1dbd7,
            limb1: 0x41e96b87e8e1b1cbdbd5204c,
            limb2: 0x2425c8fbeed2a53f,
        },
        r1a0: u288 {
            limb0: 0xd40805c11de234cb233b8010,
            limb1: 0x4d62246cd773a8615e48e49c,
            limb2: 0x884569463e5fb09,
        },
        r1a1: u288 {
            limb0: 0x44f438708a5ab96ba2d1639c,
            limb1: 0xc4814f66044fc2cc9bec48cb,
            limb2: 0x2f1570171095db3e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6fca63185af2391901d31746,
            limb1: 0x5ddddb2201ca0b802aa38715,
            limb2: 0xfe1d30e75ca43cf,
        },
        r0a1: u288 {
            limb0: 0x6cc86d9c933ebc8273cbbfcc,
            limb1: 0xc550ebf67b6af958980d0974,
            limb2: 0xcadacb8265917ed,
        },
        r1a0: u288 {
            limb0: 0x8ba14f4abbc8dd0e04a5a0b2,
            limb1: 0xf90b9ea17f792fbcee608e7d,
            limb2: 0x17e1e518cdfd124c,
        },
        r1a1: u288 {
            limb0: 0x7c7c65b4fce3d7197abcefcd,
            limb1: 0x3cd56b18ca2f3ff3ccee2ce2,
            limb2: 0x147341307fc7da37,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0,
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8,
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28,
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfe4cf2a37e9828d44072313a,
            limb1: 0x666fa985be99cd30beca74bf,
            limb2: 0x1a24208632eedcf4,
        },
        r0a1: u288 {
            limb0: 0x819d6bb4eda2da3d9844034b,
            limb1: 0xf0ca7e8a3c7b580ca006db39,
            limb2: 0x108c21a68b1f3c7b,
        },
        r1a0: u288 {
            limb0: 0x2a076fff850422590453cdd0,
            limb1: 0xa636b5d3f47a07766caf7123,
            limb2: 0x10f172d4a27c0e7f,
        },
        r1a1: u288 {
            limb0: 0x381d65c7da109fb08ada6830,
            limb1: 0xfdf87d21767cdaccd2601ea,
            limb2: 0x8272beaaedaea2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff,
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6,
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2,
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc521c7b71d9f6e9ed23a3059,
            limb1: 0x91f1ad398c5e3c9cfa4c4d7f,
            limb2: 0x23d92a5680570026,
        },
        r0a1: u288 {
            limb0: 0x4dc4a5f6a1e07219bb295c10,
            limb1: 0x8bdbad3bf71b388e71c56120,
            limb2: 0x2c26000f9703b497,
        },
        r1a0: u288 {
            limb0: 0x6e9912cb1217ae3e99c8e383,
            limb1: 0x4403a01c45a833169c040840,
            limb2: 0x3eafbcb92ff1bed,
        },
        r1a1: u288 {
            limb0: 0xebb45fef54f0316178ebc04b,
            limb1: 0xff7da391b4ab4d692132c41e,
            limb2: 0x2bf35bc37a77474,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d,
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce,
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1,
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95,
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118,
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5,
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb168105fd33ad98510001911,
            limb1: 0xe7e7fc50608994ed15a8eaa4,
            limb2: 0x3d5b7bf951e6aab,
        },
        r0a1: u288 {
            limb0: 0x1fe39a054fb2efd7d0c5c7f1,
            limb1: 0x135f56e66db3f22eea15f6bb,
            limb2: 0x30250b2552e04ba7,
        },
        r1a0: u288 {
            limb0: 0xcb2917c65a2947ffdc447053,
            limb1: 0x69c254eb5e933b64407a74a8,
            limb2: 0x6190e7d5e3e6361,
        },
        r1a1: u288 {
            limb0: 0xaeb74f509069a66712b4a517,
            limb1: 0x763aedaaa803cb90ac620458,
            limb2: 0x20afe0436e03d5b3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x38ea137f057197cc2b33b861,
            limb1: 0xcbb23993ee8d056864da17ab,
            limb2: 0x9eaf6193ad936a3,
        },
        r0a1: u288 {
            limb0: 0x5988ba05de90cee379334e33,
            limb1: 0x7fe44e33d80f4f9a16774c8d,
            limb2: 0x109856cbc500bed4,
        },
        r1a0: u288 {
            limb0: 0x73eaffed958af93ba0843dc6,
            limb1: 0xd0821247e41cd4f25b553bb5,
            limb2: 0x13f7a819a7023d8b,
        },
        r1a1: u288 {
            limb0: 0xba578608906bdabf38962627,
            limb1: 0x86ec9b26271b9b180c895a51,
            limb2: 0x29b91037d89257b1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531,
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421,
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261,
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa,
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af,
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2,
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x139c362df5888efe134ab4fc,
            limb1: 0x6ff404ba2d61121443ca5c16,
            limb2: 0x24db8809e17d267b,
        },
        r0a1: u288 {
            limb0: 0xea7c1b71cb0857de058c32e,
            limb1: 0x2384546b8ddd2885b38f3188,
            limb2: 0x1a46164bd98f5668,
        },
        r1a0: u288 {
            limb0: 0xee7940daac710071da66a54d,
            limb1: 0x1acdf7171e1d84ef8eab1fd8,
            limb2: 0x28d47b4bb17b7ad9,
        },
        r1a1: u288 {
            limb0: 0x77e3281051a72199d0d284ef,
            limb1: 0x935ef1a41b1f8f4878323438,
            limb2: 0x1beac87b6a868fa9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6a6bacc45e248a1ac10d649,
            limb1: 0x926d119d106d636e14f82ecf,
            limb2: 0x27cd169c95069072,
        },
        r0a1: u288 {
            limb0: 0x95b2adce830048275e43ca55,
            limb1: 0xff1492f6546e4858a52a71d2,
            limb2: 0x28aba591a6f367e1,
        },
        r1a0: u288 {
            limb0: 0x2a884be4b93d597e52223438,
            limb1: 0xe80b6472a9d16da92410304f,
            limb2: 0x1831d733be802b7e,
        },
        r1a1: u288 {
            limb0: 0xd2ffd2439d82664b9e77b327,
            limb1: 0xed3ff9f75bcc3f7f2c3a633e,
            limb2: 0x2c8c8668bfbaaccb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3,
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567,
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f,
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x12cba4dedb63de33b12eef77,
            limb1: 0xc29521b53d8e13f80bc7d2f2,
            limb2: 0x1d1ea94abbaeea2d,
        },
        r0a1: u288 {
            limb0: 0xf84174409d8e6bd600510c14,
            limb1: 0x4121f2595d855b73c018a0ef,
            limb2: 0x16de638445f9573c,
        },
        r1a0: u288 {
            limb0: 0x1330f065305f248b366aee47,
            limb1: 0xa8af355853138ebea9105fe3,
            limb2: 0x126f407d5ab995f5,
        },
        r1a1: u288 {
            limb0: 0xecf7f600ce2ccbc7ae5cbbec,
            limb1: 0xcaf9d9d26daf961384cae4a1,
            limb2: 0x1ebf3a8daa93de39,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff,
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242,
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639,
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9ed62280013c6b92e17718fd,
            limb1: 0xe6f97bfa309a85a35638e4aa,
            limb2: 0x26d615cd65128540,
        },
        r0a1: u288 {
            limb0: 0xa2c17f46fe318434f1c22107,
            limb1: 0xd7acbb56062c5151a1bfeec3,
            limb2: 0x16c1fca5e826d023,
        },
        r1a0: u288 {
            limb0: 0xec5d73a0b3b8f9ec8059b677,
            limb1: 0xfc453456191380aeb3fed2d4,
            limb2: 0xb7dd324f40d694f,
        },
        r1a1: u288 {
            limb0: 0x24ccb1a3b89753951ca177d,
            limb1: 0xf92f0f5e5063bc4f2de50ee3,
            limb2: 0x85d7e2e9801d113,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3,
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5,
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0,
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1,
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67,
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72,
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9cfd9413b511847154443e02,
            limb1: 0xc8092d2e571faea3e6256951,
            limb2: 0x261725a83c1c654d,
        },
        r0a1: u288 {
            limb0: 0xef1bd4bcfff28ce7d5d06c94,
            limb1: 0xcf3c21a341db5014f4a54f74,
            limb2: 0x2b429a09a2bdaa7,
        },
        r1a0: u288 {
            limb0: 0x299fef6545f6ea68222fbafe,
            limb1: 0x2db197c17c8f4d2dd83f2ac1,
            limb2: 0x2d022c19574a6952,
        },
        r1a1: u288 {
            limb0: 0x54ed5d4e2d6dafa100d7605d,
            limb1: 0xe49090c9ed284af921e808ff,
            limb2: 0x2dfee93538413fc7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c6eed87d1d00ad56bdff70d,
            limb1: 0x9c78749ac8a8025953e6038f,
            limb2: 0x247382cf2151f172,
        },
        r0a1: u288 {
            limb0: 0xad29c0ec779e16524f82c56c,
            limb1: 0xd7455afc4a63feee2b52024f,
            limb2: 0x1394db7aff26f2db,
        },
        r1a0: u288 {
            limb0: 0x41a83a6666a795808fd9e2e4,
            limb1: 0x39156009e7246e33ae7b1fe4,
            limb2: 0x2d5b76a64b706c78,
        },
        r1a1: u288 {
            limb0: 0x683169b238277d156efd8899,
            limb1: 0x57e5182318a405fb9f9d49d2,
            limb2: 0x2a5bdd233fde78ce,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1,
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585,
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f,
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x66c89993328bc7251e0b676a,
            limb1: 0x48d554a5f6dd9a3018971204,
            limb2: 0x9dcabd5e1147633,
        },
        r0a1: u288 {
            limb0: 0xfcb965d27e460987b2d197ee,
            limb1: 0xe8d776692d4a8502c0a1b8de,
            limb2: 0x25258d91bdef351a,
        },
        r1a0: u288 {
            limb0: 0xff86fde0486a3db806df461d,
            limb1: 0x3fb7389c9377431ae7ca733a,
            limb2: 0x12cc16ba57329b06,
        },
        r1a1: u288 {
            limb0: 0xb90a767b72b576416e577ebd,
            limb1: 0x3583b24de4c57e4ed3ca41cb,
            limb2: 0x1e08b6f910d72986,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43,
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c,
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d,
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb7ad0ce4ee20f183fb63623b,
            limb1: 0x5406bf861295a37086b10c3d,
            limb2: 0x1b4621dc9a4fdca,
        },
        r0a1: u288 {
            limb0: 0x30fd5c56cb5f81001179528e,
            limb1: 0x2ec10b8b28be6ebbdb07f967,
            limb2: 0x254326ef75237bc1,
        },
        r1a0: u288 {
            limb0: 0xc2764f6cdc6237b94a397ef4,
            limb1: 0x542037c2f8ef205686cdede9,
            limb2: 0x21bfe60680d07c1e,
        },
        r1a1: u288 {
            limb0: 0xd2922af8c19b8b21079a15a2,
            limb1: 0x26a2b202cc07657829b2b0f6,
            limb2: 0x2164d031728199c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113,
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba,
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87,
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb28a6b72441c6390ea04cf55,
            limb1: 0xc164a7a87a08297797be5c45,
            limb2: 0x157a2923efc5eba4,
        },
        r0a1: u288 {
            limb0: 0x5941d8325b18aa607c0223c8,
            limb1: 0xb7625fcf33c8f5e814cc1f4e,
            limb2: 0x1d01e2a1790523fe,
        },
        r1a0: u288 {
            limb0: 0xf76ea78ca58ccfdbf0568a07,
            limb1: 0x62147c8eaacfa53572ab35a3,
            limb2: 0x261b439e2c1a8999,
        },
        r1a1: u288 {
            limb0: 0x788bbcc74e4ad14ac2ee70ae,
            limb1: 0xf410b1754042992a6ff62c4f,
            limb2: 0x2fc5af088ba92641,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a,
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995,
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb,
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdb48d5c41558b4ac52b2151b,
            limb1: 0xc05c160d0b41db51bfedcd58,
            limb2: 0x130f2e8a62fdffe0,
        },
        r0a1: u288 {
            limb0: 0x1277fb78acc89e9072e4aded,
            limb1: 0xb6ee56664461717fd9f290f0,
            limb2: 0xf1c9cdd58151f27,
        },
        r1a0: u288 {
            limb0: 0x702fe2d7580ba995b4a391da,
            limb1: 0xe9c555fa01621cb5fa22cbce,
            limb2: 0xce6965090d8c68e,
        },
        r1a1: u288 {
            limb0: 0x57d09f2626f880c09fe9e9d,
            limb1: 0x630493f31c1e5fe8be539cbd,
            limb2: 0x53cc240d112becb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885,
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4,
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72,
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdb957bb7c28fb36dbf007f4f,
            limb1: 0x9764373bd90a2811ed0e0603,
            limb2: 0x8358d85821265e5,
        },
        r0a1: u288 {
            limb0: 0x2f8950d56c3219a70ecfee66,
            limb1: 0x52a691403cd10872aec5bcb9,
            limb2: 0x23bd18212b5e5583,
        },
        r1a0: u288 {
            limb0: 0xf597a770980466fe87626557,
            limb1: 0x391fccdb4ccef68c2a381ec,
            limb2: 0x49ce7700aed1ae9,
        },
        r1a1: u288 {
            limb0: 0x30d6d8dfb02ea3b7ec249ba1,
            limb1: 0x2c2d2e23bf5ee9929e2ae8d2,
            limb2: 0x2d0d35ef6ca7d14f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c,
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4,
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b,
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2,
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f,
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532,
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x57454e6020a727c6ff5b434a,
            limb1: 0xecdc2bcad5e295d395edd8bf,
            limb2: 0x14fc8de2f6d5a858,
        },
        r0a1: u288 {
            limb0: 0x1dac2a48bcecdd5f3f9c1f56,
            limb1: 0xe52fb7dfb07838eacacbe82f,
            limb2: 0x26e039d44526dfc9,
        },
        r1a0: u288 {
            limb0: 0x1195c589502e94fbe8794784,
            limb1: 0x7a2da00e5c0568a6a4f4ffcd,
            limb2: 0x10913b57a0a90003,
        },
        r1a1: u288 {
            limb0: 0x764533e33456e6b6f33f8546,
            limb1: 0xcaa6cb4e15be468686626390,
            limb2: 0x92a519a825129ae,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb06ac5b22aade14ae7625026,
            limb1: 0xd679b5cb81cc1631ceaf6959,
            limb2: 0x2bb6b86faecfd5f9,
        },
        r0a1: u288 {
            limb0: 0xe42c83cee65afe96c2eb9d74,
            limb1: 0x9e41268103f96150a4b7235c,
            limb2: 0x2951fca1028a0691,
        },
        r1a0: u288 {
            limb0: 0x22d4a8847634888745f2c0cc,
            limb1: 0xc553d628f7d56c48451807f6,
            limb2: 0x24a3054ea3e591af,
        },
        r1a1: u288 {
            limb0: 0x7e2e8416d6e6f337d92a69af,
            limb1: 0xe32301f02c1f25cbc1373224,
            limb2: 0x9d32ab0f8d264a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb,
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9,
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652,
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe06caa484dc7ebb96348816b,
            limb1: 0x3893188bb3b43c68039c942e,
            limb2: 0x1679ef7484391ac2,
        },
        r0a1: u288 {
            limb0: 0x53535f478aec7c93d0172092,
            limb1: 0x20bfdd31a23e0a43d33e2583,
            limb2: 0x14998e16609f3475,
        },
        r1a0: u288 {
            limb0: 0xc53e5a753ef0c67ad62599f,
            limb1: 0x6fb5ac1650d9942fa7822fc5,
            limb2: 0x118bdcac9ee41cb1,
        },
        r1a1: u288 {
            limb0: 0x62bf33689c3b0ed8678683b7,
            limb1: 0x50edc5ffba3d8878de97cfa3,
            limb2: 0x146a131cc4f92167,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053,
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6,
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879,
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xda81becd84325964f39ad3d7,
            limb1: 0x693ba7b47a7a10f4ff3b9c9c,
            limb2: 0x8f7eb36fb379667,
        },
        r0a1: u288 {
            limb0: 0x80df2bde83451a59211de18b,
            limb1: 0xad25d501b56bd1e5a201cc2c,
            limb2: 0x16884fe17358741c,
        },
        r1a0: u288 {
            limb0: 0xc5f0200e851a4afa9451b3bc,
            limb1: 0xeaefb1e5ad7a01c65714e035,
            limb2: 0x19ccf19817e96c7a,
        },
        r1a1: u288 {
            limb0: 0x755c814360130ee8d097e959,
            limb1: 0x6615b4d7ccdc09e9d4612dd7,
            limb2: 0x2789194879d8cf91,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1,
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b,
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae,
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b,
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00,
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57,
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2988987ac9e4fa3e632f3cf,
            limb1: 0x36f6ac36847cb55e21535e23,
            limb2: 0x1386d0f8e4dbfb01,
        },
        r0a1: u288 {
            limb0: 0xb9d64ff3ee82055d33b5906f,
            limb1: 0x222ddfe3708abeefc92f979,
            limb2: 0x81958560fabcdc7,
        },
        r1a0: u288 {
            limb0: 0xf5d8f9b33458af654269097d,
            limb1: 0x63fc31ce5f17ad3607fbc96a,
            limb2: 0xc46258883a715e9,
        },
        r1a1: u288 {
            limb0: 0xc49ea57b8469671c744a12f4,
            limb1: 0x47c08b2216f7212dd36967b5,
            limb2: 0x23b6eb20b6813dd9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2a55a0d04a99278785b120ef,
            limb1: 0x218124a32150075630c6fdaf,
            limb2: 0x2ddad7f9c34b6af9,
        },
        r0a1: u288 {
            limb0: 0x272fc10d4ee556925ae03e4c,
            limb1: 0x2d533bd73d1f16169c5b4226,
            limb2: 0xcdc3cd5a2c6c24d,
        },
        r1a0: u288 {
            limb0: 0xef6bfa17d3937bce61032be2,
            limb1: 0xa5b60654978017800b3280ac,
            limb2: 0x13abc4378b100065,
        },
        r1a1: u288 {
            limb0: 0x1bec50c54c51745cb85bf799,
            limb1: 0x23ba9c0afc61b961f872971c,
            limb2: 0xa695ea14b6e93b9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263,
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca,
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf,
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x13aee0b542d7d72adde35662,
            limb1: 0x44b3790cb74aacf5c4de3d1c,
            limb2: 0x4061ad6d41e17b9,
        },
        r0a1: u288 {
            limb0: 0x12f74381174de35dcdcc2eca,
            limb1: 0x4cd1bb51777f45fb23e85807,
            limb2: 0x2ba5b9b4e6c66f18,
        },
        r1a0: u288 {
            limb0: 0xafca0ad20aad0c3b04b07246,
            limb1: 0xb33789df3c5973c0cf905f7e,
            limb2: 0x1c45c5d5263a40d0,
        },
        r1a1: u288 {
            limb0: 0x9cee574432731acba9216b83,
            limb1: 0x4a8a51ac89dd80e8e073a777,
            limb2: 0xc7bff8fe6695ee3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38,
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6,
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78,
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10,
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966,
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a,
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7832744d5a19bd340ff69cb5,
            limb1: 0x42cf6fa8ec90def9e2b532df,
            limb2: 0x2125a748af403254,
        },
        r0a1: u288 {
            limb0: 0x9d96631de1d93a4d9679496e,
            limb1: 0x139df76a806bc8d35c2846e6,
            limb2: 0x2d45bea1bfbeddb5,
        },
        r1a0: u288 {
            limb0: 0x2072c8ff429d1a2898b4d9f9,
            limb1: 0x97ee37335b6f1f214f3ceca,
            limb2: 0xaff8b98396133c7,
        },
        r1a1: u288 {
            limb0: 0xe931261b50f9ff18bd94177b,
            limb1: 0xa9787c00ed6e5aece557f98c,
            limb2: 0x1b36844d22c169be,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4c6bfdc323f2fd630beec140,
            limb1: 0x2642eb63f50ea49587689677,
            limb2: 0x1665eea6be455333,
        },
        r0a1: u288 {
            limb0: 0x979f90ed8c67abccfe04b5ac,
            limb1: 0xa777446c3c8c2932df0c9f37,
            limb2: 0x1d71fe2822d0bfd3,
        },
        r1a0: u288 {
            limb0: 0xa6cb5a7ee485f3700db1a315,
            limb1: 0x2c84e2085db859aceaf9f0d6,
            limb2: 0x2cd54ff735192d2,
        },
        r1a1: u288 {
            limb0: 0xeadc97b78f82b2f7fce15f90,
            limb1: 0xbe81e0e6e7706808d303e5d8,
            limb2: 0x26cdfa964e9f7c70,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7,
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5,
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9,
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x14c7962e7e302859d893fb72,
            limb1: 0x48b32cef1cb63f4dc19dff70,
            limb2: 0x23801c9cfa08327,
        },
        r0a1: u288 {
            limb0: 0xaf2765f2d57327f5e703dc89,
            limb1: 0xf6639f524002217b59c0bab5,
            limb2: 0xb191a152cea68f2,
        },
        r1a0: u288 {
            limb0: 0x75782dc0a2176a19ac35879a,
            limb1: 0xd20e93093883ea4e00609f68,
            limb2: 0x5f950b19ec4296f,
        },
        r1a1: u288 {
            limb0: 0x1ec88deec717725915b2a018,
            limb1: 0x7881d674c1a341de50629,
            limb2: 0x1ed88f975857668d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e,
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e,
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77,
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x158cf51aebcb29c5df4ac559,
            limb1: 0x3b1e51f919bbc26da607ef72,
            limb2: 0x20324b02fa0a306d,
        },
        r0a1: u288 {
            limb0: 0xa964cdc1a6a4c9684552b11a,
            limb1: 0xfc06b6f66e2685a7c44439e9,
            limb2: 0x2b995af81355b39d,
        },
        r1a0: u288 {
            limb0: 0x7808e5a3b53e0414982a7133,
            limb1: 0x94de5475f910340f33e15e05,
            limb2: 0x8d5d1897a4c5c7a,
        },
        r1a1: u288 {
            limb0: 0xff0453afd320ead6d30b9471,
            limb1: 0x23cc6003a9eff3579c49a784,
            limb2: 0x7088cf418f302c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8,
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441,
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4,
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c,
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162,
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc,
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xea937f9af64994bf1a3e4f7e,
            limb1: 0x887e1fdfa806689822536165,
            limb2: 0x4041b029f15acff,
        },
        r0a1: u288 {
            limb0: 0xa805f74189090ba5fc0c7779,
            limb1: 0x3cefb9669e77b25f87a8ec40,
            limb2: 0x2b459b6614fa5d64,
        },
        r1a0: u288 {
            limb0: 0x222a15636d1f5b0e7d4a1941,
            limb1: 0x1490e63d5c4d1c1af0eda5c3,
            limb2: 0x192e812e4c55bc55,
        },
        r1a1: u288 {
            limb0: 0x1279ff77149aaddaec52890e,
            limb1: 0xc0b59dfe2d4b8baf10bbff17,
            limb2: 0x3f61a56b101dfd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xba67c2e29ca02978ea9c6f85,
            limb1: 0xeb43dee47e65faef3853985c,
            limb2: 0x18fe7f5dcbe15486,
        },
        r0a1: u288 {
            limb0: 0x78ad5e13ec1db461300243d9,
            limb1: 0x214fcd98186067dac06dc1ba,
            limb2: 0xff2c8bcc5079da6,
        },
        r1a0: u288 {
            limb0: 0x42e935b69aa84c4d0866a12,
            limb1: 0x865673502076b25303625ece,
            limb2: 0x1b7b6c12b829916a,
        },
        r1a1: u288 {
            limb0: 0xffb2039502edd5b243781020,
            limb1: 0xfd6999c41869e22f8fce0ba,
            limb2: 0xe606638e137477b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e,
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50,
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8,
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb28673f5d2239ee23bb429f7,
            limb1: 0x54a523abdfda51f2b925206d,
            limb2: 0x95f992539148a6e,
        },
        r0a1: u288 {
            limb0: 0x290368892d96d90908c54728,
            limb1: 0xee0da009040ae1940326866a,
            limb2: 0x22ca3d4810077563,
        },
        r1a0: u288 {
            limb0: 0x575092d9f5148e0768035fa1,
            limb1: 0x58bea349d7de1655a1e49d3a,
            limb2: 0x17182dfe0d8a52a1,
        },
        r1a1: u288 {
            limb0: 0x1fa8855fdfa6df96ceae28e7,
            limb1: 0x321ece3774e2bf523c65f92e,
            limb2: 0xf277480c272eb90,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200,
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7,
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26,
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x472c4a5d32ef368bc5388085,
            limb1: 0x5cc9f7bf00cc186e762ab3ac,
            limb2: 0x7b375d446205e48,
        },
        r0a1: u288 {
            limb0: 0x4b6ec7a73416369ce0a41c13,
            limb1: 0xa0c4e3d1e2a7d0dd107d9b9e,
            limb2: 0x21f2c47a5be53dfa,
        },
        r1a0: u288 {
            limb0: 0x3ed288b1de37203bc3c666d9,
            limb1: 0x46769f0abe4d454235fa3417,
            limb2: 0x22ae90a5bbe90acb,
        },
        r1a1: u288 {
            limb0: 0x7f0cbb424ba6fbfb26020d86,
            limb1: 0x3ffd7d1574506ab19734afd7,
            limb2: 0x197501f91c0dfc21,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da,
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941,
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3,
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9798fd05e699d5318a3a85f5,
            limb1: 0x18b04227751f5b18ae9d379b,
            limb2: 0x20517b2046a3d70d,
        },
        r0a1: u288 {
            limb0: 0x85989388150fdd077d6b1ac,
            limb1: 0xb5529422107ee9d5ee786542,
            limb2: 0x46acbcf34efffd,
        },
        r1a0: u288 {
            limb0: 0x556873b6b530f182534e7fe2,
            limb1: 0x8c1dcf18b717587c615549a3,
            limb2: 0x66f232aee94d3ad,
        },
        r1a1: u288 {
            limb0: 0xf81c767e461e8b526a3e2ae6,
            limb1: 0x4a5d6c8357ede22c8edf2094,
            limb2: 0x2aef0e649d1dce8f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed,
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631,
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03,
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1cfc302ac63966a8cfb3914a,
            limb1: 0x4d52a930c92dd35d84c7e0f7,
            limb2: 0x1a24d26ed18c6e4c,
        },
        r0a1: u288 {
            limb0: 0x53dda0ad74159cf7466a93db,
            limb1: 0x3be68bb51f231b29fc0f4bbe,
            limb2: 0x79f94e5ab4f3f7d,
        },
        r1a0: u288 {
            limb0: 0x4966bf7350fd3bead72e7a2,
            limb1: 0x56fc8c3da53128ca764e2265,
            limb2: 0x109385be5855a5ae,
        },
        r1a1: u288 {
            limb0: 0x510e30811d2cb4eb767b0a65,
            limb1: 0xd7b2dbcac8ff54325ebe384d,
            limb2: 0x5c70a5127124b81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba,
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c,
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f,
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0,
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a,
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442,
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x57387f09aa88e01e5fca1c26,
            limb1: 0x1d2815b7af6acf9e34cf37a8,
            limb2: 0x2ccd4d6d483d3b86,
        },
        r0a1: u288 {
            limb0: 0x95791b60bbe25a69b02023c4,
            limb1: 0xc50066d29d691d90b48610f2,
            limb2: 0x2e034d20c0b71c09,
        },
        r1a0: u288 {
            limb0: 0x22216b6dc105e689c417ec79,
            limb1: 0x59ba6b6e4580a169ed27e770,
            limb2: 0x2cc8356837ad9f07,
        },
        r1a1: u288 {
            limb0: 0x7c1eda951d474713efb2e44,
            limb1: 0xcabed500144451165faec92c,
            limb2: 0x231f6af32e4badb6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf82f912690c515f817784752,
            limb1: 0xa834a4e9f0b4bf19b01a64ab,
            limb2: 0x22e8892c16f8f33b,
        },
        r0a1: u288 {
            limb0: 0x4b0ecf0b4d08cf95bc683e3a,
            limb1: 0xa84bdf8be67a2841c30698ee,
            limb2: 0x1491f159a43661f4,
        },
        r1a0: u288 {
            limb0: 0x44fc37c27cc871db9ba622bb,
            limb1: 0xa9ec96d7c915d04db67b2df1,
            limb2: 0x64ceeae0a4dc1a6,
        },
        r1a1: u288 {
            limb0: 0xc7e7ab97356074df7a4ac40f,
            limb1: 0x93a42f40e6a9d2d1fb0d8ef,
            limb2: 0xba88af99a47084e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6,
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8,
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22,
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8df15e8bb8599a4efad28eb4,
            limb1: 0x548e04306b8202e810f5dc72,
            limb2: 0x253ccddebaf8497c,
        },
        r0a1: u288 {
            limb0: 0xabdd95af718e3ca471be3f78,
            limb1: 0x68934c9300703c754812bdfe,
            limb2: 0x26a8413ba7b66bda,
        },
        r1a0: u288 {
            limb0: 0x92b581ee25ae5a554d3beb1c,
            limb1: 0xdff332bfb37234d97567c8e3,
            limb2: 0xfd3f82831336849,
        },
        r1a1: u288 {
            limb0: 0x9884475f1cc26eedc9ae0c50,
            limb1: 0x13f3c3ae865eeaf6d3e0362,
            limb2: 0x1291cefc1a93384d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729,
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb,
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9,
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d,
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6,
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb,
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87cb9bda68ea325b4594b9c8,
            limb1: 0x4725c83d359225681260149,
            limb2: 0x2ab8766c0b2924d1,
        },
        r0a1: u288 {
            limb0: 0x7445adff7a64b10467e5c600,
            limb1: 0x9bab5de29333ec9add477a8a,
            limb2: 0x11e47f1a6b993a1f,
        },
        r1a0: u288 {
            limb0: 0xe9cf2c573b7ac06de9af6e5,
            limb1: 0x1964ee0d9495f92ae95fbe52,
            limb2: 0x2b8d0e56abbf4c57,
        },
        r1a1: u288 {
            limb0: 0x48cf1c7b068b84bcf5a197b7,
            limb1: 0xba097269acc58f3daeda25a,
            limb2: 0x27e0ab504d85b72,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9e11d8742262bbdec7061720,
            limb1: 0x8b0d5e8e5d73123c182b6ba0,
            limb2: 0x19857edb3f6e18c2,
        },
        r0a1: u288 {
            limb0: 0xff5d07212a52a2b1254d0b36,
            limb1: 0x1de563040f8907a0defc6e20,
            limb2: 0x20fdda74ecd9eeb4,
        },
        r1a0: u288 {
            limb0: 0xf981d5f0cbb2dcd601946e85,
            limb1: 0x816ced36b41cf6fd86c8397f,
            limb2: 0xc0fc4b62ef92ca1,
        },
        r1a1: u288 {
            limb0: 0x80b112485235ba5e99226f85,
            limb1: 0xb19fb9705065faa1c997f956,
            limb2: 0x154083c050d06135,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3,
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6,
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4,
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe1a23ccf2f7063387d6e682f,
            limb1: 0xf15047e59ac7c551b7dd13ac,
            limb2: 0x16b551e585f36813,
        },
        r0a1: u288 {
            limb0: 0xaab2322b1c600f954bbfbaae,
            limb1: 0x50313dc25bb086de9bc203b5,
            limb2: 0x18853f1e52b86c31,
        },
        r1a0: u288 {
            limb0: 0xde6f26f3320a557a1cef3f76,
            limb1: 0x3c4dab307d5f4555ac43dcb3,
            limb2: 0x76fe28abb7fc161,
        },
        r1a1: u288 {
            limb0: 0x346ac9492a710d711274f7a6,
            limb1: 0xa82bfda8bfbb9e3b4ebcb02f,
            limb2: 0x29c9cea744a66c1a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c,
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a,
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374,
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x54087340b9fa084d6c6bc74a,
            limb1: 0x5f8c8aba7100e69b6609a8c3,
            limb2: 0x27c3f0851bd3086f,
        },
        r0a1: u288 {
            limb0: 0x96e25ef40f5173b3b51e8f31,
            limb1: 0xea91f6cfc79ba0389c802ef8,
            limb2: 0x9b3dbb560247c8d,
        },
        r1a0: u288 {
            limb0: 0x2d6f36e1dffa9fcadf47d93f,
            limb1: 0xd7d0ae8c0510019daaa17e9,
            limb2: 0x10bb8aecffde90c9,
        },
        r1a1: u288 {
            limb0: 0x666bdc58064937dd18aa65c4,
            limb1: 0xd83dd540812d50899bda6138,
            limb2: 0x20c1cd649730a043,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272,
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63,
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4,
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x60b87ece54ec2c18b97bb437,
            limb1: 0xa30ca6aea0d1478b6019f611,
            limb2: 0x2fbb3fb1d164b16e,
        },
        r0a1: u288 {
            limb0: 0x89c10417e0569cc9eb48f9cc,
            limb1: 0xe75a72324bd17282e1d05e45,
            limb2: 0xf959a0cc2523b98,
        },
        r1a0: u288 {
            limb0: 0x842d94174122fa4c3cb31fc2,
            limb1: 0x3416cbdb14f5a7d9ebcdb858,
            limb2: 0xbab39923263a3b9,
        },
        r1a1: u288 {
            limb0: 0xa4e0b82368efc5d264b123dd,
            limb1: 0xec60f68df7db125bda727bb2,
            limb2: 0x265491a67ec417fa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4,
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44,
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab,
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665,
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2,
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822,
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xebe4e316e0cfd515a022ab0f,
            limb1: 0xec7c5bc1f93e809823d84576,
            limb2: 0x8f6b4d24b0094dc,
        },
        r0a1: u288 {
            limb0: 0x50b1a2da8d1c43127b8cc000,
            limb1: 0x5b328ed0ee49c00e2535f9c8,
            limb2: 0x126bf55832189e6e,
        },
        r1a0: u288 {
            limb0: 0x30eceb9ed8e44e6f77eb3ce8,
            limb1: 0x11b49ff958821db8b6436f78,
            limb2: 0x289529f8dcf97960,
        },
        r1a1: u288 {
            limb0: 0xe8e84c96fb20ae99a73f2b79,
            limb1: 0x3560e385fb695be2cde04bcb,
            limb2: 0x1d83397b4d50f186,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe29d5b1af9d8e0fd96c75059,
            limb1: 0x6db94afaa61a2f91e852d138,
            limb2: 0x2928b3414081548e,
        },
        r0a1: u288 {
            limb0: 0x610134c6ea683f8b75be51dd,
            limb1: 0xf3394d082190f2bf9cb3bcdc,
            limb2: 0x1dc63977c156f5bc,
        },
        r1a0: u288 {
            limb0: 0x960e3a4c6f8953fbf1be0a26,
            limb1: 0x46fdbf951e4401930d4fa99c,
            limb2: 0x1dfb790667b8cf8b,
        },
        r1a1: u288 {
            limb0: 0xeccae4df557f1554cc9224c6,
            limb1: 0xf229175ff0f0a437ab972d5e,
            limb2: 0xacb34d68b4174b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e,
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857,
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf,
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8a3a3d9e2da19e7c51f50e66,
            limb1: 0x7e049d94ff8894457ee194b5,
            limb2: 0x17bf3575b990c2e9,
        },
        r0a1: u288 {
            limb0: 0x3c6129cf8bc084e6850665c7,
            limb1: 0x3929d6340dfb19ea0d00b8b2,
            limb2: 0x3ddbe98dd2cc40f,
        },
        r1a0: u288 {
            limb0: 0x446ae8fc4167e82ad692883d,
            limb1: 0x1450ea0e37d39343f69312ec,
            limb2: 0x3676426190d512c,
        },
        r1a1: u288 {
            limb0: 0x63a8a279224ef7afd64e1153,
            limb1: 0xa33e9be843c6adc6fcb281c8,
            limb2: 0x237b623be723b95,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d,
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff,
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae,
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd,
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377,
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e,
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18bfccf15b861cf6816c78bb,
            limb1: 0x2472a69fe2fc973726f94601,
            limb2: 0x1c769ef6c919fdb9,
        },
        r0a1: u288 {
            limb0: 0x192e590298ece773ba823087,
            limb1: 0x5de173e66ef7219e8b0862bd,
            limb2: 0xd3be8e07d0da319,
        },
        r1a0: u288 {
            limb0: 0x6bab388fac7aa4c3fd56113,
            limb1: 0x67ffe3229398a73acfb5cfbe,
            limb2: 0x2d9bf59eb6847244,
        },
        r1a1: u288 {
            limb0: 0x16c7a7860a2d34610d51dc51,
            limb1: 0xed24941218f69d340e90a8fa,
            limb2: 0x28f1b3c9d2a5bc2e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7bf71dde22b45d89d31d2e8a,
            limb1: 0x792fe28f4715f8ad55d4a5e4,
            limb2: 0x1a7b89edda042833,
        },
        r0a1: u288 {
            limb0: 0x151bc21edc6a843a27904032,
            limb1: 0xf5d3183248cb918b99f0ec11,
            limb2: 0x1558d48d53b54fbc,
        },
        r1a0: u288 {
            limb0: 0x42d134fb4562c8913a8959da,
            limb1: 0xd839428d700e06a090fcb14d,
            limb2: 0x20560e75200a763d,
        },
        r1a1: u288 {
            limb0: 0x3c4fbdf8a684070cc3a25854,
            limb1: 0xc9be9c9a0fd8509d26cad2c5,
            limb2: 0x847b66b0812505e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f,
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695,
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df,
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x646cd840634b76f89e0e386d,
            limb1: 0x648180b9cdb76ec7c0c84c,
            limb2: 0x77ffe972fdf064a,
        },
        r0a1: u288 {
            limb0: 0x331f1ca2e5862eac4684c739,
            limb1: 0x6f0717eba0251d4da557f284,
            limb2: 0x6243a6d4288a0c7,
        },
        r1a0: u288 {
            limb0: 0x43705eef0884e7541397b3b,
            limb1: 0x1bbce80fa64f4ab1a6e3ece8,
            limb2: 0x301c0cde00d88521,
        },
        r1a1: u288 {
            limb0: 0x1c9e1ef83613d155d448e91e,
            limb1: 0xe4f218138cff8e81d0473229,
            limb2: 0x265b862286e991d4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8,
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3,
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb,
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3696a51817c4caa8af7f52a5,
            limb1: 0xf463d37eb7857a7e662f4072,
            limb2: 0x25be0a75a15efe32,
        },
        r0a1: u288 {
            limb0: 0x451aa7bba94caf678c9d1ee3,
            limb1: 0x186dba90147cd05e483ad5ab,
            limb2: 0x7453a5e4d704079,
        },
        r1a0: u288 {
            limb0: 0x99054ffb7eb8d101d59bfbf1,
            limb1: 0xdaa2de4997ad279bdf3a7e4d,
            limb2: 0x4244e9948462a7c,
        },
        r1a1: u288 {
            limb0: 0xf13df7dd1abab5ac7df6c0a4,
            limb1: 0xb841e025287eb8774db62f6b,
            limb2: 0x2bf6056baa8b070b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d,
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914,
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7,
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3,
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940,
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d,
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x467cfb43c4ec023398bbe751,
            limb1: 0x9a5a5ca7c7d6cc95a16a1175,
            limb2: 0x1bf55148a4003ea1,
        },
        r0a1: u288 {
            limb0: 0xeb2fca1984e2b3c25f70044b,
            limb1: 0xcbf09eca86b993526ebf4d1f,
            limb2: 0x25b54cbe976211a3,
        },
        r1a0: u288 {
            limb0: 0x21195a2dc4cdd4fb9f2ca05d,
            limb1: 0x32dc0951871b1776c7012f31,
            limb2: 0x63db35602b49537,
        },
        r1a1: u288 {
            limb0: 0x77a0d3dc84e6b6cb9adb621,
            limb1: 0xd31329f08354567989ccf690,
            limb2: 0x72aa5f44e7662be,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5817c5f44b0dc29c5e649e30,
            limb1: 0xd75c47f72cb7960d53939639,
            limb2: 0xbeff3a743604866,
        },
        r0a1: u288 {
            limb0: 0xdfa8f3efe599f1f860c367de,
            limb1: 0xfb83aa83b8ac3dec6e3e5913,
            limb2: 0x1cbd003b6e4e1baa,
        },
        r1a0: u288 {
            limb0: 0xa81a9f47c69ec0e4b66cf1,
            limb1: 0x493e89a70bdd99a7fbeeaa02,
            limb2: 0xb1b50962922bc5e,
        },
        r1a1: u288 {
            limb0: 0x9003805ffbe969b00609cead,
            limb1: 0x2b3a76b037dc4d0981a3b754,
            limb2: 0x2996babe9c39d43e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42,
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29,
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419,
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb77badbb59e9c50ea4e4c8a7,
            limb1: 0x6baf20a20d21202c2e84603b,
            limb2: 0x29879bc847f963de,
        },
        r0a1: u288 {
            limb0: 0xd5f80a0bb5811237c722fd77,
            limb1: 0xcf36a60bd96b48856f35444,
            limb2: 0x389e6a997c776b1,
        },
        r1a0: u288 {
            limb0: 0x534da36a32503b7fba6ee5f,
            limb1: 0x8bd6f248af1ffaf5fb4c83e9,
            limb2: 0xae8f72bbb90c73d,
        },
        r1a1: u288 {
            limb0: 0xfd789d197f64a304b847dcce,
            limb1: 0xb2e3b62dddaa19f86a327cdd,
            limb2: 0x237ecd7c79c5e747,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028,
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8,
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6,
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc5fa21527cd7459c6d61aa0,
            limb1: 0xd6fe15c990ea1f191de41626,
            limb2: 0x1a5878f3828a24a5,
        },
        r0a1: u288 {
            limb0: 0xc1af1114f08cbb577eff371c,
            limb1: 0xd04cda153f1bb8379c44eb4c,
            limb2: 0x23c82ec8ce08714c,
        },
        r1a0: u288 {
            limb0: 0x5d643095226f16817db7d581,
            limb1: 0xba380c8310883b1c1b3784c5,
            limb2: 0xcc7868f3a9dc85b,
        },
        r1a1: u288 {
            limb0: 0x6887d8f4ba3d55ecda87c52c,
            limb1: 0x7e85b1cd58684e63b3171b74,
            limb2: 0x28bc402548d6ba6b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6,
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1,
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd,
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc029803e96f55761ab192ed6,
            limb1: 0xbe635c9a14975d777bab0fc5,
            limb2: 0x2dbbe665ae17c3e2,
        },
        r0a1: u288 {
            limb0: 0x453376a1eaafcd73366b8e6e,
            limb1: 0x731d1ab058f114adaa5d360b,
            limb2: 0x1505c5016acc12fe,
        },
        r1a0: u288 {
            limb0: 0xa9dacebc2cb5ad0cf65d7d51,
            limb1: 0x3fa1480cc6097d7ebd001a22,
            limb2: 0xecaba4d87752d2f,
        },
        r1a1: u288 {
            limb0: 0x3dd92d754e7dd9a2262f8351,
            limb1: 0xa1d236c7ca9513034411f083,
            limb2: 0x144ada9993e8c8b2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed,
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7,
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944,
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7,
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec,
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924,
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x39a610630cbe214a5ab14b0f,
            limb1: 0xf5fa77029af94e5b0b4ac783,
            limb2: 0x17a172ebc3db780f,
        },
        r0a1: u288 {
            limb0: 0x21a76c3577d430d9d9309017,
            limb1: 0xd31b90440eee1c3cb87e7203,
            limb2: 0x24b43b1312b8e418,
        },
        r1a0: u288 {
            limb0: 0xfc9c32784acfc7ee21f80b48,
            limb1: 0x8e9263ca2adb1840793b0af8,
            limb2: 0x5c78857a6e961bf,
        },
        r1a1: u288 {
            limb0: 0x25f66823a063e430764d49b3,
            limb1: 0x36cbdf3a37718150cf7367e7,
            limb2: 0x14f0b4cf1f5e5c84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x783d14ea79b73654937bc2f2,
            limb1: 0x48a73aceb94654201c48c1e5,
            limb2: 0x25c96951021e791a,
        },
        r0a1: u288 {
            limb0: 0x182acd2ba370bcafda93157b,
            limb1: 0xed497c6ad20afe1b4aece9d2,
            limb2: 0x145d1e9a6bca609c,
        },
        r1a0: u288 {
            limb0: 0xb2df463d4973d2c448360c25,
            limb1: 0x4b56e0afdf3a47244333e939,
            limb2: 0x268010ce1852f8ae,
        },
        r1a1: u288 {
            limb0: 0x53e033689a902a1a7842dcf0,
            limb1: 0x285588c7e4ba90dc7fc2479a,
            limb2: 0x2b227de2c24fbf5f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663,
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847,
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47,
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9aa43e0c8bb115eb4e00d75d,
            limb1: 0x46ad888551572447ecbe2738,
            limb2: 0x1cc2434f228b734a,
        },
        r0a1: u288 {
            limb0: 0x87e6ff55b78dd9a3f1afc240,
            limb1: 0x5fedab5c6c6ee2dfa8a4de7e,
            limb2: 0x2e2f375409ef2335,
        },
        r1a0: u288 {
            limb0: 0x7828605bfb48c05d288a3862,
            limb1: 0x1b006ba8e2920a5fa77bc0a8,
            limb2: 0xb0edd8ada6d89ec,
        },
        r1a1: u288 {
            limb0: 0xdb4b9a556472f6496dcbd83b,
            limb1: 0x2d4bb81ec00aca121fbb23f5,
            limb2: 0x1a802f484f21e937,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31,
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82,
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53,
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x67f52c139edbaca5e8f84638,
            limb1: 0x59ac0cd12fa0ebf04482636e,
            limb2: 0xada772277149ac,
        },
        r0a1: u288 {
            limb0: 0x2b73907449041fb9bd0a5f95,
            limb1: 0xbac2913b3dc1397cdc6edfec,
            limb2: 0x98acb7a1290f51f,
        },
        r1a0: u288 {
            limb0: 0x101bf4a62e5e70b41996b61c,
            limb1: 0x122c320533913a4ccbb2840b,
            limb2: 0x23eeb4055ec6fe6e,
        },
        r1a1: u288 {
            limb0: 0x111ecf3019d9b025744800d3,
            limb1: 0x5f2551d856408c33af2fc41c,
            limb2: 0x1fd716497d789da,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0,
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b,
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8,
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2366866728e3117ad2e3b91f,
            limb1: 0xa4a4af6bd1e7c5a3040dbd6f,
            limb2: 0x4d82e904f9c2dd1,
        },
        r0a1: u288 {
            limb0: 0x218ff8296767f813179bf53e,
            limb1: 0xaa7de4627546ea4a2fb534ea,
            limb2: 0x9e7884456729211,
        },
        r1a0: u288 {
            limb0: 0xf36506c9a5623f3725ec149f,
            limb1: 0x87bb0d4c29ac5c50280bb72e,
            limb2: 0x2b483e2bfdecd544,
        },
        r1a1: u288 {
            limb0: 0x4434eb7ec96614c8195622a7,
            limb1: 0x3c120ebda2aac337bc90f5ae,
            limb2: 0x6464fa15696926,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b,
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f,
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27,
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510,
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395,
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc,
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe841cfc78b492696dd84cc2,
            limb1: 0xf9b69cdd2ceaf2d0ba3dc7ec,
            limb2: 0x664be0b9cc7f567,
        },
        r0a1: u288 {
            limb0: 0x4f7380602f9bb2b97aeef4c2,
            limb1: 0xecebf2ea1ba97f7d0fecd5fb,
            limb2: 0x180f6a71bf06b559,
        },
        r1a0: u288 {
            limb0: 0xe1c86fb2e2c5c1fd7332d789,
            limb1: 0x3381e8827c6508cb79c7de04,
            limb2: 0xfeb5c5c7efaaedd,
        },
        r1a1: u288 {
            limb0: 0xa1feb62bb698759aec7048c4,
            limb1: 0x7b5da025a02d8cc3050d397f,
            limb2: 0xfffbf8f4961a3d6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7602cddab954cd6619cd44a,
            limb1: 0x82172f5bc8fe97e022a88109,
            limb2: 0xbee1376710db1d5,
        },
        r0a1: u288 {
            limb0: 0xb45f438595b0c6054eb9c623,
            limb1: 0x3d3aa6550980c61ca341fe0d,
            limb2: 0x1e70699388fa5b64,
        },
        r1a0: u288 {
            limb0: 0x14c6da942ef49a2f40f508aa,
            limb1: 0xd1600a37acc12302a63abbf0,
            limb2: 0x14077c82a96d6e60,
        },
        r1a1: u288 {
            limb0: 0x6311ef44768673938d9e207,
            limb1: 0xfa907f519f0416599cb7c697,
            limb2: 0x7cc9654491b29db,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f,
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234,
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724,
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9ba639ae346bb95e53a2e010,
            limb1: 0x233a26bb3d68159e4bd2a33e,
            limb2: 0x2e2a7fa3ee8b3ad9,
        },
        r0a1: u288 {
            limb0: 0x8d693e28474e756987e1988f,
            limb1: 0xa97d0f7857577c1dbc771ac9,
            limb2: 0x2adb6ecbd0e0a63c,
        },
        r1a0: u288 {
            limb0: 0xebb9e6427bb03f4027d2035d,
            limb1: 0x201a20096e5492b97862884,
            limb2: 0x6e7b717aa640b1d,
        },
        r1a1: u288 {
            limb0: 0x337ed4fd86153428402a5710,
            limb1: 0x33fe844ee1b7457193a28b92,
            limb2: 0x1d501c5e703489e8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce,
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad,
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065,
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0,
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2,
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3,
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8a58189ac4c5dbc7d179c282,
            limb1: 0xfc34f8147f0ecbf8e04d89c,
            limb2: 0x288d9ae091b1f5d3,
        },
        r0a1: u288 {
            limb0: 0xa844007f61b0d4f8892d85f1,
            limb1: 0x1a70ebd6ac2d618995389a11,
            limb2: 0x18c645d4ce880b0f,
        },
        r1a0: u288 {
            limb0: 0x48b0a6ddf9839f95a6bd461d,
            limb1: 0xb7b5fa60fb78819b44e50be2,
            limb2: 0x2c1168275d001030,
        },
        r1a1: u288 {
            limb0: 0xd291932a91c0ce3501d1f73e,
            limb1: 0x7928918f4c5d8ba71890361f,
            limb2: 0x947b9f7cd192c6e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9784f1eb87b8651ee67f7cda,
            limb1: 0x79a795334d722804ca29192d,
            limb2: 0x35ff5bfb662a221,
        },
        r0a1: u288 {
            limb0: 0xf838b8b5db90d3dbd3c6a5bd,
            limb1: 0x5d77966663dabf0b6346c7d,
            limb2: 0x84a8f89e8a2a69e,
        },
        r1a0: u288 {
            limb0: 0x920eae1d3d7b109cd1dd4e23,
            limb1: 0x65b51bf734bcf6666f50b1a2,
            limb2: 0x1a0c7b3e742e76de,
        },
        r1a1: u288 {
            limb0: 0x317332271c1d676a065dc9ff,
            limb1: 0x3061e27cc7a35cffe5f3f0ab,
            limb2: 0x75ad23e27b36d4d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543,
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4,
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947,
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf,
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763,
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba,
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x56e04d13fd3346d5a9d322d2,
            limb1: 0x5754fcc5d14fdba5925620da,
            limb2: 0x17b73514aff5dbbd,
        },
        r0a1: u288 {
            limb0: 0xb72a9b266e84fed81c826bbb,
            limb1: 0xa2568373401e3d7445ebab34,
            limb2: 0x1c726a0f71425201,
        },
        r1a0: u288 {
            limb0: 0x4c9adb98f86ff438c8411c59,
            limb1: 0x214407df4d131b61daca0d94,
            limb2: 0x93895dc79a643b8,
        },
        r1a1: u288 {
            limb0: 0x1db5434bf44ed2bda420ecf9,
            limb1: 0x2c87f631d164281a20c9e1bf,
            limb2: 0xebe9844a8903aca,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2cdb56a1489b2fe0f4dac466,
            limb1: 0xa786bc16a683434db8ce4219,
            limb2: 0x6d54d01b07563d1,
        },
        r0a1: u288 {
            limb0: 0x1632a675ea0848ca32530541,
            limb1: 0x7a5132668c6eb6d764a756a3,
            limb2: 0xcc30e1ab8b27e69,
        },
        r1a0: u288 {
            limb0: 0xcad98fdab664c0aaba01627d,
            limb1: 0x398a5c05dcfc2b5a168c19fd,
            limb2: 0xb3ec4d9a50c5cfc,
        },
        r1a1: u288 {
            limb0: 0x90ba00886ac8d50f665f4bf8,
            limb1: 0x107b7147ceac352edeb4aee2,
            limb2: 0x2c8793cca6eae2ab,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42,
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783,
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377,
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x16da74c44b96061e0996512e,
            limb1: 0x87352ebe176c8567e7079b6b,
            limb2: 0x61c85a8b3477daa,
        },
        r0a1: u288 {
            limb0: 0x55a6f4108a00ebc57da5d241,
            limb1: 0x55c0da104932c4bf6c6125cc,
            limb2: 0x128eb7c84fd5afef,
        },
        r1a0: u288 {
            limb0: 0x46a4e73f7649c55efca3edd1,
            limb1: 0x3bd436462e145e374b4d20ed,
            limb2: 0x1aec1f237f8beb0f,
        },
        r1a1: u288 {
            limb0: 0x673d55c7c67b0d05b9b10e7c,
            limb1: 0x1ec9cc186f64b70f04f65c41,
            limb2: 0x2bc035ef7f34cc72,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c,
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064,
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132,
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x67d4f288061b4cdba2bfe2e6,
            limb1: 0x78885c185529916696cdaefb,
            limb2: 0x1780b4d1e1b9204d,
        },
        r0a1: u288 {
            limb0: 0xbb0fc28c587590b3c553baf8,
            limb1: 0x8285890add946e7ca7a76a80,
            limb2: 0x1a77e8cd9c11d878,
        },
        r1a0: u288 {
            limb0: 0xcad6c8c7ff49db34b1a20ddd,
            limb1: 0xaf81e719e67ac02d8c4382d1,
            limb2: 0x255127ee4025549e,
        },
        r1a1: u288 {
            limb0: 0x6a0228fc40f9a1e70ba769d,
            limb1: 0x262baf0530b57aff37929530,
            limb2: 0x30594ec6103b597d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed,
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99,
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368,
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x58eb1e5145c9ae8f4f285a20,
            limb1: 0xef4a1fbfd576ed607df28dd0,
            limb2: 0x2d9520b1e20dd097,
        },
        r0a1: u288 {
            limb0: 0x8fca1596b6191c36875e80b9,
            limb1: 0xc2c04f8e6d4aa86274165e33,
            limb2: 0x72b99283489dd0c,
        },
        r1a0: u288 {
            limb0: 0xcf3d7c2178d929548ce64a3f,
            limb1: 0x9d549e8faae99827b0676b71,
            limb2: 0x24b7b349bd30acb2,
        },
        r1a1: u288 {
            limb0: 0xfea7f85b3ece2503d2c57b52,
            limb1: 0x6244698fb5cdaeaefc81a0e4,
            limb2: 0x4d123593b2c9bf7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345,
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492,
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593,
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297,
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230,
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f,
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x740c3cd79617ef4954f47d39,
            limb1: 0x2b7a21ebc4ef72a0f39032a7,
            limb2: 0x2788db34be6788a8,
        },
        r0a1: u288 {
            limb0: 0x98c66e7918d2bb20b2325f41,
            limb1: 0xd1990b69cd3437b436e0111,
            limb2: 0xba90c31e0a71049,
        },
        r1a0: u288 {
            limb0: 0x16cb6d749ef9d1d3217872c,
            limb1: 0x599b83417786d948dbc8be44,
            limb2: 0x1a53b06769718a31,
        },
        r1a1: u288 {
            limb0: 0xfc974c8cd260d29db8ef0528,
            limb1: 0xf7ab89e92b8e721378cfcb0,
            limb2: 0x1896c9da1d7c0da1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd766f897cb4ef246eb08cb1b,
            limb1: 0xd275a1aa6ba18a7ad6931633,
            limb2: 0x28753a1024d1b427,
        },
        r0a1: u288 {
            limb0: 0xf78cd972837cf5aba6ee7ab7,
            limb1: 0x28939d8409f0b3e0b3417b65,
            limb2: 0x1dccd17dd13ec960,
        },
        r1a0: u288 {
            limb0: 0xed435ac49a609f7f32a227a3,
            limb1: 0x79fb86f5b5fd55be257c5385,
            limb2: 0x265601e3bbe59b11,
        },
        r1a1: u288 {
            limb0: 0xbd29381f2ae676ec69e80bb7,
            limb1: 0x26f47372dc94482b49b2ea8e,
            limb2: 0x29d2c6cf9f8468e0,
        },
    },
];

