use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x4782b57ede6a92410b83331f,
            limb1: 0x8b925643cb924c53b454556f,
            limb2: 0x1ee3d191f422caca,
        },
        w1: u288 {
            limb0: 0x43dafd08855e40df668a09d7,
            limb1: 0x2628fc2a8bde46591cdd73ca,
            limb2: 0x16bdb12867b857c7,
        },
        w2: u288 {
            limb0: 0x28e55a20370d709758da2cf4,
            limb1: 0xdb67e752d9ce4ea29334f8e7,
            limb2: 0x129e27aa084f46d6,
        },
        w3: u288 {
            limb0: 0x4d3ab006e978eaf78e755602,
            limb1: 0x681be8a9bf3276444d66be02,
            limb2: 0x1c59cf19f2839c22,
        },
        w4: u288 {
            limb0: 0xc1a7637a2c1caaae92cbe743,
            limb1: 0xb732ac6805d859dfcd14890c,
            limb2: 0x63a184df2c0f8a,
        },
        w5: u288 {
            limb0: 0xdb75dc77b2c8e7978c196570,
            limb1: 0xde266df22510b0e518b5a524,
            limb2: 0xe7422ec2d5b8f23,
        },
        w6: u288 {
            limb0: 0x974f990f996c5c8a7a0841d1,
            limb1: 0xa9f43af95544f7781a87697b,
            limb2: 0x5f51661af301348,
        },
        w7: u288 {
            limb0: 0x4e3450ae751de7df2da291b3,
            limb1: 0x11d36bae5e1795c90912183d,
            limb2: 0x29b83824f45992e6,
        },
        w8: u288 {
            limb0: 0x530d49229ed5f1d56f9160a1,
            limb1: 0xa84ace78360ce266f8361b3f,
            limb2: 0x16214ffb76918121,
        },
        w9: u288 {
            limb0: 0x7183c08c560bfe8d8134075a,
            limb1: 0x9f40b0927430029fb943d17d,
            limb2: 0x1adec8068b0b7436,
        },
        w10: u288 {
            limb0: 0xda413f7f9565a1eb05dc6939,
            limb1: 0x64b5a4ca0a8b376ad247463,
            limb2: 0x9d1c3b9f3997de5,
        },
        w11: u288 {
            limb0: 0x4f06bbcf31f70479337a9542,
            limb1: 0xb358a79309e943693f42b386,
            limb2: 0x1a93ac8dbce0c87f,
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
            limb0: 0xcc3633149f9196901e4baa3a,
            limb1: 0x668d691ca5c18cfada28d12e,
            limb2: 0x1e805397fcc1b3b6,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xd52d5d0e7056b4edf141c00b,
            limb1: 0x3eb8f9eb3e00a19eeb827eae,
            limb2: 0x27c4b59fd0602d15,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xf6193cdab5c59f838bde76e2,
            limb1: 0x81c51741922058ba18271e7,
            limb2: 0xe800bab5e6b3dda,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x4635782ba4a8dcd8a74220f,
            limb1: 0x498684a73e5a49f354c06ea4,
            limb2: 0xf18c862dafb9a9e,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x15aa7c7aa602fd83ce1856a3,
            limb1: 0x6c54ab0cc0d23aa89b4f7076,
            limb2: 0x2d82ab7d6fabb54c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x3db5b3078872c75783902791,
            limb1: 0xf557668c4715fbb5f6ea15b,
            limb2: 0x22e703fbcfd539e8,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3d3f0530585972107e00bc62,
            limb1: 0x182dd2392d6156484fef3bc8,
            limb2: 0x252e1dbda44423ab,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x7e020c42b0c424d27cf2494,
            limb1: 0x927498501cd1684f7192a912,
            limb2: 0x23b3fcb599ca598e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x23d171f49633d415dd798d2a,
            limb1: 0xaccd06733abfc5424811c6bb,
            limb2: 0x1a06b6c3935fb64d,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xc3a84f50d0f42d7778e678d2,
            limb1: 0x8247d1fc11a086e00c1bcbc,
            limb2: 0x2fa9b52958a55741,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x77b2d2e139126d8987d41e6d,
            limb1: 0x636cb1bb961f0b335546be76,
            limb2: 0x1c6b8c9738d57c5a,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x455b78a3f1e3e25a2f554c08,
            limb1: 0x1a745c0eb29674add6c1f43b,
            limb2: 0x1a042ea52a56aaea,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xeb6a54370592c32ec216630f,
            limb1: 0xef696bb5b75d2da814af024d,
            limb2: 0x2819235fcbdfc97d,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x6557d59416b8703ef145d411,
            limb1: 0xe1421a3383e1d194ae758119,
            limb2: 0x254ca7f54401d7b7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x38c04c969ad01b2ef1c4804b,
            limb1: 0x77fa828923464975ab6e562e,
            limb2: 0x2e5647f5e11045f2,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xc44a8b5e62bdec1c45134111,
            limb1: 0xda6198a2f813687f39dd7946,
            limb2: 0x1b341811eb7563a,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xa758f12435209b74b144f153,
            limb1: 0x2565760ab6f235b05fa3313b,
            limb2: 0x5eb7a994308ac01,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xf8fe07d88044b6a0885fda1f,
            limb1: 0xe2afba01d01971f9a977fae5,
            limb2: 0x5f7832499d6652c,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf10e181cc540b77bf82f60bc,
            limb1: 0x7788f0f460a61c3490fa4041,
            limb2: 0x3820950561d38cc,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xfaf73e13fb67a347cb7e0884,
            limb1: 0xeae5c7665d5f47758c22b1a6,
            limb2: 0xc3f5ce81e3f6a01,
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
            limb0: 0x308d5933aab37672e32e0383,
            limb1: 0x880ae35a7b8dc839db6c3f60,
            limb2: 0x21124204a5585a01,
        },
        r0a1: u288 {
            limb0: 0x23beb1a88f62542a6d713455,
            limb1: 0x48defe69717e1b363464a688,
            limb2: 0x19554cfd74df7aa,
        },
        r1a0: u288 {
            limb0: 0xc8a6a9073cee487214acbf3d,
            limb1: 0xaeda335a79b3f5caedbbcac1,
            limb2: 0x46a8b11afc24b72,
        },
        r1a1: u288 {
            limb0: 0x8949340526777a336206af01,
            limb1: 0xc345a4f6822cc708f94a5b7,
            limb2: 0x2c39aedc2991581e,
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
            limb0: 0x37e47159916d15a3f54ef9c4,
            limb1: 0x3045625c05f39023bc152b31,
            limb2: 0xf520c6e3bd94628,
        },
        r0a1: u288 {
            limb0: 0x44b318e4acbe37ec6b0bc8f2,
            limb1: 0x6f71474d10033d27631cc409,
            limb2: 0x2ecef9a309e3a87f,
        },
        r1a0: u288 {
            limb0: 0x9fcb2185ff3243a4c3d03e0a,
            limb1: 0x976125c07cd6292a9c59fcf,
            limb2: 0x2bf9c361316f54b7,
        },
        r1a1: u288 {
            limb0: 0xdf28968815a911e376764e46,
            limb1: 0xac1beb67195e8bed07ecc4d9,
            limb2: 0x42a9f96b7a0480b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x81eee5446429e93cc06c9d01,
            limb1: 0xdb03b37a9b82aae877554711,
            limb2: 0x22bf2726bbe959df,
        },
        r0a1: u288 {
            limb0: 0xdeaa8720b7a367039194185c,
            limb1: 0xbb82c6c32516d5702b3ed460,
            limb2: 0x1bd0bc7dfc8a1c72,
        },
        r1a0: u288 {
            limb0: 0xecac8ce32fe5ea8922f17c82,
            limb1: 0xf0861254b464214e2aa7b67c,
            limb2: 0x27a2ffe1c494ae95,
        },
        r1a1: u288 {
            limb0: 0x2bb15287b2c80583fcb5368,
            limb1: 0x43b34c8a7f23662c3089053e,
            limb2: 0x5ff6204e3190987,
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
            limb0: 0xa6cf00302293a3685527b839,
            limb1: 0xb381bdd4fb42b0f8197a39d9,
            limb2: 0x5d139b33868a6ca,
        },
        r0a1: u288 {
            limb0: 0xce3899a71f7a24e49ebf868c,
            limb1: 0xced6b6c9d1412738dfcd8c61,
            limb2: 0x18ce5277e772438b,
        },
        r1a0: u288 {
            limb0: 0xfb324448e5c45bde1218c14e,
            limb1: 0x59eba1b756ca443c2adc9db3,
            limb2: 0x29ca5783be330777,
        },
        r1a1: u288 {
            limb0: 0x1d5047c0f7669b6402934e5c,
            limb1: 0xd35e9a68f3e095f90ff3552f,
            limb2: 0x22def8878e0321f2,
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
            limb0: 0x86d9873846d8cc819409d01a,
            limb1: 0x937d100a8906578a9c9f0207,
            limb2: 0x2fc402edc3761249,
        },
        r0a1: u288 {
            limb0: 0x6d55fe34f9e93a5a2558388,
            limb1: 0x806d0bd29cca8309ddd349a1,
            limb2: 0x121fa0fb49cf3e7d,
        },
        r1a0: u288 {
            limb0: 0x7fad219dce7ee5835e765d9d,
            limb1: 0x95ccf4d84561e1cca8c834d9,
            limb2: 0x2664743c54eb5204,
        },
        r1a1: u288 {
            limb0: 0xcd79e5760370d1e3b737e050,
            limb1: 0x4cf5ce309130fb5991fdaeef,
            limb2: 0x284d651622b4dfde,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xef1c0d354b97592c962d0ed9,
            limb1: 0x43b291d66dbe7bb23b20c07d,
            limb2: 0x27372584857db087,
        },
        r0a1: u288 {
            limb0: 0x3e7e31c4a3c96fc6e5b709af,
            limb1: 0xfe1c4073295e9a55ca44e031,
            limb2: 0x2538e75fe057b3cb,
        },
        r1a0: u288 {
            limb0: 0x105abfaf2e13d9dd4ad5cf03,
            limb1: 0x95670ef092388d9974c20832,
            limb2: 0x84185ce2c4d9a4f,
        },
        r1a1: u288 {
            limb0: 0x7b9ec748da23f2b4a8784f21,
            limb1: 0x8c3936b12e927c77855cca66,
            limb2: 0xd766b0a0fc16d0c,
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
            limb0: 0xa05c10fcff153b83b5e86cb9,
            limb1: 0xd024d1099e35128997295258,
            limb2: 0x12260ac739e0d269,
        },
        r0a1: u288 {
            limb0: 0x31ad0f63db4dffddfe1176cd,
            limb1: 0x937aafd77664d4b17bbc8320,
            limb2: 0x6a8dfd4797a7e0a,
        },
        r1a0: u288 {
            limb0: 0x3cf21bff4c731102b5564a7f,
            limb1: 0x1e1b43adcee583f71fa43388,
            limb2: 0x2017fd5e7ac98c92,
        },
        r1a1: u288 {
            limb0: 0x6282e017877d223f474eaa47,
            limb1: 0x8630414335834a75feb01586,
            limb2: 0x1abaa641c5a9205f,
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
            limb0: 0xe3c36fa6c5ddb92c836f0824,
            limb1: 0x7271e10c36ecd23de7503d04,
            limb2: 0x14e39b6f03763eb0,
        },
        r0a1: u288 {
            limb0: 0x7c08971ce27d9e3dfb0ab5d4,
            limb1: 0xb4b85e33284bf5f8d7b48b96,
            limb2: 0x9fa099a4673c2cd,
        },
        r1a0: u288 {
            limb0: 0xcea469e57e00e3df907f831a,
            limb1: 0xe9da27df507f4fc367871f6a,
            limb2: 0x20bb544caf276104,
        },
        r1a1: u288 {
            limb0: 0x2e6038e9abf0b84d65e119f1,
            limb1: 0xf2af32edd3eb0b7d6d6643ab,
            limb2: 0x22fec02330f25011,
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
            limb0: 0x35de93eb3deb947c94d4a812,
            limb1: 0x9cdb7063bb3ecebf294f8bc4,
            limb2: 0x126b23fe9308e9c1,
        },
        r0a1: u288 {
            limb0: 0x25e47c5dfd74440cd21d76e2,
            limb1: 0x799d4de1854cb3505710460b,
            limb2: 0x702b17ce28445f9,
        },
        r1a0: u288 {
            limb0: 0xfb6df34e7c76559387719ab2,
            limb1: 0x3f3be15764d5c2712bf75ad6,
            limb2: 0x12f7e4dd259c6637,
        },
        r1a1: u288 {
            limb0: 0xc8ec85dc3516ca740f22b744,
            limb1: 0x51c01d16d8c9237ad6026067,
            limb2: 0x29cc1bc4f1705502,
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
            limb0: 0x98009ba77982ac428be0fad9,
            limb1: 0xccd2f197af5829258e099e35,
            limb2: 0x2b2b3665f922a357,
        },
        r0a1: u288 {
            limb0: 0xe991452bcb43877b15e56803,
            limb1: 0xf1b3f4bdccad3497cf36ec03,
            limb2: 0x1e6fed02d3cc6d85,
        },
        r1a0: u288 {
            limb0: 0x11364cd1058835f5fa6687e7,
            limb1: 0x118ac83c957ff7ed970753ce,
            limb2: 0x68effab876570b6,
        },
        r1a1: u288 {
            limb0: 0xc9cc17eacb59def083aecb0f,
            limb1: 0x27ef3df3d5911bb78cb5afed,
            limb2: 0x2cf51ec2c4adeade,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf1908c5d367da03dfcf9452c,
            limb1: 0x28e4b40bd658948aebc61e25,
            limb2: 0x18bce3f7ca800911,
        },
        r0a1: u288 {
            limb0: 0xf20397382c4512948ca307da,
            limb1: 0x657a124dfa3958d608d9256b,
            limb2: 0xbb787ffafee64,
        },
        r1a0: u288 {
            limb0: 0x31138977df51da3ef3ad8d2,
            limb1: 0xc9dafe73d9a04d5ffb19f1a9,
            limb2: 0x1f49ad5f1ea0d9e3,
        },
        r1a1: u288 {
            limb0: 0xa24409b96b3030d86a5f48fb,
            limb1: 0x401fdd7979f89538b6663e43,
            limb2: 0x2eed9c2d88659714,
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
            limb0: 0x6370f3b442367a1e5d29fa74,
            limb1: 0x44852eff4fa5fa61cee484cb,
            limb2: 0x430dcdc918022ea,
        },
        r0a1: u288 {
            limb0: 0x785ddc38b4f5958ca04d8b90,
            limb1: 0x4cf2c172907400cd778045cc,
            limb2: 0x250c9616fb074025,
        },
        r1a0: u288 {
            limb0: 0xee5b03c75ad5a5a0fed34633,
            limb1: 0xdf16301d03b97b70a5e68b3a,
            limb2: 0x185a393fa4644eb7,
        },
        r1a1: u288 {
            limb0: 0xf1eceb9dd6b73a750ad34acb,
            limb1: 0x9e0882facf2fa1e1f3b31b0d,
            limb2: 0x2b036e3404260701,
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
            limb0: 0x2fe34647b28c3adb470f5f2a,
            limb1: 0x996c16a6cc761e15b3d0f6e,
            limb2: 0x6ce5d3618f254ea,
        },
        r0a1: u288 {
            limb0: 0x9bc9b1454ca8b3de01b8cb81,
            limb1: 0xd3ccb0239b13a36eccf9f255,
            limb2: 0x25d16f129b4eb8d7,
        },
        r1a0: u288 {
            limb0: 0xcdf5392e2be106ddf05f3538,
            limb1: 0xa4594eda1661c2f9535f505c,
            limb2: 0xe836d4068050d9e,
        },
        r1a1: u288 {
            limb0: 0x5af32416a38bfe69f394a8b7,
            limb1: 0x90e51606eda871f426fcc8b0,
            limb2: 0x2e7bc40ee6a1d9e5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbd4c5e41849980c934c720c7,
            limb1: 0xe41b6be607cdb3b8a6dc9ed8,
            limb2: 0x14d876ad52d17b92,
        },
        r0a1: u288 {
            limb0: 0x5280c3d8b294db55301dd8b9,
            limb1: 0x47ef868f7e0d11783cac424a,
            limb2: 0x211be6ad96fc6488,
        },
        r1a0: u288 {
            limb0: 0xe082111c8c3b60658000261b,
            limb1: 0x95ba8cb9038764716bf80a1e,
            limb2: 0x240980fd68485617,
        },
        r1a1: u288 {
            limb0: 0x36146a4a39cff0dc99776a38,
            limb1: 0x8e081a4f1782c15642f2b49b,
            limb2: 0x2caf624aae4fe33e,
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
            limb0: 0xc99e013a5a5d0e063e3dc55f,
            limb1: 0x1a8da48f36515a2f437bbb89,
            limb2: 0x7aaaf9c42e85716,
        },
        r0a1: u288 {
            limb0: 0xa695b6111cb743b42ce8ea2,
            limb1: 0x7f3ffc8e6dbd06aa466ae385,
            limb2: 0x2d004ac792bcf75d,
        },
        r1a0: u288 {
            limb0: 0x2a386b5e3500b5410ebced5b,
            limb1: 0xd94d8f8824cab5f5c66efff4,
            limb2: 0x1b83944b1a31bfbb,
        },
        r1a1: u288 {
            limb0: 0xa454d0a4a4a62d838e44e179,
            limb1: 0x96a6d65666cf7f7fb7cd7947,
            limb2: 0x1c34c5d0ef5e60e1,
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
            limb0: 0x18b617a4419cda77d215e02e,
            limb1: 0x2241fb653d48503f3227286a,
            limb2: 0x2e62b9ebd4c2bcee,
        },
        r0a1: u288 {
            limb0: 0x2cf9a2c64703b625a41b5f09,
            limb1: 0x35a6b9d15cab8d8c9e73b9e4,
            limb2: 0x1a4d3db429b0604b,
        },
        r1a0: u288 {
            limb0: 0x28cebf845cfebc664cd4f60b,
            limb1: 0xc908971a9a08fe725a89a255,
            limb2: 0x1697950677f7e927,
        },
        r1a1: u288 {
            limb0: 0xf4cd7ced3183f37eace19c13,
            limb1: 0x107ab8f62fc61d9408fb57e4,
            limb2: 0x261079f38b2e4985,
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
            limb0: 0x7bc016d2ca29627781742087,
            limb1: 0x98f96d077b1f16393a232b6c,
            limb2: 0x2187d418c5296b76,
        },
        r0a1: u288 {
            limb0: 0xc0557e6db00fed5713c0afc5,
            limb1: 0x19c641e72ee9fc0cad7c62a6,
            limb2: 0x2ae84eb3b709cd2d,
        },
        r1a0: u288 {
            limb0: 0x4f1ba6566714fd22b378e5bb,
            limb1: 0x75714952ab6ef761cd1741d7,
            limb2: 0x2bc95bf6e29c1a61,
        },
        r1a1: u288 {
            limb0: 0x113e7f6a65cae99f41daff47,
            limb1: 0x37f8828e7ee767632679d760,
            limb2: 0x38fd7fcd4373890,
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
            limb0: 0x4b2d6243d18d17a45cd7fa72,
            limb1: 0xc65b3d5d9370173cb57f01d7,
            limb2: 0x16a43319d1b1c967,
        },
        r0a1: u288 {
            limb0: 0xb34548c6fcade19d1b8c4aac,
            limb1: 0xe92398784164e5354c485543,
            limb2: 0x258e862bb26f18,
        },
        r1a0: u288 {
            limb0: 0x3a74edf0c149df3316a726cd,
            limb1: 0xea26b5b023a467f9b799f4e,
            limb2: 0x2a87e7c110aeda31,
        },
        r1a1: u288 {
            limb0: 0x43f5d3b2d14e0b5b4e71ec23,
            limb1: 0x4993252a8437a89645d96504,
            limb2: 0x9afeb803c5a5327,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x79bd977177e97db06a56b947,
            limb1: 0x58c6c90d226d94ee3fcd2291,
            limb2: 0xca60c9f4000dced,
        },
        r0a1: u288 {
            limb0: 0xff3b1322ab9f2755375ff173,
            limb1: 0xf47a9bd9a6ca60bfb8cc6f2f,
            limb2: 0x2fa6731e18bccc61,
        },
        r1a0: u288 {
            limb0: 0x1ca9810afc05825a3f66685b,
            limb1: 0x37dc0e06e318e83b0b74da0c,
            limb2: 0x22f35252ed02d9be,
        },
        r1a1: u288 {
            limb0: 0xa26f8425306e0d9710c36b79,
            limb1: 0xbe0f0c9f8fcc2e51d58c8023,
            limb2: 0x2b3ea012aad98354,
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
            limb0: 0xf90b657395bfe64feb19079b,
            limb1: 0x8069b73aa590301d3d7cc90,
            limb2: 0x9b7a368582b97fd,
        },
        r0a1: u288 {
            limb0: 0xd7053db2adce2ebc59ce9cc2,
            limb1: 0xba9bd7b3fb0673161fec1856,
            limb2: 0x1af62a17d1e5cdb4,
        },
        r1a0: u288 {
            limb0: 0x53a463f97953f27ef832767,
            limb1: 0x7cb224be8a936c7fc7711eea,
            limb2: 0x2cb741cbbaad4ff7,
        },
        r1a1: u288 {
            limb0: 0xb35da1ed3e4f87d4cdacab30,
            limb1: 0x45b640131d965e481ba8145c,
            limb2: 0x22b9b07fc69ef16,
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
            limb0: 0xb25cdd93149c4e23384753f5,
            limb1: 0xc1b7999935dd90739d2ece8f,
            limb2: 0x114ee0306ea30be1,
        },
        r0a1: u288 {
            limb0: 0xf9b0027ecdf5154b6d5a03e7,
            limb1: 0x66c0780118d4e71ef3dbd9d9,
            limb2: 0x85c2306ddae8178,
        },
        r1a0: u288 {
            limb0: 0xe8b8a6d325b027a55295f176,
            limb1: 0xd0d697e15d0b9bf87ce0ba2e,
            limb2: 0x1777cc949e1b7ae,
        },
        r1a1: u288 {
            limb0: 0x3441f6dc6ae9616b0af856e5,
            limb1: 0x3b17e19644cb08eece7d6e15,
            limb2: 0x2aa7b8dc3f659b8a,
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
            limb0: 0xbd05e64ec14eb30ef1f00fe3,
            limb1: 0x6fca37f2e83e74fcbf335a19,
            limb2: 0x19873106fd644833,
        },
        r0a1: u288 {
            limb0: 0x73cc930c2f370aea8b1145d2,
            limb1: 0xab726d21cee2eb245c9f15af,
            limb2: 0x1acd6ae691aa192a,
        },
        r1a0: u288 {
            limb0: 0x49bbf5a855663a1af252ae90,
            limb1: 0xe8503bf2b9cdd67c92192ba0,
            limb2: 0xa8e00f62fb2e5e7,
        },
        r1a1: u288 {
            limb0: 0xdad1df1262f2ee9a9df75b94,
            limb1: 0x5f521b5f93f24861478e524f,
            limb2: 0x3a06f374ef50d3c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdfbb3c0fc35009ecf54d6326,
            limb1: 0xb0635f49203722b37905cfed,
            limb2: 0x1eb848c2dbc6cb82,
        },
        r0a1: u288 {
            limb0: 0xaaa2e99a4e3833ed061295a,
            limb1: 0xb0a9b029adb05b3afc321033,
            limb2: 0x179770fcef250a50,
        },
        r1a0: u288 {
            limb0: 0x47995963111687bbf5564226,
            limb1: 0x9510b74cc63632664548b692,
            limb2: 0x1af18b1af29bf01c,
        },
        r1a1: u288 {
            limb0: 0xc91ddd0c02dab8b8f26b9625,
            limb1: 0x7cfb3e0bde17a395b0fd745d,
            limb2: 0xf143e558dae1c8b,
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
            limb0: 0xc92e8617356d35ab2e7dc1d7,
            limb1: 0x1c95ba85dacdcdf3a9374dd8,
            limb2: 0x13c1073045352440,
        },
        r0a1: u288 {
            limb0: 0x963901b583ec7d9b0db99f9e,
            limb1: 0xa494ad5a4846bf9a8c76c8b8,
            limb2: 0xa01241deb87f7f,
        },
        r1a0: u288 {
            limb0: 0x208b2a640c0bfd667e3024e2,
            limb1: 0x253b7b20dc933351a60052a5,
            limb2: 0x150f5dde786cf31b,
        },
        r1a1: u288 {
            limb0: 0x8ae8797807aafe0af6120b18,
            limb1: 0x8e24c6655f6e119ee9eb3e7d,
            limb2: 0x73c1ee964ee5643,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc055883236ca0f4e8110873a,
            limb1: 0x575522d6851e89af9a95ac29,
            limb2: 0x2147dd8ad53bd6,
        },
        r0a1: u288 {
            limb0: 0x9b70b30ffd08d449cc18b90e,
            limb1: 0xc9b380529ffe14d7221fbda4,
            limb2: 0x1cea068e12393de7,
        },
        r1a0: u288 {
            limb0: 0x5da7488792ff4e6fb9ce0f40,
            limb1: 0xb389b52cf1cb09b18814e840,
            limb2: 0x828cee7bcbf3dcc,
        },
        r1a1: u288 {
            limb0: 0x78178515e434bc2b5616d5d8,
            limb1: 0xd584c502df8c48e7ec0b346f,
            limb2: 0x131455052a16f8eb,
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
            limb0: 0x6c1098ca22db5550668ff841,
            limb1: 0xe7ea7e7a8f8edcf0506ca463,
            limb2: 0x2a16b162c8b6b64a,
        },
        r0a1: u288 {
            limb0: 0xbfd04de06c3d3ceaa62e4edd,
            limb1: 0xda722e1f638d1d1d7ebc99f3,
            limb2: 0x1e6be9bb600fb74,
        },
        r1a0: u288 {
            limb0: 0xcadf5e7be146f96e426f5998,
            limb1: 0x5d62d14f754016e2ad352c16,
            limb2: 0xb02fb0a26bdf36e,
        },
        r1a1: u288 {
            limb0: 0x674360555cd28854e7bd4b78,
            limb1: 0x8cb0bf2b7475df875ee95383,
            limb2: 0xba50ab6d0bc07d,
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
            limb0: 0x627f7aebe5f50b57401d4d09,
            limb1: 0x50f44dbdc1caa9a734d1014b,
            limb2: 0x147ac64edce36403,
        },
        r0a1: u288 {
            limb0: 0x5edb5083e7b836c91c55a737,
            limb1: 0xc0b228815dac7ced7a128999,
            limb2: 0x1c90ce562a9bd922,
        },
        r1a0: u288 {
            limb0: 0xeb69cc71ae115fe2de421ead,
            limb1: 0xbece82a1e4a58a96996c607d,
            limb2: 0x794c91597b707d1,
        },
        r1a1: u288 {
            limb0: 0x817b063eeeda07d797087000,
            limb1: 0xaef4455dfa9436853b3e7dad,
            limb2: 0x2f2516dde32a87cd,
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
            limb0: 0x1484d19bbf708ea64d0688e3,
            limb1: 0x36ff44c0dfbadcbabad0bc01,
            limb2: 0x1bdde482b4818c67,
        },
        r0a1: u288 {
            limb0: 0x388a3866c9c74c1fbbab3f06,
            limb1: 0xa91f1d85a1d2f3f1dc9cc8f2,
            limb2: 0x27600d0a21277a53,
        },
        r1a0: u288 {
            limb0: 0xf925489312d8442a654fd391,
            limb1: 0x5201c525460e0a1ad21f3598,
            limb2: 0xfa6a02c7a60bf51,
        },
        r1a1: u288 {
            limb0: 0xf5f1edc77a4a7caca966f815,
            limb1: 0x74dcc59fd9b863c813903c42,
            limb2: 0x5d97bed6fcedf63,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc835ccf2c815f4f1d422bf68,
            limb1: 0xc85ed169d0ab9457e097c1a9,
            limb2: 0x6dc3c2eb4ea86d2,
        },
        r0a1: u288 {
            limb0: 0x569c0ee2280c063a8c8b3d31,
            limb1: 0xf62e7cb4ed7c1422eaf71053,
            limb2: 0xde653bb3602ff67,
        },
        r1a0: u288 {
            limb0: 0xd511ca7c3bc3a4b1374d06a6,
            limb1: 0xf0cc9bbc73888082d7d82d65,
            limb2: 0x222d7aa6df57cb2b,
        },
        r1a1: u288 {
            limb0: 0xc627db33d19e84cd92e46808,
            limb1: 0x2e60ea36441f79a2fa877437,
            limb2: 0x1a84397e3de78967,
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
            limb0: 0x6686889f1ebcd9b5ff153152,
            limb1: 0x75c438db66118a03f62b3315,
            limb2: 0x1f4c41f917350b3f,
        },
        r0a1: u288 {
            limb0: 0x6cfa8cfc628871126118811,
            limb1: 0xbab8dc70b66b31ef4e6b842c,
            limb2: 0x10313793a197e071,
        },
        r1a0: u288 {
            limb0: 0xc9449b0f374b1b38ced7a3e5,
            limb1: 0x302ff689c09384370b1f60dd,
            limb2: 0x1b5ccdc889b72afb,
        },
        r1a1: u288 {
            limb0: 0xb107450a95db3fa6ade9759,
            limb1: 0x4d67eef98381a153782814d9,
            limb2: 0x3f01ea023274754,
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
            limb0: 0x3e890d0df7b93459cb5737bc,
            limb1: 0x4c5b89315e500f572ee4a295,
            limb2: 0x21459853e0c82b7a,
        },
        r0a1: u288 {
            limb0: 0x91008d5f6dc80209f9942164,
            limb1: 0x98907f39b47e36f7674559c6,
            limb2: 0xcf1768155162075,
        },
        r1a0: u288 {
            limb0: 0x21a1f0125c8e87ce92c701bd,
            limb1: 0xa18f7f93bc0147b287f49c06,
            limb2: 0xc6c7927478011ca,
        },
        r1a1: u288 {
            limb0: 0xc5b27048ae11ba7c7fb624b1,
            limb1: 0xebeb8e31b6c226cb8c3ec480,
            limb2: 0xdfc5e071fd3d110,
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
            limb0: 0xf86acfe005d3cebe8b090c12,
            limb1: 0x6830b64d63c748101db84d7f,
            limb2: 0x8ca1e596067168c,
        },
        r0a1: u288 {
            limb0: 0x4077575c0ba2f4fdfa6a5175,
            limb1: 0x5a9ce97cef0ad8946790765,
            limb2: 0x190810045145095b,
        },
        r1a0: u288 {
            limb0: 0xdcfbb230bdc40b407a0639,
            limb1: 0x25f73b1bff7b17e71ee6dd51,
            limb2: 0xb968908014e938c,
        },
        r1a1: u288 {
            limb0: 0x87d2ec4b89416d687cbe3da8,
            limb1: 0x936aaf266fc595b37b34d611,
            limb2: 0x17887063773c3ad6,
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
            limb0: 0x81c59eb8e903aac8e8e4e80f,
            limb1: 0x7c5561f44c18bf3382c4866c,
            limb2: 0x1106ab445648d6f7,
        },
        r0a1: u288 {
            limb0: 0xb345a7d32f39e7e0845d1f85,
            limb1: 0x5af6c5b04f8a4a3ffe17899c,
            limb2: 0x26b3e8a1cefdf702,
        },
        r1a0: u288 {
            limb0: 0x5c9c133a8292b1225629c43a,
            limb1: 0x468b8b811fdcabd0543bd0ad,
            limb2: 0x21e13d781c069bc6,
        },
        r1a1: u288 {
            limb0: 0xaa7334ea933fa861cb552dd7,
            limb1: 0x78ada7b4784ed155b2935534,
            limb2: 0x151d79ad57eca1ec,
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
            limb0: 0x3cf14d0a362487637663125c,
            limb1: 0x82ba43380f48e64ee021e00,
            limb2: 0x148c394a41e503c9,
        },
        r0a1: u288 {
            limb0: 0x145e0cb8116770fb37c1fe5,
            limb1: 0xeebea58900bb373ebe2aca35,
            limb2: 0x5135032b6c4c902,
        },
        r1a0: u288 {
            limb0: 0xae5f21ea226fa5893b130760,
            limb1: 0x15ca9340b59bd6559b845cc3,
            limb2: 0x2b69d134727526de,
        },
        r1a1: u288 {
            limb0: 0x235adfae694a305107773125,
            limb1: 0xfde2f8a9ae22bb4b980f1255,
            limb2: 0x2cb882cebc96d8dd,
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
            limb0: 0x8433b1adee81982837cf4fd0,
            limb1: 0xf6dcd461832fe493b36a62ab,
            limb2: 0x2b32de229a6ee325,
        },
        r0a1: u288 {
            limb0: 0xc48474044319eb3b5bb6f6bb,
            limb1: 0x7e9992d2f1e4680547e2063,
            limb2: 0x221c80317e71a118,
        },
        r1a0: u288 {
            limb0: 0x18a14740f4ec6588c6315ace,
            limb1: 0xbb22ff90bc63118e00e58b85,
            limb2: 0x2c3e58ffaaa37f8b,
        },
        r1a1: u288 {
            limb0: 0x4d7fa7bd1bac90000697c618,
            limb1: 0x34942431609d42eacacf2342,
            limb2: 0x67dd365df878e01,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x34b02a41f3d0c694dc0758b1,
            limb1: 0xb61fc424b13a05138a717ddc,
            limb2: 0x106fdc9bf5cd1c06,
        },
        r0a1: u288 {
            limb0: 0x7a861b8d441128cdc096e3e2,
            limb1: 0x66a75970c5e5eac8db7ab506,
            limb2: 0x5d755c0a0a3a43e,
        },
        r1a0: u288 {
            limb0: 0x88b014ece983df9529ac770a,
            limb1: 0x90e190a330518e52c0bdf991,
            limb2: 0x2ca933e18e116a37,
        },
        r1a1: u288 {
            limb0: 0xd6e7fef3cdf3753e5b4bd662,
            limb1: 0x24c560d20a28f8663010aee4,
            limb2: 0x8b26320592636bd,
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
            limb0: 0x87090269301d1e17a0176582,
            limb1: 0x985770650fb59434f906ac3a,
            limb2: 0x2e0d6b98dffd5b34,
        },
        r0a1: u288 {
            limb0: 0x2eeda7fd4841ff878445cefa,
            limb1: 0x5d51ac6970ad2e893e3e1ee3,
            limb2: 0x19b9addf423b5fd3,
        },
        r1a0: u288 {
            limb0: 0xecf38213320a551dc6d4389a,
            limb1: 0xff40a2e79e5fa0dc38ebe94e,
            limb2: 0x1345bbefb7b38c24,
        },
        r1a1: u288 {
            limb0: 0x1c3c3294d8aba8c1a1bac857,
            limb1: 0xf2722236535a8e1eeb096b2e,
            limb2: 0x23ec6c0962bae987,
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
            limb0: 0x42848a48a251d27430c554e8,
            limb1: 0xa895ae5c52b6d0a4281ee92a,
            limb2: 0x1559a2a69c801989,
        },
        r0a1: u288 {
            limb0: 0xc38b9c405d91b388c232725,
            limb1: 0x11a108f61ad48037b4e97fe0,
            limb2: 0x1bb973553517d2bd,
        },
        r1a0: u288 {
            limb0: 0xf6e64a0c3095a040eea2821,
            limb1: 0xd653f5ac108affb8a49ec05e,
            limb2: 0x1c0008f2e9a91b13,
        },
        r1a1: u288 {
            limb0: 0xeb06ba38edbf8a64689a45b9,
            limb1: 0x332790eec93c41d0ce4bc7f8,
            limb2: 0x2289c21251f32818,
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
            limb0: 0x6a18706e90616252d11231d9,
            limb1: 0x6e45f82ecaee942a5c73a735,
            limb2: 0xba3eacea7b09aaf,
        },
        r0a1: u288 {
            limb0: 0x81343fe4b496cee226516fb7,
            limb1: 0x5b56d8778be504a6b8d07944,
            limb2: 0x97f5302caef8dde,
        },
        r1a0: u288 {
            limb0: 0xbf028acf251cb4e9a60c8cc2,
            limb1: 0xc8b71d8046d5e0cd68993960,
            limb2: 0x130c88633fc49230,
        },
        r1a1: u288 {
            limb0: 0x3cf90d739fe1803e0d61ccb7,
            limb1: 0x39d38388f454ba3fda0b6e7e,
            limb2: 0x2a12a3f7a0a21d84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x706e9ba5f32aafdc6c9987ca,
            limb1: 0x4ee07a321bc7897168c32f3,
            limb2: 0xd4495c375191248,
        },
        r0a1: u288 {
            limb0: 0x5852468d2f623298c097f79a,
            limb1: 0xa92f8a8f5b9ba7a85fe2439b,
            limb2: 0x20bb877d562b0266,
        },
        r1a0: u288 {
            limb0: 0x22fa318825f03a21420bb971,
            limb1: 0xad3e53b1447dfe94c85b6243,
            limb2: 0x2c61fc916c37c22f,
        },
        r1a1: u288 {
            limb0: 0xcc4b3c5650b6c326629cf79c,
            limb1: 0x51b7980ea20242c5858dab11,
            limb2: 0x3342f8a75fa8b14,
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
            limb0: 0xac7f485e22023141997fa06a,
            limb1: 0x51194c95870572c67c78aade,
            limb2: 0x2c91d223043bdd12,
        },
        r0a1: u288 {
            limb0: 0x23e59639e5e4815fdcf39124,
            limb1: 0x6bd7c1416609045d59afffc7,
            limb2: 0x2615aac0d760ac4,
        },
        r1a0: u288 {
            limb0: 0xd7be75d2a339a201d78c3ca3,
            limb1: 0x2a00e1842ae793126acfe1f1,
            limb2: 0x14d28fca06222b80,
        },
        r1a1: u288 {
            limb0: 0x206d4a8d6cbc06f033a18356,
            limb1: 0x318f1e9013c8ce5c11f2aeb,
            limb2: 0x77aa5b35ede2bc1,
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
            limb0: 0x40d27bd4f51b71e37e45521b,
            limb1: 0xca46f8331a9c90e21f1524ed,
            limb2: 0x1540abb4ede845eb,
        },
        r0a1: u288 {
            limb0: 0xe3a1d9e146538b37a324afe,
            limb1: 0xdf8283e7ddb68d661e43800d,
            limb2: 0x29545a82663ab288,
        },
        r1a0: u288 {
            limb0: 0xf2f588518202983575b52419,
            limb1: 0xbe3f416cf46ad1b92aadd117,
            limb2: 0x2c6cf7ba035baaaf,
        },
        r1a1: u288 {
            limb0: 0xfef09b3e8336b6f73db69096,
            limb1: 0x685d41873aeaf750aa213d66,
            limb2: 0x798c98964d72e28,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbbc3dcc9f6fcd6c6808835e2,
            limb1: 0xad4157f576c5719c46638763,
            limb2: 0x1ad994c66e2cf89d,
        },
        r0a1: u288 {
            limb0: 0x22ac4bdc45e6b2821dd0a604,
            limb1: 0xf006b7ae64f8cfa27b9a29de,
            limb2: 0x22947dfc414115b2,
        },
        r1a0: u288 {
            limb0: 0xf5e40dfd18f4b52b36dce863,
            limb1: 0x17a65fccefc1519d16c00389,
            limb2: 0x2b85bd456e3ad632,
        },
        r1a1: u288 {
            limb0: 0xf94d75e4e31c6c17c8cf6656,
            limb1: 0xc3e8cb2d2ea2bd9804021131,
            limb2: 0xf7cb44da92ad2e8,
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
            limb0: 0x9f465a47df2b3b4f5aa809de,
            limb1: 0xfbde6e2dc8db6281c7a63eae,
            limb2: 0x1944a201641663c8,
        },
        r0a1: u288 {
            limb0: 0xe4a41f4fe90fd2c1f08d0dd7,
            limb1: 0x97f5f1b27c1ca3a140e788b1,
            limb2: 0x2c5d4b538fc15080,
        },
        r1a0: u288 {
            limb0: 0xa865cb0889fee98a3072bf44,
            limb1: 0x63d8b44390eaf0c0bd49930b,
            limb2: 0x4f41b902bbc0d9e,
        },
        r1a1: u288 {
            limb0: 0xb8739c0699379cbf92d7de7c,
            limb1: 0xc7169a9134ea3f5c9ee16b7d,
            limb2: 0x2fae17f16ce5d351,
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
            limb0: 0x7c5c09a16e814e567f20db4a,
            limb1: 0x403c1940fd0bf024f7e230db,
            limb2: 0x1e36f9a025ed72e5,
        },
        r0a1: u288 {
            limb0: 0x3d730e490b9ca57649a2e871,
            limb1: 0xbe6384da10d872c7aa75b3ba,
            limb2: 0xd80c2a6b1a88d26,
        },
        r1a0: u288 {
            limb0: 0x403c702ceaade6847b6adb19,
            limb1: 0x9e96ecf4d92e4371b84c99d9,
            limb2: 0x64b240afa66373d,
        },
        r1a1: u288 {
            limb0: 0x23b4b4f72a939edd418dde53,
            limb1: 0x5a69f8aa85cdda7b3fba3137,
            limb2: 0x3016e1d7906eac18,
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
            limb0: 0xa28c5ae6e7448ce400ffc923,
            limb1: 0xd491509d2aa068a67c384fdb,
            limb2: 0x25e9a7b88c269fc2,
        },
        r0a1: u288 {
            limb0: 0x215835a42a318db649a58ceb,
            limb1: 0x2bad1cf97b878b26a8bfc8f3,
            limb2: 0x14c9a02ae1ae31ab,
        },
        r1a0: u288 {
            limb0: 0x17ff1b5674d2a02ea32828a2,
            limb1: 0xec09803d455e2dc140eb4cef,
            limb2: 0x9d7a29581d40bbb,
        },
        r1a1: u288 {
            limb0: 0x1d66c429e434025f233cbe6c,
            limb1: 0x5d4e7cede7ed554a73303881,
            limb2: 0xd22db591b628e0d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8af9a11ac40be1cae78c9f2a,
            limb1: 0xe109a09a2a9a684b957a7db9,
            limb2: 0x1fa7df9284815426,
        },
        r0a1: u288 {
            limb0: 0x128c5bfa498ac72d7cc894c0,
            limb1: 0xeb5fff208b852257b6bad56,
            limb2: 0x2890031c00a46589,
        },
        r1a0: u288 {
            limb0: 0x40bc4d2821da0ab6801ffec3,
            limb1: 0x69b3e87385629cf302a2eced,
            limb2: 0xf13d13e19b0ccf4,
        },
        r1a1: u288 {
            limb0: 0x2e8a44942885dbd1363c7231,
            limb1: 0x2b4034f61a24695b0686a4b6,
            limb2: 0x2fc9fc84497ca84b,
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
            limb0: 0x4359fb34549177b35d3d44d1,
            limb1: 0xd98b2ce26cfc94ffdd36462c,
            limb2: 0x25eaa81b5fad271f,
        },
        r0a1: u288 {
            limb0: 0x48669c45258ca15e04ba1c1,
            limb1: 0xf331087f8a615040777c2bdb,
            limb2: 0x275fa206b368d418,
        },
        r1a0: u288 {
            limb0: 0xdb7efcfe2b06f4b0f90640b,
            limb1: 0xbd97e2c7aea563f780318873,
            limb2: 0x2a5894827ffca9f8,
        },
        r1a1: u288 {
            limb0: 0xc9fe0b776e8c53af49e646be,
            limb1: 0x286bb293a708a1cfa7d1ddc0,
            limb2: 0xb03f18ec1f59260,
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
            limb0: 0xc037fa78a60a955bab210f68,
            limb1: 0xf01d93f45d4cc849676d8f7f,
            limb2: 0x153ae905e0515236,
        },
        r0a1: u288 {
            limb0: 0x802aae89cb740043f533eb0a,
            limb1: 0x6d9d241165c70490a581967e,
            limb2: 0x979719b4a61a311,
        },
        r1a0: u288 {
            limb0: 0x78d0d7c4f18b5dbeaca9bc64,
            limb1: 0xb3a24a498db9a20b50178213,
            limb2: 0x126b359c1b3bc0e8,
        },
        r1a1: u288 {
            limb0: 0xdc4d2269e700875b68922e76,
            limb1: 0x5a74d62071ad67cb2bc977ed,
            limb2: 0x11850d4b7fcc659c,
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
            limb0: 0x402a08ec32994a6aaedfab92,
            limb1: 0x51deec013393259284b4cccf,
            limb2: 0xf0eaee9759e5ed8,
        },
        r0a1: u288 {
            limb0: 0x43c2209bd5a23b55dfa2e1dd,
            limb1: 0x42115af6657dbeef6b433ea1,
            limb2: 0x1e50ce61162ef977,
        },
        r1a0: u288 {
            limb0: 0x29bc5d68d65262ce6b2e1c71,
            limb1: 0xcb2bf12552783cc3d0b01e65,
            limb2: 0x15cc5b68aee58147,
        },
        r1a1: u288 {
            limb0: 0xda300d35ba5a0e5b986cea72,
            limb1: 0x6a036782fac71d4815d1208e,
            limb2: 0x5de78e9001f8abe,
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
            limb0: 0x16cf6a3ebf9a54ee60c556e1,
            limb1: 0xc81878e2b163ac7d8e583648,
            limb2: 0x238506d5db62b726,
        },
        r0a1: u288 {
            limb0: 0xb16fbc1718bbfa95adf5454f,
            limb1: 0x5d6057fe716f1a1cae37b348,
            limb2: 0x17cfdb9f57034b34,
        },
        r1a0: u288 {
            limb0: 0xe7a7927294dabb3081a0171c,
            limb1: 0xd0446d11c8e3411ddbc3b435,
            limb2: 0x5df1e73d458640f,
        },
        r1a1: u288 {
            limb0: 0x7ad0d6b52e22094f3d92ee87,
            limb1: 0x69fdaa3c2b18abbc6ed7300b,
            limb2: 0xb0199e37754d6c3,
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
            limb0: 0xdc20818a9b94cf33f90bd668,
            limb1: 0x3aeab88018933ba061e67b35,
            limb2: 0x179b35c46fe98ac5,
        },
        r0a1: u288 {
            limb0: 0xd9df3038ebdf2186644139fe,
            limb1: 0x97502c3785fe4b711c410184,
            limb2: 0x2ea4a28406675665,
        },
        r1a0: u288 {
            limb0: 0xe9e2793d5147f7f07a3a89a,
            limb1: 0x7667f670759cf3e6e2943a71,
            limb2: 0x3a677f2f2dc39e,
        },
        r1a1: u288 {
            limb0: 0x81fda2af9f177627a2d9cef5,
            limb1: 0x997b2124e234fd3141b50e8d,
            limb2: 0x254e00e32396d63c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x240ae6f6bc530a6863f968f8,
            limb1: 0xa27357285368301e06783a9a,
            limb2: 0x1485f95715da4ae4,
        },
        r0a1: u288 {
            limb0: 0xfe3c5eaa808af6145285c8ad,
            limb1: 0x117d8774ece2ad22f04fdbf9,
            limb2: 0x9f6b5fa2421581b,
        },
        r1a0: u288 {
            limb0: 0x81ace02c758be1cf97a2c6c6,
            limb1: 0xffa5288eedf33b2cf261f660,
            limb2: 0x292ff7bde78bc16a,
        },
        r1a1: u288 {
            limb0: 0x7bb9cc52288d076fd886b6e5,
            limb1: 0x26ee6ea8c8dc8d84522e8b2d,
            limb2: 0x638c2fde9b51a52,
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
            limb0: 0x9f95468d9eede0ff14729b0d,
            limb1: 0x80d6d36df6d180fc12608ff1,
            limb2: 0x123517af6a1d050b,
        },
        r0a1: u288 {
            limb0: 0x9abd22ac1e5e9bf2ddaac6f5,
            limb1: 0xa0ac36e1fe619355375a4c48,
            limb2: 0x2f90489979a21aa4,
        },
        r1a0: u288 {
            limb0: 0x4f021ae3cd7d3ede9c8caa69,
            limb1: 0x3d1c22285e84da2a393e8238,
            limb2: 0x10640407737d5ef9,
        },
        r1a1: u288 {
            limb0: 0x4ef6756f4bbb5331a0e13798,
            limb1: 0x8a40c1ad3066c89d62405381,
            limb2: 0xc1935294b80c0cd,
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
            limb0: 0xb50d48c36528586cd2e6754d,
            limb1: 0x5822c240ee000d356a87084f,
            limb2: 0x181c368891018445,
        },
        r0a1: u288 {
            limb0: 0x29b822dae53fb409280e7afe,
            limb1: 0x18bc9f16a38038c2c65b8a7a,
            limb2: 0xe4c88ff966e936e,
        },
        r1a0: u288 {
            limb0: 0x92d78413f510af02085571c8,
            limb1: 0x7b06cfe59a30e4324a8e0657,
            limb2: 0x864e482948cb09a,
        },
        r1a1: u288 {
            limb0: 0x423af417f2c363326f773807,
            limb1: 0x90c1dc3b80ceba8715ac3712,
            limb2: 0x2a1b460f28a1a5bc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1ada86476247c215e10dacc4,
            limb1: 0xe289b233de855008777863c6,
            limb2: 0x2f7735785157ab17,
        },
        r0a1: u288 {
            limb0: 0xf9ce3fcffe4bafafa405f4c,
            limb1: 0x77522b4fcec475eedc1820b9,
            limb2: 0x1114cce52c670986,
        },
        r1a0: u288 {
            limb0: 0x4e97b5597f4ce1b3443b4db4,
            limb1: 0x5eb4be50964c96a227176363,
            limb2: 0xc3e4c03efad627,
        },
        r1a1: u288 {
            limb0: 0x580674ed5f8ff14acbf45a39,
            limb1: 0x2a61aed2f0526c252bad54ae,
            limb2: 0x22126987a40b21b1,
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
            limb0: 0x78a0a71338ceed31b3a46ea,
            limb1: 0xc19c9c44e36a85fe51ad9920,
            limb2: 0xaa5273cf9165cd1,
        },
        r0a1: u288 {
            limb0: 0xf93c6f6a781b432623c1f6ce,
            limb1: 0xaa3f877ac635c818f15d0a7,
            limb2: 0x28264885aa5cd99d,
        },
        r1a0: u288 {
            limb0: 0x9b932a69ef93954f374294d9,
            limb1: 0x6beb9f29ddf727ce61d26f61,
            limb2: 0xe1c8fdbcd49c312,
        },
        r1a1: u288 {
            limb0: 0xbace541bb04163fccbfdb697,
            limb1: 0x6830b45a68f3f1332f449b78,
            limb2: 0x1cd2a3a5bd83e33e,
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
            limb0: 0x2a4e4cdd35af072852a4840,
            limb1: 0x12d2b0944f1b6fea8a56011c,
            limb2: 0x21ec551e2fac63b0,
        },
        r0a1: u288 {
            limb0: 0xbc3c67f2e6e2819bdb9b8bc3,
            limb1: 0x99f5d8f7bc8606e265ea347e,
            limb2: 0x2bb66c15d3a25779,
        },
        r1a0: u288 {
            limb0: 0xca997652dd312a7c70186f3,
            limb1: 0x28ae7e9eb90066d1db214754,
            limb2: 0x2b40797e99a92222,
        },
        r1a1: u288 {
            limb0: 0xbbca3e89fc4fb054ed213107,
            limb1: 0x4c53a48b7033461a0276a800,
            limb2: 0x285dc749b22d407,
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
            limb0: 0xc909ace14ab8be5b7bdd3c30,
            limb1: 0x9e31cacf1ea9df7606fe34b9,
            limb2: 0x129bbde9d0945fb0,
        },
        r0a1: u288 {
            limb0: 0x2adaf743bb6a4fe4f3e363a1,
            limb1: 0xc5b6e232e653e1c8095b877e,
            limb2: 0x2667150d50f7d820,
        },
        r1a0: u288 {
            limb0: 0x2465da479084ee2f769c1fc5,
            limb1: 0xcfb587cf17e00e314574afae,
            limb2: 0x250ae7152a2c2f86,
        },
        r1a1: u288 {
            limb0: 0x430b942ef64d0232c031654e,
            limb1: 0x936fa3214e95353564ecf923,
            limb2: 0x12758cf547601d68,
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
            limb0: 0x9dd085cd6fd4d61c6ff3577,
            limb1: 0x119fff75a1680a758db55873,
            limb2: 0x2b925756d4e9d7c5,
        },
        r0a1: u288 {
            limb0: 0x819b9c4665533fc27b05d72e,
            limb1: 0x1d0e9245a14a1b11b0500dc3,
            limb2: 0x11ea7db58abcdd93,
        },
        r1a0: u288 {
            limb0: 0x87c32d8c2bcde13496a278e7,
            limb1: 0xff40862ad1a6bdfb3eb957cc,
            limb2: 0x1340eca6b51dbbb7,
        },
        r1a1: u288 {
            limb0: 0x73b568fdaa40728cb6eda676,
            limb1: 0xead9c088243afdd108024204,
            limb2: 0x18e933e626d922a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f496bad9eae0873fa189ee1,
            limb1: 0xba632bb9fbc3200f842461bc,
            limb2: 0x2184f56de1cc3583,
        },
        r0a1: u288 {
            limb0: 0x3a6328de14b7e826a3eb9beb,
            limb1: 0x92c77f4756e32e0232052542,
            limb2: 0x227c9cd8ee243d86,
        },
        r1a0: u288 {
            limb0: 0x9675ac84bec33abc35e152f,
            limb1: 0x42f94fef9bbe14ba5aa9eea3,
            limb2: 0xa91c5c2419f63ed,
        },
        r1a1: u288 {
            limb0: 0xb6b3633f41c3f16c5b04809f,
            limb1: 0x7ccd5f9eef125bec536787e7,
            limb2: 0x29f5f68f9e95cdc5,
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
            limb0: 0xd47c6886d78be4ee08487b81,
            limb1: 0x3675cdd19f5ca459fc448a71,
            limb2: 0xf8794704736d037,
        },
        r0a1: u288 {
            limb0: 0xe1de52c7cc373bd752e8b748,
            limb1: 0xd0bd39d59db48fb1d94df3f8,
            limb2: 0x1f6df75a7a292994,
        },
        r1a0: u288 {
            limb0: 0x2ccc3cdb5a0938d9972cdbcd,
            limb1: 0xfc553ec7a56791508301a128,
            limb2: 0x2b4965353692de8e,
        },
        r1a1: u288 {
            limb0: 0x41065213bbf481308b312732,
            limb1: 0x754b7668ced0b1d5a4d4e4b5,
            limb2: 0x1e9ae7ca9645fdc7,
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
            limb0: 0x6f38261c4e2cf414bd0b1ca,
            limb1: 0xbd441498da7ff8c0c6a83058,
            limb2: 0x61b7839caf5e958,
        },
        r0a1: u288 {
            limb0: 0x4cd793b16dcf52ce3d59e550,
            limb1: 0xbce885eae8617048027ebadb,
            limb2: 0x2703be46f8210b6f,
        },
        r1a0: u288 {
            limb0: 0x9fe128152f82a210b817ecfe,
            limb1: 0x5899188ad0b1d3d147416d45,
            limb2: 0x613176281f3725b,
        },
        r1a1: u288 {
            limb0: 0xafdf000b78600a3a0936b6bb,
            limb1: 0x61ca16dbde1e05b295f19bdd,
            limb2: 0x205c70fc868507ce,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5a8791ff026bc2624f6b0b5a,
            limb1: 0xd0f74c09188e7a27e6933732,
            limb2: 0x2b2b9cbf250d0316,
        },
        r0a1: u288 {
            limb0: 0x8558242a76fa9f4e6de11ed,
            limb1: 0x757de02ed485a89d381e6165,
            limb2: 0x1808e740f56dfe7b,
        },
        r1a0: u288 {
            limb0: 0x2e6f4252eb46097d76bf440e,
            limb1: 0xd8abdbf061f75b3c47c9f0b,
            limb2: 0x1998cd1c99e84bdb,
        },
        r1a1: u288 {
            limb0: 0x8f7f21412a92eac7bd45de50,
            limb1: 0x9ae82efe8b07c4a6c7d45fd3,
            limb2: 0x25b28aace59c8c80,
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
            limb0: 0x95432bd40e6dcf8e6db9b215,
            limb1: 0xc2616e9d43602501a34272e9,
            limb2: 0x14ac29dbf21061ac,
        },
        r0a1: u288 {
            limb0: 0x74ab82984351757645b316f8,
            limb1: 0xb7c007b956c9fc84cf2c71fe,
            limb2: 0x2770d849c56bfd17,
        },
        r1a0: u288 {
            limb0: 0x404a9464e2415bae4116825d,
            limb1: 0x801c636e56161a165aee0369,
            limb2: 0x27ccff79b3608250,
        },
        r1a1: u288 {
            limb0: 0x4af6ea58abaa9e44d93f570b,
            limb1: 0x1a3e126377042b5cdad2ee60,
            limb2: 0x1e7fb296296b5c1f,
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
            limb0: 0x89de58b7ec4f1a650b67d092,
            limb1: 0x682d19c1a28c145e991fc805,
            limb2: 0x15c6f1543721ef1b,
        },
        r0a1: u288 {
            limb0: 0x31fabe9deecfd6a55dadfd5,
            limb1: 0x4f5beed66f065a089e6f59a9,
            limb2: 0x1fe7bf169f2a0c6c,
        },
        r1a0: u288 {
            limb0: 0x68a4fcccbf871df740f0b5aa,
            limb1: 0xb1f2dcef417c96f11d781631,
            limb2: 0x1fd9e1aa84ba5a45,
        },
        r1a1: u288 {
            limb0: 0x57d26f7719dec106722f0f7f,
            limb1: 0x8fcfa37844a7318a5e749d0c,
            limb2: 0xb8d85e2bac4d436,
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
            limb0: 0x1929b2a25ab9b76138a80bdc,
            limb1: 0x95ca919d2d5b19f53df4cb4a,
            limb2: 0x13c7fd2111bbe721,
        },
        r0a1: u288 {
            limb0: 0xb149ea52c72e3097253a4253,
            limb1: 0xc10a931c25e6ac02d7467b53,
            limb2: 0x2019fb65e6afdc75,
        },
        r1a0: u288 {
            limb0: 0xbc619ba23f961915e0dc4f29,
            limb1: 0xa5105c6a07d4f2d85ea2e9ab,
            limb2: 0x29104f84a5867735,
        },
        r1a1: u288 {
            limb0: 0xf2dd219ffdd6c67c27ec6e9a,
            limb1: 0x4a88f08cf0dc93fa075b93df,
            limb2: 0x27b86a97334944e0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4d5cacc13f2de6d0c18d717,
            limb1: 0x6bf959da7f8dfe24a89d9798,
            limb2: 0x2ab84f4e2efd6fa,
        },
        r0a1: u288 {
            limb0: 0xaa82a3c4395eaac5e4abf4be,
            limb1: 0xb66382c55875fc8b5679bdcb,
            limb2: 0x1d8fb3b6e56e7b21,
        },
        r1a0: u288 {
            limb0: 0x21a49563662e187220e00115,
            limb1: 0x8cf2a6fceb0c18c70b86d649,
            limb2: 0x2167f8de7fbcc922,
        },
        r1a1: u288 {
            limb0: 0xc8477a1f52bb20a6ecbdc434,
            limb1: 0x2895a2b792ff85c252546b34,
            limb2: 0x200183a22eaefa3e,
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
            limb0: 0x1c7f8ac0736600ea1d7f6716,
            limb1: 0xf63c6909863a1601fb3392d2,
            limb2: 0x57432e52be94f80,
        },
        r0a1: u288 {
            limb0: 0xc8e73aab626a0b0fd3ac927f,
            limb1: 0xa148ea6c45ba048482abfac,
            limb2: 0xd1e64056e7e3398,
        },
        r1a0: u288 {
            limb0: 0x6c9d20b5eac5c7972e2bdd42,
            limb1: 0x753f1ef129949f448dc1ec90,
            limb2: 0x23293ae6520ebe2d,
        },
        r1a1: u288 {
            limb0: 0xfad14c78f8f7f493a5342cce,
            limb1: 0xeed5aa6bc177da8372aba2b9,
            limb2: 0x3f711c116593b16,
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
            limb0: 0x65504890fdb863171c798ab2,
            limb1: 0x896621c6a2bc82ca84a0043c,
            limb2: 0x2815d43670c8a81d,
        },
        r0a1: u288 {
            limb0: 0xab47b2fe4b935f482627cbdd,
            limb1: 0xb7dc74d312fbfd4723ec3ba3,
            limb2: 0x13edfd947b54a21a,
        },
        r1a0: u288 {
            limb0: 0xa9e6d1a5f783b6622e28fac0,
            limb1: 0x889172d4a7a8e193d2a817cd,
            limb2: 0x28cbcdbe3dc2bd6e,
        },
        r1a1: u288 {
            limb0: 0x5934412e68cb2cc10bd9b42d,
            limb1: 0x2856ca8087caeb23e3710588,
            limb2: 0x158e18fcc4dea4e6,
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
            limb0: 0x417f4b038e40a10a776ad80f,
            limb1: 0x9c0537bbfdb77600831d6911,
            limb2: 0x2429d721b327aa27,
        },
        r0a1: u288 {
            limb0: 0x9f34afe5b88ffdf235abab59,
            limb1: 0x116b9bdb71e5af784cc52803,
            limb2: 0x14903cfa6e6a47e3,
        },
        r1a0: u288 {
            limb0: 0x93f747de2609bfa6d04db9fd,
            limb1: 0x8ab5d726c8e574a0d03bc614,
            limb2: 0x1e0759541e2e4a6b,
        },
        r1a1: u288 {
            limb0: 0x409f4b2c6187d51ceec0cc7a,
            limb1: 0xd0a1941a0b72de9d6087f20d,
            limb2: 0x2c87464286088565,
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
            limb0: 0xff5dae0799273bde158e3f47,
            limb1: 0xd91d17c3ae32f89149db1599,
            limb2: 0x224fc7d754a22b99,
        },
        r0a1: u288 {
            limb0: 0x401593ee2ad5ab1493d2501a,
            limb1: 0xd06413d772cdab91d7eaca0,
            limb2: 0x2d9d47389fe61a0,
        },
        r1a0: u288 {
            limb0: 0x75343a0e417f4fe2d7ae051,
            limb1: 0xddf9303ecc51615b38640e4c,
            limb2: 0x2f32f1f3c5d04dcc,
        },
        r1a1: u288 {
            limb0: 0xcd330e3dc55219a9b3c5ed9d,
            limb1: 0xe91e64314284d6258103b824,
            limb2: 0x2017896962ebbc0c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x10cd8bb89325e297147dbfbf,
            limb1: 0x76e388f1e733eed6527c45d3,
            limb2: 0x282b58e502b68f1f,
        },
        r0a1: u288 {
            limb0: 0x11dacf48af2fae841b995d92,
            limb1: 0x2dca9bc2b3209f34c21641c4,
            limb2: 0x2146da61900e4f9f,
        },
        r1a0: u288 {
            limb0: 0xb05986f9d7af328e67a2fec7,
            limb1: 0xc5eb92c322002fac45e7a853,
            limb2: 0x1e94892a11eaeded,
        },
        r1a1: u288 {
            limb0: 0x342b987c5af4028eee9eb275,
            limb1: 0xe80e95643cf27ee4ebfa06db,
            limb2: 0x617ac3e0e1fc37f,
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
            limb0: 0x4c7eb046b27f3e14d710d9c6,
            limb1: 0x45f3267f7b5817acf952a02,
            limb2: 0x180ede28675e531,
        },
        r0a1: u288 {
            limb0: 0xc0e1f3aef3fd22087483c013,
            limb1: 0xce206eda2cda03ef6bb3018,
            limb2: 0x272af0252dafe6ea,
        },
        r1a0: u288 {
            limb0: 0x45c022fdb8dd61d1df25a71a,
            limb1: 0xcba06a264831dcbc3ddc5aab,
            limb2: 0x1bec2ae6b7ca65bb,
        },
        r1a1: u288 {
            limb0: 0xdb65af4cf809a8710b4e15a1,
            limb1: 0x526e2f8d9661f5e4701829de,
            limb2: 0xc18d25207aaed89,
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
            limb0: 0xce1e32f8e7f6b7313e633023,
            limb1: 0x489b6c9c46e40e27ed37d32c,
            limb2: 0x29717327b19f5e53,
        },
        r0a1: u288 {
            limb0: 0x4c656979f7d8bac835c6d1f9,
            limb1: 0x4c19f5d478d90b26a3c0427e,
            limb2: 0x18bdf20175278942,
        },
        r1a0: u288 {
            limb0: 0x7eb39c219d7d58d31e7e86d,
            limb1: 0x69b8e8bd6ac6e95fc5c8e8a4,
            limb2: 0x17b8d01351817df,
        },
        r1a1: u288 {
            limb0: 0x7a2de99d270d15e13b51f185,
            limb1: 0xa5ac43f1e63edf174e67ee6d,
            limb2: 0x14af44d8520fa4e6,
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
            limb0: 0x54ced45ad631bc50fd7883bf,
            limb1: 0x378cd6cc632a2e7a3d4ade25,
            limb2: 0x14353613568aea3c,
        },
        r0a1: u288 {
            limb0: 0x276adda36f938791c8c83052,
            limb1: 0x2ddd701447264f87bdc35e0c,
            limb2: 0xbaae34e56acffcd,
        },
        r1a0: u288 {
            limb0: 0x861ed8a1dfa46f94fe3d1389,
            limb1: 0x44e22cafb2555f9a679662c1,
            limb2: 0x29fc55336a5b4155,
        },
        r1a1: u288 {
            limb0: 0xd29febbb402c679c0a371d69,
            limb1: 0xd68b941adbf35268893d4852,
            limb2: 0xebedeca82bd656f,
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
            limb0: 0x3c5fb396865deddba89221d3,
            limb1: 0x11d7207603b68e96e0725092,
            limb2: 0x2e9f61813f185555,
        },
        r0a1: u288 {
            limb0: 0xbe620274d37d31e19427679,
            limb1: 0x569d9f8f8c7494f7cb6eaf71,
            limb2: 0x976e92a753539f9,
        },
        r1a0: u288 {
            limb0: 0xfcc3eacb63d38138706c83db,
            limb1: 0x17baf5d7c3dc85d6efc3415a,
            limb2: 0x3766443c7febd39,
        },
        r1a1: u288 {
            limb0: 0x759e1e839c13bda2093bd046,
            limb1: 0x6143d675348763c8b4ed00ea,
            limb2: 0x86af039a510bfd3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xea80aa7ac59aa55e5f2cbed4,
            limb1: 0xd3396b13f0fa0eb6a890f833,
            limb2: 0x77692c53596e1d5,
        },
        r0a1: u288 {
            limb0: 0x1ff76f1a775ec4bfdd21f2bb,
            limb1: 0xec896b03cfe185504cfe4cf9,
            limb2: 0x21c43ab1373da094,
        },
        r1a0: u288 {
            limb0: 0x90fcbd8a7c4eae7e73da0a69,
            limb1: 0x6dbcd4e0f0426b870de5cae0,
            limb2: 0x3051273b4e95ac6f,
        },
        r1a1: u288 {
            limb0: 0x4555900e65cb740708e7f11b,
            limb1: 0x232279c5bafba429c66f37f9,
            limb2: 0x142e458250e68651,
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
            limb0: 0x15c9816c023228cb4d3cfe9,
            limb1: 0x5d97cb26ac1f44b1a9dc650e,
            limb2: 0x1430a6d0a1ffe957,
        },
        r0a1: u288 {
            limb0: 0x6d461ddeb42ea3802f847e99,
            limb1: 0x36f7a3a3711bfb29d02af2c5,
            limb2: 0x11e1318f82b974d7,
        },
        r1a0: u288 {
            limb0: 0x8f52aea905b862f378a03ac8,
            limb1: 0xae386ca16af12c213b8d0bda,
            limb2: 0x177bafac6badb6ff,
        },
        r1a1: u288 {
            limb0: 0xa722f2bef9d0f79d24078a16,
            limb1: 0x52ad161da5b674259315982d,
            limb2: 0xfdf2a4c03a3edc1,
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
            limb0: 0xac9f58419194a8cad6341de1,
            limb1: 0x6b24f977f8810185228f3c78,
            limb2: 0x11fce951bee5d32b,
        },
        r0a1: u288 {
            limb0: 0x200b43494d0e97a54b980082,
            limb1: 0x3dcb5505d4ac80155c34e15b,
            limb2: 0x738cff2ef14366b,
        },
        r1a0: u288 {
            limb0: 0x96c249f80fd17571a28ac3b0,
            limb1: 0x2fb2408551fc6e802e90d9b2,
            limb2: 0x2d1b92997251b582,
        },
        r1a1: u288 {
            limb0: 0x239c55c8c9dfeba03e663072,
            limb1: 0xf778fbb0bc39792f9ab59c29,
            limb2: 0x1de2bbb7bf05ddfa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6785bff6afcdfd1b30b7cc1,
            limb1: 0x9db5fbb4e935e3102b8c3a7b,
            limb2: 0x1d18275afea8b5ee,
        },
        r0a1: u288 {
            limb0: 0xbaeb05c0057ab5d1fd95c59a,
            limb1: 0xf26d59ab242f5e51c3ba35ea,
            limb2: 0xf95dd08d15e409e,
        },
        r1a0: u288 {
            limb0: 0xc7cea5b43ed19f6624c32e74,
            limb1: 0x54d0e1ccc6577b59cd0f3563,
            limb2: 0x173de8a504698e6c,
        },
        r1a1: u288 {
            limb0: 0x8156fa9f8d061c64b93ab99,
            limb1: 0xe87ec211547c38ebb04df6a4,
            limb2: 0x2f078dbdc2fe1aca,
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
            limb0: 0x89a94d026649fd6189455f74,
            limb1: 0xf03bf7e66be9b61747ede2fb,
            limb2: 0x135b42ee8957e29c,
        },
        r0a1: u288 {
            limb0: 0x62d2f0ea2532d26561382c1f,
            limb1: 0x1da9a1f83dfc7f508b66222c,
            limb2: 0x1cc6d6424fdaa46e,
        },
        r1a0: u288 {
            limb0: 0x6152fdc6d5948680a29827a1,
            limb1: 0x79f755357c5c4f1c64f9eed4,
            limb2: 0x2ca5d9e4c767956b,
        },
        r1a1: u288 {
            limb0: 0xb1d06fa6293f3d4b2044d728,
            limb1: 0x18c900ba0fae43f9121755b2,
            limb2: 0x228d772e4a0f940a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xedf5da7580bec4abe6f2cd94,
            limb1: 0x42758b3042107db0899fb131,
            limb2: 0x1b11091ca75e99c6,
        },
        r0a1: u288 {
            limb0: 0xbffc324dbcc1261bbca5574a,
            limb1: 0x5ad92ffaebdd7652cd7f5d5b,
            limb2: 0x443cfe8d6ccd46d,
        },
        r1a0: u288 {
            limb0: 0xbce4b5310cfb669921755d48,
            limb1: 0x4577ec8cb29331054d8ef3fb,
            limb2: 0x147143d3b86fe14b,
        },
        r1a1: u288 {
            limb0: 0xef6984399186b6977c05c245,
            limb1: 0x5f8d5919dc5c7a3bdeaed440,
            limb2: 0x19ef4720ce5364c9,
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
            limb0: 0xf31dd251558fcac051d173ae,
            limb1: 0x94d8de27f10a0b96b2998290,
            limb2: 0xc35bb63dfe45a32,
        },
        r0a1: u288 {
            limb0: 0x5309520d0f6cce768ce737b7,
            limb1: 0xf8ce66ce9459e1d65cafd22,
            limb2: 0x1e92ce8675d206a6,
        },
        r1a0: u288 {
            limb0: 0x9bcf6a3b5dab679ccf80d2b9,
            limb1: 0x86a5d92dba4621e270927dc0,
            limb2: 0x27971317de6b28b7,
        },
        r1a1: u288 {
            limb0: 0x83a97caa4a5e87f23e6a827b,
            limb1: 0x618595825404911b87d9cf65,
            limb2: 0x1dace039a5c78f1,
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
            limb0: 0x448ff20d3b6b2fb589f4a5f8,
            limb1: 0x45d5fc26bbc1f5f6a6719844,
            limb2: 0x174a7dea92e4817,
        },
        r0a1: u288 {
            limb0: 0x968447fb810fa676bd00b4cd,
            limb1: 0xb0096237a56674d4d4619b71,
            limb2: 0x70268cbe9c15101,
        },
        r1a0: u288 {
            limb0: 0x84bcccda50cfd1b3c8b5fed9,
            limb1: 0xcc1dddf4f76fc6f34e92df8c,
            limb2: 0x14d57bc0a9d690bb,
        },
        r1a1: u288 {
            limb0: 0xd3e6d31bad4583cf07d972e1,
            limb1: 0x427cb3885e567454981163f0,
            limb2: 0xb753332888d5772,
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
            limb0: 0x2fc194b9566956654f56e66a,
            limb1: 0x7782f3f2c18f1ed997db7048,
            limb2: 0x1a5ee430ba8ef4f,
        },
        r0a1: u288 {
            limb0: 0x706d2d20485039414e6f6f82,
            limb1: 0x6ec3357ce9c6db8e034ec094,
            limb2: 0x2a00fd5e86aa3109,
        },
        r1a0: u288 {
            limb0: 0x23cdae4067d16980f3b96dc5,
            limb1: 0xd263d2a84369c2dfc60d2602,
            limb2: 0x16302dfe9c990dcc,
        },
        r1a1: u288 {
            limb0: 0xbc34bdea81dbca316535dad0,
            limb1: 0x308f4c6409e1d729c0776754,
            limb2: 0x22b0fa420ece668b,
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
            limb0: 0x91ec744afa8990007a81a435,
            limb1: 0xc9accb98c73f72ec1a52a9e2,
            limb2: 0xde695a2be601c7,
        },
        r0a1: u288 {
            limb0: 0x494375b224d1e465b7bce575,
            limb1: 0xf1c9ff4f28398ed1a2f50905,
            limb2: 0x1aa13087788be113,
        },
        r1a0: u288 {
            limb0: 0xe1549c865c70740eac420187,
            limb1: 0x461dc19d6fab4da16c29c4f4,
            limb2: 0x1b267132b69ac7af,
        },
        r1a1: u288 {
            limb0: 0xdaf82c567fd84b2a163ae5b1,
            limb1: 0x6eb4aa43620e32266ccfadf6,
            limb2: 0x4911c164f69503f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x970beac0b968ae4a90687434,
            limb1: 0x1c275b114c42f39bdfa55b7d,
            limb2: 0x18ae5cdf9ff7a795,
        },
        r0a1: u288 {
            limb0: 0x91c500f8431c71881617240c,
            limb1: 0x2ba1d6138d6720577631f6ed,
            limb2: 0x16669b0dbd687161,
        },
        r1a0: u288 {
            limb0: 0x49272bf3efa441c59e977af,
            limb1: 0xffe189bb812d4f4c66d39df0,
            limb2: 0x146f908c68a63f60,
        },
        r1a1: u288 {
            limb0: 0x713d35d5f05f244c2d5ccea1,
            limb1: 0x28a0251eb65a897aa4b79435,
            limb2: 0x1abaa5b39967c4a4,
        },
    },
];

