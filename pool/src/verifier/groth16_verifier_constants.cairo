use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x6f89d230892ed67cd61a64ab,
            limb1: 0xda8be32a2b540ba7c82a17e9,
            limb2: 0x294b263c6999efb9,
        },
        w1: u288 {
            limb0: 0x5dd15517a26c8ddbd388c738,
            limb1: 0xbb2f985b1dfaa951672efea6,
            limb2: 0x2d68c016e8040729,
        },
        w2: u288 {
            limb0: 0x27dcb1d1e2f93a1abf94c8f9,
            limb1: 0xd8cfc5e9d308a18062e91b70,
            limb2: 0x2363a2d9f8c21d11,
        },
        w3: u288 {
            limb0: 0x8627861e7ab951f33096d6c0,
            limb1: 0x93f552ffce5d3e6abcfab689,
            limb2: 0x595ad4d421f2824,
        },
        w4: u288 {
            limb0: 0x25db74184ab8163917d445ed,
            limb1: 0xa88b72e2e863bf095338fb98,
            limb2: 0x2c3d81776a96182d,
        },
        w5: u288 {
            limb0: 0x3272122598a24beea059e84f,
            limb1: 0x644a68a400db219a32ff91e,
            limb2: 0x152621926c0b253e,
        },
        w6: u288 {
            limb0: 0x5e6b365c931a92888b369e97,
            limb1: 0x2c66b9255a2c446db47255a7,
            limb2: 0x13ebd4fec105a37,
        },
        w7: u288 {
            limb0: 0x26dc413d9c270aec3dd19af6,
            limb1: 0xf5db3b58f637fb1ae266d4ed,
            limb2: 0x259e1f5f3cbd603a,
        },
        w8: u288 {
            limb0: 0x1c03588352648e52a04cf78,
            limb1: 0xd53da3a5e69b8178ecce929f,
            limb2: 0x1148ce881d2f188d,
        },
        w9: u288 {
            limb0: 0xaeec6659769351f06aa52c95,
            limb1: 0x296231538aa6f55dd348542e,
            limb2: 0x2ae8eb5e669b1e86,
        },
        w10: u288 {
            limb0: 0x48b6b4a9d4f6785a9526ba2b,
            limb1: 0xd7a4cfdfe38c4f4335965215,
            limb2: 0x17ea04f788ac8e95,
        },
        w11: u288 {
            limb0: 0xc70ab9482501c9e196a1fec8,
            limb1: 0xa8c486951abf12be7c05c598,
            limb2: 0x73b6661e13e4333,
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
            limb0: 0xa28930e64a61cf886b80804a,
            limb1: 0xb764ebfcaa0adea53b8a04b1,
            limb2: 0x51fc8e5c8fec8b2,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x62c979bf825a48cb7a7eb832,
            limb1: 0x2563f9cd345909f0a7d9cbc9,
            limb2: 0x2e04a9dec8e0a348,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x53aa582f2cbacb82a21b8a01,
            limb1: 0x75dd5e2a51ea5b20807bc10,
            limb2: 0x3032ef9821d18a9a,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0xa253f3d2cf41660eaf3b4c57,
            limb1: 0xc52e6ef1dde3c3127b56ac39,
            limb2: 0x9e6372ddf478707,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x542b2c55b10e1ce404df4bef,
            limb1: 0x2168b09a8be8f53e653ff9f7,
            limb2: 0x220096e6d9e414a4,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1132b5f306d681655e62d0f8,
            limb1: 0x84d3cf8834adf60d8bd76a94,
            limb2: 0xb4cfa63f95f6262,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x61bc123d9ed80a24c8f36efb,
            limb1: 0xffc52260b13f2a8730d7ac4,
            limb2: 0x206d841d8e88b0eb,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x4e2f24b0aa8f164823a874e8,
            limb1: 0xcf2d841fb3438ec8a5e6e232,
            limb2: 0x11c125493dd250a6,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf89fa492c6e79962888f607b,
            limb1: 0x2a7eee2cafdd9e472fd12680,
            limb2: 0x13d9e8c42f718c3d,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x85e448193664c5cda2eab35b,
            limb1: 0x4cb36631b36930784b37cc03,
            limb2: 0x1e5f1ba5330ff7b3,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xde42c797125edcc3335263c1,
            limb1: 0x911c5e34eef09d4a62137ac6,
            limb2: 0x21b200fafec955c2,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xbd24ef78f9f8d6f6a1d8deea,
            limb1: 0x732c2afab26b8f0721ab170d,
            limb2: 0x10a58663d3104faf,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x61057861d56b01eccd16d713,
            limb1: 0xd09f3d10f8add71d7dae5d40,
            limb2: 0x228c18d40006ee33,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x751b0ad07b4991544f4e2b45,
            limb1: 0xdfe783b9dcc88bffbb15146d,
            limb2: 0x27bfb91b28c2a9f2,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x14b4cc639750061877e985a5,
            limb1: 0x3a1c05ac3ecc81104276d135,
            limb2: 0x2c6e780c2d89e8b4,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1de6ebe1a1bdb9c450f399e1,
            limb1: 0x196280f0d5bfdda1ff0db19b,
            limb2: 0xd21b3cd0acdfc92,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x2cc9738012970dd2714e12b6,
            limb1: 0x908609d43d047c202124199f,
            limb2: 0x16c2d7a6f90ec05e,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x97991e737c8be70a66f25874,
            limb1: 0x861f8de4b61c6dd0748b08c6,
            limb2: 0xc45f97f53df5136,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xcb53c3d81b1ec8cd86c5d4c9,
            limb1: 0x91f0858209a25f328cb01108,
            limb2: 0x22e6cdd9bbeb8dad,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xbc7a5050d9ad60b15dc2c509,
            limb1: 0xd21009b0fb4cee2c52468013,
            limb2: 0x27480b959d452c13,
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
            limb0: 0x2936588119291b39aa5f33bb,
            limb1: 0xccb14cea03ffb0d1bec7ddc1,
            limb2: 0x2a798bdcc68ba6fd,
        },
        r0a1: u288 {
            limb0: 0xfdffb9b2f98ca42964dafd41,
            limb1: 0xcf3cd39a397e2b54642af35a,
            limb2: 0x15c7c92d4f506c93,
        },
        r1a0: u288 {
            limb0: 0xf57f355f482ab9f46ce8726a,
            limb1: 0xcf90cdb00f7f951f17bdf897,
            limb2: 0x68f2911a90a78f0,
        },
        r1a1: u288 {
            limb0: 0x7ab703dee6b551e5515571e7,
            limb1: 0x9742200684ac1590bc3e3816,
            limb2: 0x28b5209067865634,
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
            limb0: 0x3f3b720c22f770dd2e1dc98c,
            limb1: 0xeb9ef8cc7d81a78bd8b98cd0,
            limb2: 0x5eac2961aa5f92b,
        },
        r0a1: u288 {
            limb0: 0x6a7210da4293e7ed73a20006,
            limb1: 0xe913721c48032d0933567736,
            limb2: 0x1a9c854591e13395,
        },
        r1a0: u288 {
            limb0: 0x72f2952df3f5d2226b948add,
            limb1: 0xe8bf78067201c33e7fc371f9,
            limb2: 0x29d5256138272738,
        },
        r1a1: u288 {
            limb0: 0xedbac6ae556b3a3187278b60,
            limb1: 0x210e25affcd542ccdb43327a,
            limb2: 0x7af2de279ab49f5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdd2bb24f8ff5f38cf190576e,
            limb1: 0xea42207ed7446d6ef13bf357,
            limb2: 0x28d4c6c3c631dfe0,
        },
        r0a1: u288 {
            limb0: 0x210964d3a2544cf7842b23c0,
            limb1: 0x4114812ccba194937512214b,
            limb2: 0x2937ed235f6c22f,
        },
        r1a0: u288 {
            limb0: 0xb6bb84c96b456022c6937807,
            limb1: 0x657acd22cbced3639e5d6e60,
            limb2: 0x107631d0d2ff9293,
        },
        r1a1: u288 {
            limb0: 0xab0ba21e0b5a0477e158574f,
            limb1: 0x33468c681e45815cc24f5527,
            limb2: 0x1f16c80aead06b71,
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
            limb0: 0x35802c089261f63e3a720981,
            limb1: 0xacabc232a6518bc0af7a5578,
            limb2: 0x146157c8d43b6085,
        },
        r0a1: u288 {
            limb0: 0x91b5f9eb5bb048d7eb556cc3,
            limb1: 0xfd6b32512e080f8a27772a1e,
            limb2: 0x230828fb8188ecd6,
        },
        r1a0: u288 {
            limb0: 0x59980725397b79193dd428ca,
            limb1: 0xcc61913d8a4800578e33d5a3,
            limb2: 0x954846bc8c65e0f,
        },
        r1a1: u288 {
            limb0: 0xbb6cbaa22fe51ba536824f71,
            limb1: 0x1cdc1506ba52272afb8733ae,
            limb2: 0x2309b37d54f26fda,
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
            limb0: 0x5860b3defc196846cda0463f,
            limb1: 0x38d04bf37035cb5b4828043b,
            limb2: 0x428c773ea18432c,
        },
        r0a1: u288 {
            limb0: 0x9f586ee668aa5489c7b1f65c,
            limb1: 0x10b7c02060b8b0bfd093c715,
            limb2: 0xa6e5e1757cdbf04,
        },
        r1a0: u288 {
            limb0: 0xd57622f8e63cb060e1321e04,
            limb1: 0x29a7f29ce69e0754f47a6bd2,
            limb2: 0x2d5deb900cf9c2a7,
        },
        r1a1: u288 {
            limb0: 0x74cf8c6846039f99eb0a77d5,
            limb1: 0x55d3e9c4daf90121a19e4516,
            limb2: 0x1b8ab607357df539,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x294305ff7ab2e7bf07cbd70f,
            limb1: 0x9668626cda931e7030150f8d,
            limb2: 0xe8901c3f0cfe7f0,
        },
        r0a1: u288 {
            limb0: 0x110bb2e10725bc5611fd7805,
            limb1: 0x9a42f4a4ac4158b2700dbd1c,
            limb2: 0x2fa62e0cf4c7c934,
        },
        r1a0: u288 {
            limb0: 0xb9cbf19452e8cc3d6eed255e,
            limb1: 0x18328d5e3d2a29a1c22e18b3,
            limb2: 0x1830386043178cc9,
        },
        r1a1: u288 {
            limb0: 0xb92c0e3fc555f0f8150f288a,
            limb1: 0x2eeccbbeedfa9a8862c4d4a3,
            limb2: 0xc3f0ab429baec1e,
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
            limb0: 0x90b4ea0403a5565012627f1d,
            limb1: 0x803bfa4ba2b935738bc05f18,
            limb2: 0x182087f14cf5b520,
        },
        r0a1: u288 {
            limb0: 0x2aa15ed342b7af2f4989256a,
            limb1: 0xc5e5fe9ca4be81eb0f8f6b36,
            limb2: 0x9a7b262df4c55ee,
        },
        r1a0: u288 {
            limb0: 0x95ed79aaadc855785f67136,
            limb1: 0x2cedc9203296b24b6106c3b9,
            limb2: 0x1a88f207e4b8cde1,
        },
        r1a1: u288 {
            limb0: 0x5c0441439f704e78e464d249,
            limb1: 0x213beaade6aa9700074ddb84,
            limb2: 0x1648fe6c8f6aff7a,
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
            limb0: 0xc2e59a9afb23f55efd7f7526,
            limb1: 0x7530abe94c01079b28b9f01d,
            limb2: 0x2527a7b1bf3c2aa1,
        },
        r0a1: u288 {
            limb0: 0x9139e791bec940a2752006dd,
            limb1: 0xee7e06e1318dd2b0e9760aba,
            limb2: 0x6391c9e3b8c0681,
        },
        r1a0: u288 {
            limb0: 0xf38319aa553b1c40556d3bcd,
            limb1: 0x7bf886e02ac4bb034ed264c,
            limb2: 0xbc534e267d7a5c2,
        },
        r1a1: u288 {
            limb0: 0xfa57723c9cd300ead50bb44f,
            limb1: 0xd0719993b878627afd5c317b,
            limb2: 0x266a8d879f22cd9,
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
            limb0: 0x4bfdadd76ff5af40f9e426c5,
            limb1: 0x8ddd0e478a92da7d96479d96,
            limb2: 0x1315cc8683df09e0,
        },
        r0a1: u288 {
            limb0: 0xff3a282d04c09c12dd4ea253,
            limb1: 0xaead604396b2c99b7948dfd3,
            limb2: 0x42172e85e5de792,
        },
        r1a0: u288 {
            limb0: 0xa877fd854b167ff628811c11,
            limb1: 0x183b642b68ae29294de54e39,
            limb2: 0x2b76cf7f94b8ce2c,
        },
        r1a1: u288 {
            limb0: 0x419151b7a63996a6921e15ba,
            limb1: 0xfcc158189c06a7bbf5e3b631,
            limb2: 0xc60af8f56fc6773,
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
            limb0: 0x1992b05cf80e3a9678f2b436,
            limb1: 0x6f5cdaa17debfc2a2dd1af81,
            limb2: 0x147f630fd96a7020,
        },
        r0a1: u288 {
            limb0: 0x5ee940ccc20f61af82058ac7,
            limb1: 0xf1941da52384a422f6902a71,
            limb2: 0x23230e9fab6ceb71,
        },
        r1a0: u288 {
            limb0: 0x93f1ab431ff65599a68f269b,
            limb1: 0x38043b7297aaa5866435791,
            limb2: 0x25c42596c894f543,
        },
        r1a1: u288 {
            limb0: 0x43a66d525d37dffe33a1c20,
            limb1: 0xde38d426d39c5130186bd27b,
            limb2: 0x995cd83de5dd629,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d04b2f45c1b6a2401a67c09,
            limb1: 0xaf8768f6cc52f04ce386db1e,
            limb2: 0x1ff027cbf4c8b1ff,
        },
        r0a1: u288 {
            limb0: 0x64d5ce24e0399d64c70f3126,
            limb1: 0xd8a36dfa68555a4f27e2731b,
            limb2: 0x11d87c3c1a54c7e1,
        },
        r1a0: u288 {
            limb0: 0xad72f5aeeefb125d3a06c674,
            limb1: 0xbe7353d5528f0848ed59359b,
            limb2: 0x2a13adba2d26a00,
        },
        r1a1: u288 {
            limb0: 0xab1845f999e8c1cfd8661486,
            limb1: 0xa7a9d970816f96596ada90e,
            limb2: 0x1a2376997732d387,
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
            limb0: 0xf053087a11234ce401b31b8f,
            limb1: 0x9dd4b82c626c8a00f70a52d9,
            limb2: 0x2dc618b7ce073dca,
        },
        r0a1: u288 {
            limb0: 0x278806428466a74e55277ff4,
            limb1: 0x49c7b95a388a0d8d7be60828,
            limb2: 0x129f92b297110fb0,
        },
        r1a0: u288 {
            limb0: 0x8b72babb200d0977b9f3a989,
            limb1: 0x6f8fd2e1492eb8d6606f507b,
            limb2: 0x7d7df81c3999773,
        },
        r1a1: u288 {
            limb0: 0xaaaea0eb989b3f3cad0a8098,
            limb1: 0x48c24ecd4a0cbdf851e13091,
            limb2: 0x127c953f4ddd13c6,
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
            limb0: 0xac95c46e11d58f1ce43463d3,
            limb1: 0xdd991ed1b219385d8c54dc1e,
            limb2: 0x25992d17d848fd4,
        },
        r0a1: u288 {
            limb0: 0x2db99de9c20e054779443354,
            limb1: 0xc331fe8c18c2fb4c03a098f7,
            limb2: 0xad9bda8dd081ee0,
        },
        r1a0: u288 {
            limb0: 0x6824cd318d0d9a0dbb17607b,
            limb1: 0xd45266e7a694b28b40fa0425,
            limb2: 0xfa2c458acdd0396,
        },
        r1a1: u288 {
            limb0: 0x1d6b8fb85c8e4ec0a131d499,
            limb1: 0x4d0fca5a53cd57add6a1f200,
            limb2: 0xe5c9fc1b8cfc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5c489871932c7e65475877ab,
            limb1: 0x43c12a2198d6b872058b99df,
            limb2: 0x14699ef0d8f6e496,
        },
        r0a1: u288 {
            limb0: 0xc9c92f0fb8984e27e47e21dd,
            limb1: 0xe62651c84eaf3d2d625d15b9,
            limb2: 0x303ac47ef2c2e401,
        },
        r1a0: u288 {
            limb0: 0xa7161bb7dadc55fdd914cf4a,
            limb1: 0xa2a1940405ca915dda696c41,
            limb2: 0x1822961902fb8b3,
        },
        r1a1: u288 {
            limb0: 0xb8d139aa53701b4eb7c60798,
            limb1: 0xe8dd446ec70f69ea012478ae,
            limb2: 0xfcb56fd78917214,
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
            limb0: 0xa8f60ab5a1be07bc8b436c6f,
            limb1: 0x49fe0f4b0dec5b00818c7571,
            limb2: 0x41e586b44245aa2,
        },
        r0a1: u288 {
            limb0: 0x8964db88f47ebaaf0911f8,
            limb1: 0xe6f6f26a1e6d96395109ca53,
            limb2: 0x275526a44ec104a,
        },
        r1a0: u288 {
            limb0: 0x7d1b5366f1a1af65219a477f,
            limb1: 0xb84e93ede5c18a9763bf69d6,
            limb2: 0x21078d933c0dfa5c,
        },
        r1a1: u288 {
            limb0: 0x98e61692ff6249110c115db,
            limb1: 0x48b68d2848a1e8c4fd7a73eb,
            limb2: 0xe44499a5c130ca1,
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
            limb0: 0x9c0808f5e1cffa1075bb3e23,
            limb1: 0xbfa2120efb5e571757e45a2b,
            limb2: 0x1407aecc3f82fdd9,
        },
        r0a1: u288 {
            limb0: 0xf06bbdf861757a5177264f5b,
            limb1: 0xa849e49c7ae335c53589ab84,
            limb2: 0xf27d8496e503609,
        },
        r1a0: u288 {
            limb0: 0x90623b72bd4bf9dc826bc58b,
            limb1: 0xe4e1dc9ed9a5ede7602b5d25,
            limb2: 0x20f277111b8dbb29,
        },
        r1a1: u288 {
            limb0: 0x41f91a54448ca033c942fe44,
            limb1: 0x127fb39990a86d49d017f4cc,
            limb2: 0x2ca9bcf4c9238434,
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
            limb0: 0x95f316978a5edcb07a0ec1c7,
            limb1: 0x4ceaea65c8cfecd413e549e1,
            limb2: 0x2f620fff8378db89,
        },
        r0a1: u288 {
            limb0: 0xcea7e43b35781f71d9518e60,
            limb1: 0xa880e8b15753c7dcec1187d,
            limb2: 0x2d995ef61310a66d,
        },
        r1a0: u288 {
            limb0: 0x2cd6b2f5f77e1a247c1580b7,
            limb1: 0x4d09c853d53012fc86dc8a87,
            limb2: 0xda83e597853d93d,
        },
        r1a1: u288 {
            limb0: 0x92ea5c5f5dc58125b3977376,
            limb1: 0x68c2ade3121a976c98252788,
            limb2: 0xe913debf0c7ddb6,
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
            limb0: 0xe410e4ebcaa47a8f3bf5c9d6,
            limb1: 0x76acbf15d07be53210a3a22e,
            limb2: 0x162839db4b0b9917,
        },
        r0a1: u288 {
            limb0: 0x8632cd504c51014538929207,
            limb1: 0x75c9221e010f560cf609add7,
            limb2: 0x303e90ffbbfb7311,
        },
        r1a0: u288 {
            limb0: 0xeeb8469f88836980f982ea5e,
            limb1: 0x34d051f7bf7fac5b61d6fd83,
            limb2: 0x151b253f051614e9,
        },
        r1a1: u288 {
            limb0: 0x6dfe9378e9712d5f019d395b,
            limb1: 0x156d0dde6b2b5225e7baf77f,
            limb2: 0x2437482101fcb2d8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7cfaffeed16119b1428e796f,
            limb1: 0x274ca445e0384c078112b8c,
            limb2: 0x2a4d3f653f190c01,
        },
        r0a1: u288 {
            limb0: 0xb701a749ec0c0104c46a55b4,
            limb1: 0x67058aa797aaa95c8dcfb064,
            limb2: 0x27c65af8c588ea57,
        },
        r1a0: u288 {
            limb0: 0x4be9c7d0faa355690f1052c7,
            limb1: 0x7ea300fcec729412a5c9c028,
            limb2: 0x183edb750a244cad,
        },
        r1a1: u288 {
            limb0: 0xb84ed97974ef449c7fddbba8,
            limb1: 0x8f04ca8d0078ed4666c2975,
            limb2: 0xe5a5273fbcfe114,
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
            limb0: 0x45c2116afe9deafeea57c182,
            limb1: 0xc25264ae6d64b275e3102424,
            limb2: 0x1301b4fa21ac55cd,
        },
        r0a1: u288 {
            limb0: 0x14bb129f785516bdffed6320,
            limb1: 0x14c1a0dc13a1d54b00c6acd1,
            limb2: 0x1caf497e0f3eb73b,
        },
        r1a0: u288 {
            limb0: 0x7fe4c5cab38d9fc303e79e55,
            limb1: 0xb2930f28a8a04850731eca7a,
            limb2: 0x1192063bd9ed6e79,
        },
        r1a1: u288 {
            limb0: 0x8f123f8d30d6fc1dad5c745b,
            limb1: 0xab83d30210aeda220f9fa0e5,
            limb2: 0x3cf028a229adfaa,
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
            limb0: 0xfba4b6d5f99fe4cea6559f98,
            limb1: 0x42affe10a62f7f2e27bff34a,
            limb2: 0x1e14dbc0ee1edd73,
        },
        r0a1: u288 {
            limb0: 0xc60a36c183ac35a42ec74bb,
            limb1: 0xedd7ff65fededc4cb5b00e14,
            limb2: 0x2cfd8547756150a4,
        },
        r1a0: u288 {
            limb0: 0x128ac5696cfbf46fc5b5b3ce,
            limb1: 0xce39de37620b794df038d05e,
            limb2: 0x2400ecff011c3b30,
        },
        r1a1: u288 {
            limb0: 0x33c872387099d64f3ff27e28,
            limb1: 0xf23613366199c7b04265f06,
            limb2: 0x1bad3e16c4248e6,
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
            limb0: 0xdf7cf83818c07dd227979dd7,
            limb1: 0x68e39693a6c2681692bda071,
            limb2: 0xb00ae4ab5b474ed,
        },
        r0a1: u288 {
            limb0: 0x43034e25493b6afcde2f2477,
            limb1: 0x76e9a91a7cb0d7e7f602eb0d,
            limb2: 0x1b76949299a0663c,
        },
        r1a0: u288 {
            limb0: 0x477cfcd90c68faa027638589,
            limb1: 0x6ab75ce4ac6acfa4bf7e92aa,
            limb2: 0x2325fb1ef4653383,
        },
        r1a1: u288 {
            limb0: 0x7e0f613aaad687773c7f6394,
            limb1: 0x1b0c879c7ba0b39280f78730,
            limb2: 0x24d22716e2419c90,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47e43ecbd04540c8c8d0a518,
            limb1: 0x85588a1f8fd7f7055467cf47,
            limb2: 0x182113e4e8fb4960,
        },
        r0a1: u288 {
            limb0: 0xde4e7ea13cbf1467aaf649ab,
            limb1: 0x64078941b36296f9bd5dacc2,
            limb2: 0xa9da4d712665967,
        },
        r1a0: u288 {
            limb0: 0x94e1e03cfbcd5765d0f948be,
            limb1: 0xcdf9ce660da4b47f70ad686e,
            limb2: 0x4c317777da03d06,
        },
        r1a1: u288 {
            limb0: 0x2c709f4e6016bc942d742bc4,
            limb1: 0x3bd0b20da894927f70655831,
            limb2: 0xf21fa1f04583182,
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
            limb0: 0xe9d7f60384b6bf9afb9e78f6,
            limb1: 0x18e8e339a0ecc07c6ecdeaa1,
            limb2: 0x18a805cedcbb55d9,
        },
        r0a1: u288 {
            limb0: 0xf4fccb6714487e386aba286d,
            limb1: 0xe808b9f0b0a472227928106e,
            limb2: 0x26827e94dc8ac0d9,
        },
        r1a0: u288 {
            limb0: 0x38073e14c05c05eefc61cb06,
            limb1: 0x6cc03d627e92bb98e3660d5f,
            limb2: 0x2801abb3cc6f1343,
        },
        r1a1: u288 {
            limb0: 0x12a67e50e38230826bae356,
            limb1: 0x3ecdf5beec75ca92f008dc57,
            limb2: 0x253a9bf9fd600bf7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x566663ddfd17f5348dc5d08,
            limb1: 0xdb059ec4f37272830b3c641d,
            limb2: 0x12fa57b79d1bb3ba,
        },
        r0a1: u288 {
            limb0: 0xa1a89712109f7e9a6b406b03,
            limb1: 0xf7342c686118678fd83f6fc4,
            limb2: 0x852ef5225627dfd,
        },
        r1a0: u288 {
            limb0: 0x94d3b80bd9a268d9a2fc3a5c,
            limb1: 0xa60e5b603aebcf3b45a2750a,
            limb2: 0x16c20e7a7cf8d4f3,
        },
        r1a1: u288 {
            limb0: 0x231a2ef6e66efbf45b5df663,
            limb1: 0xab331af15b3c3caf5b57e324,
            limb2: 0x14291c18595c48f5,
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
            limb0: 0xe8df34b5c4683acc40c57cb9,
            limb1: 0x67ed5cf089bdd2784aee8f4d,
            limb2: 0x550061531478516,
        },
        r0a1: u288 {
            limb0: 0x327d654e071a248b6cc2e718,
            limb1: 0xfd2b583503da8d10398a0039,
            limb2: 0xad5ade38fc325a9,
        },
        r1a0: u288 {
            limb0: 0x9e35ebb58aa2475ca8891e54,
            limb1: 0x4add7133c28f2c90bf66b304,
            limb2: 0x1690660a55abaee3,
        },
        r1a1: u288 {
            limb0: 0x3d7fc39f2ff4c88061192f99,
            limb1: 0x64023be4e6a8a70d82102f10,
            limb2: 0x1e8047bee750ae8c,
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
            limb0: 0x575be4663206cffe1818fb12,
            limb1: 0xaa12fb936323afbff936f450,
            limb2: 0x2eb4d5aab578815e,
        },
        r0a1: u288 {
            limb0: 0x8df9b19ff250b3e5dfbb9942,
            limb1: 0x897d860ab5962cf086308294,
            limb2: 0x24ad7abf4dcf153b,
        },
        r1a0: u288 {
            limb0: 0xfb20bf6fc76eceaee81b5934,
            limb1: 0xa1e3514e40788b04d0c69776,
            limb2: 0x223c4ff8096a3ba0,
        },
        r1a1: u288 {
            limb0: 0xf372172ff62b64f23ffa3196,
            limb1: 0x6e8a7f7029d1832e04bd4a1a,
            limb2: 0x169dd2a32fa3acb1,
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
            limb0: 0x901174bb4c12083fd0cba0d1,
            limb1: 0x9f69748ffb58f4a5ff1f8d41,
            limb2: 0xcf42ba3189351e3,
        },
        r0a1: u288 {
            limb0: 0x9ae02ae96baa2983e68bb0ac,
            limb1: 0xc9951957521f6889ba519202,
            limb2: 0x83cadaf8da71ce9,
        },
        r1a0: u288 {
            limb0: 0xbc89c69086a928abb40a0ed9,
            limb1: 0x3c906f5bcc8daf838392df63,
            limb2: 0x2f3cf2a811cbb691,
        },
        r1a1: u288 {
            limb0: 0x88b15928bb22d0cac5e0b691,
            limb1: 0xe4c373430a14db2aaa8291b2,
            limb2: 0xf37a04e9f5853bc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72a0b2f91038518fbedb0f30,
            limb1: 0x75b9a9ff5c989a633340a217,
            limb2: 0x2d458fab77d15ddf,
        },
        r0a1: u288 {
            limb0: 0xbfdaaa03d8e5ba54ed4b3de2,
            limb1: 0xbb0364b7964f0e1a17e04ab0,
            limb2: 0x2f54ef223d512167,
        },
        r1a0: u288 {
            limb0: 0xa217ed3bc458eeefb10727bc,
            limb1: 0x91c5c1f2e973519bb7ccf100,
            limb2: 0x286c491241122c57,
        },
        r1a1: u288 {
            limb0: 0x2e583df82d1a6d8460c599dd,
            limb1: 0xd189360a8d2ab9208e72c3fc,
            limb2: 0x14b719581ba74dc2,
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
            limb0: 0xd1dbd9024074a2d4f0a9f0e4,
            limb1: 0xbd52def5e396a52805ec64c1,
            limb2: 0x25b2eea496da2185,
        },
        r0a1: u288 {
            limb0: 0x6cf282693a33c059e3f71f1f,
            limb1: 0x5ae1373dc99107f1ffa5af70,
            limb2: 0x16df74f2b3a5c52,
        },
        r1a0: u288 {
            limb0: 0xd8174d3e21b9164d1c1bc8c0,
            limb1: 0x490597f1425606b8dd290e5b,
            limb2: 0x71791f341a3f85a,
        },
        r1a1: u288 {
            limb0: 0x7c493913f59005c2070349a3,
            limb1: 0xd96ac51e50d04bee6bf148eb,
            limb2: 0x10dc10fdb17201d8,
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
            limb0: 0x77a1f4ce41bf76a7ddda084c,
            limb1: 0xa10380c59a05b8ec105176e3,
            limb2: 0x1bcfad13b8640f7,
        },
        r0a1: u288 {
            limb0: 0xc19e11c38c1df58dc27bbf84,
            limb1: 0xca79432db71a50d708bcf223,
            limb2: 0x2de294a534ce939e,
        },
        r1a0: u288 {
            limb0: 0xc0263174e606786a5f973c71,
            limb1: 0xe941d4fac69f82a1e95bda2,
            limb2: 0x15d8aa36f73a4f0e,
        },
        r1a1: u288 {
            limb0: 0x793427f9f62b6e19bf4bde7c,
            limb1: 0x4aa107681cb120d1498b989f,
            limb2: 0x124589f02a93d395,
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
            limb0: 0x87e7d2e478271bbae422f6a7,
            limb1: 0x662899131078e37babdb7d11,
            limb2: 0x9d1f65e7fd6ca,
        },
        r0a1: u288 {
            limb0: 0x1c1ede0da956bc7d5e99206b,
            limb1: 0xed394a9f6ee485c88719e2a4,
            limb2: 0x85bb344a8b42d04,
        },
        r1a0: u288 {
            limb0: 0xdf326484b2d8423fb1462295,
            limb1: 0xe627992c541b9ef829ee64a9,
            limb2: 0x205c9fe555f7b2c8,
        },
        r1a1: u288 {
            limb0: 0x70a6380b80f7782390148c51,
            limb1: 0xbc05ae85c0aa264f2494a171,
            limb2: 0x2fc7df73e881952e,
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
            limb0: 0x49e9f21a0864bdd3d7c08fad,
            limb1: 0xcf553c4b4f33b49018af2a82,
            limb2: 0x228b91a9eebbce93,
        },
        r0a1: u288 {
            limb0: 0xfd020279f3fcee0494b1e8a0,
            limb1: 0xda19f6cbfa7e9c36f127f02d,
            limb2: 0x4827df765031fa5,
        },
        r1a0: u288 {
            limb0: 0xe463068873770d4ab0b4b6a0,
            limb1: 0x325595fbbc2c845775666db2,
            limb2: 0xf554cdc53dd53bf,
        },
        r1a1: u288 {
            limb0: 0x29a81cd914b664c58c85562d,
            limb1: 0x793ca904e3dcfc92acda6426,
            limb2: 0x2f0e3153f8c09af8,
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
            limb0: 0xdf0be01f729b7ceec55b6332,
            limb1: 0x90381320037fb8ed2c235262,
            limb2: 0x2b500be8ed01c444,
        },
        r0a1: u288 {
            limb0: 0xefe5d915698478a2d0603ee8,
            limb1: 0x5a7dd37a0ab3c8747b521781,
            limb2: 0x2587f056c98471c4,
        },
        r1a0: u288 {
            limb0: 0xd03af2191f8843baef54780c,
            limb1: 0x34ace5b4acdd06fd7629d1b9,
            limb2: 0xdb7b374bc9884cd,
        },
        r1a1: u288 {
            limb0: 0x6b8ed8025553dc6d09a336c7,
            limb1: 0x73b6e64e9ba0f4069196b393,
            limb2: 0x174560a6ea702a16,
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
            limb0: 0x96574468b5df74e92fb09227,
            limb1: 0x3ac6d323042954f6fdf79676,
            limb2: 0xc14efad244f68a8,
        },
        r0a1: u288 {
            limb0: 0x8eae016b463a97284e59dfaa,
            limb1: 0xe991f14ef154a95939f5c7ec,
            limb2: 0xcbaa591f2b93546,
        },
        r1a0: u288 {
            limb0: 0xd4650dd73e22368b9387c57a,
            limb1: 0xcebb898cb988f3205cf35d97,
            limb2: 0x3012fb07f25adc57,
        },
        r1a1: u288 {
            limb0: 0x1612b685b1d5a6cdb0890f31,
            limb1: 0x11ae7c60d75ad566bba86ffd,
            limb2: 0x2690075806de7e7d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x893f3a0a88880e6470a7ac92,
            limb1: 0xd520347b3c7f5d68aabd97f9,
            limb2: 0x96d88d5fcb1695b,
        },
        r0a1: u288 {
            limb0: 0xce6ff55bf9e133727b7d5e7,
            limb1: 0x9f49d4304a8053d94cafb6ad,
            limb2: 0x16b10ae9e0f4b9d7,
        },
        r1a0: u288 {
            limb0: 0x4a153675a2df7b20b04d91bd,
            limb1: 0x304ddbe50c7c7394c2432bb0,
            limb2: 0x2fbad48ba16e03be,
        },
        r1a1: u288 {
            limb0: 0x9a7353d0b40edfee5b02066b,
            limb1: 0x1877dea30019f929e89fc5ce,
            limb2: 0x1fe98ba969ac2ef9,
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
            limb0: 0x8163fdbfee09f9ab91d26f9e,
            limb1: 0xe81f9e8f547b51aabbfd29c6,
            limb2: 0x139ee20605304f5d,
        },
        r0a1: u288 {
            limb0: 0x5192c89db9f6d772cabd3822,
            limb1: 0x34e0d5065aa5ea529cb6e1c7,
            limb2: 0x1132485f9a8e9f7c,
        },
        r1a0: u288 {
            limb0: 0x2fb7319a4445433ee17abc29,
            limb1: 0x1491160bb151b1412fd3eaec,
            limb2: 0x16321adcb26ecb9b,
        },
        r1a1: u288 {
            limb0: 0x6a2f4d2a6405e2e30af8d36b,
            limb1: 0x6ee7cb4e6ffb0db71c3f3cf6,
            limb2: 0x259582c76d30994d,
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
            limb0: 0xe684e2e409b37e4ca2534d88,
            limb1: 0xa772214e2a72b8193c20bdea,
            limb2: 0x11d15e48a33ed063,
        },
        r0a1: u288 {
            limb0: 0x31938173af4d1b2909a94b1f,
            limb1: 0xbb9587520d85bc7b41b139ee,
            limb2: 0x2fa8feeb3279d87f,
        },
        r1a0: u288 {
            limb0: 0x3801b03b8a339345fcceeda8,
            limb1: 0xd9c637cec8b27258dc446d1e,
            limb2: 0x2b3e193f51b619f6,
        },
        r1a1: u288 {
            limb0: 0x527d46ef168edf59769ced9b,
            limb1: 0xf75ac0f77032317129da0ce6,
            limb2: 0x2c227e2d9d21ec2f,
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
            limb0: 0x5fbdb9973ad3ef0d02f7d3f9,
            limb1: 0x73275b8f7121dcadcce37ce1,
            limb2: 0x17c14baaf8b56c41,
        },
        r0a1: u288 {
            limb0: 0x7b17efe72d5f8537eb6b1bdc,
            limb1: 0x73e75c6e621de4c1212089db,
            limb2: 0x1a2d3316d31fdd63,
        },
        r1a0: u288 {
            limb0: 0x7c5f90a4146b538b1b22da95,
            limb1: 0xae436fbac4c7fa28bcebaa94,
            limb2: 0x2d952f0e25ce491,
        },
        r1a1: u288 {
            limb0: 0xd87f853604cda8d7d37d3758,
            limb1: 0xe9331b585eefdb676b028e24,
            limb2: 0x2dd3c82818fd763a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f446f54cc12e2933fa75be5,
            limb1: 0xec9140db46e1aa94b4ad8d95,
            limb2: 0x81187c63645cc9d,
        },
        r0a1: u288 {
            limb0: 0x576f8faacb3b3ce9c4ccf068,
            limb1: 0x9ecf7cbb138e558e841a9c52,
            limb2: 0x29b8642265f17395,
        },
        r1a0: u288 {
            limb0: 0x28582efacef23c8cc858c7fe,
            limb1: 0xcfdea28b936afecadb00ce8f,
            limb2: 0x24e34012ce9356e,
        },
        r1a1: u288 {
            limb0: 0x8a3748d20f341699389624fa,
            limb1: 0xa5f29461820a898d23bedba6,
            limb2: 0x282a67e120fade9d,
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
            limb0: 0x23fdd6c0750ba3f29f41faea,
            limb1: 0x8d5f265f93ba8fa183897be5,
            limb2: 0x1448950e99f0de31,
        },
        r0a1: u288 {
            limb0: 0xfde679821d1f266c46b9b61,
            limb1: 0x6e31fc06dc5a01b29e87a1e4,
            limb2: 0x1ca93cea3658d8a0,
        },
        r1a0: u288 {
            limb0: 0x19b0f25097e81244228c7263,
            limb1: 0xb62b61663ae43093d7139142,
            limb2: 0x1aa1731d5efed3ad,
        },
        r1a1: u288 {
            limb0: 0xcd56315c6af8769df28bd924,
            limb1: 0x96529c9b41303bb167ba342b,
            limb2: 0x1ff45eafacc13624,
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
            limb0: 0xe4c8e35a92adda215554ca90,
            limb1: 0xe0371e13fcf194c55badc737,
            limb2: 0x2004af6bf4a5055c,
        },
        r0a1: u288 {
            limb0: 0x3866353b0a667f1b3dae3f19,
            limb1: 0x5b0351248286bf156e51f209,
            limb2: 0x104be82eaf724e33,
        },
        r1a0: u288 {
            limb0: 0xf86de4fb67d5bd6daf45748d,
            limb1: 0x5586f4331aead464c06ee9b9,
            limb2: 0x1dae024b9603fef7,
        },
        r1a1: u288 {
            limb0: 0x42be01f25936405648565a8,
            limb1: 0x5142be0a45c7d6a417618af0,
            limb2: 0x1438bbfe432c51b2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe459549a3a58e777ff2f2bee,
            limb1: 0x339481eb0af8cb2b48e5e0ea,
            limb2: 0x45e55be97e892d2,
        },
        r0a1: u288 {
            limb0: 0x9767ecf71eb4d19c4444493f,
            limb1: 0xd4c98ce973b2100924e16c87,
            limb2: 0x23838244223c339e,
        },
        r1a0: u288 {
            limb0: 0x758771159278053b1936a12e,
            limb1: 0x52aa4135155f072c10f6dd1e,
            limb2: 0x29302fc66ced1d64,
        },
        r1a1: u288 {
            limb0: 0x2ede23de01dd4865dcef9f16,
            limb1: 0xa0ed53b0adcdddec8f9b77bd,
            limb2: 0x16b21e7aa9c85b9d,
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
            limb0: 0x7cc44cfb3d36b4881e2ee2ad,
            limb1: 0x3a2d55241d7b6c7500fff3e6,
            limb2: 0x104e5cc502b0f807,
        },
        r0a1: u288 {
            limb0: 0x9df96495d5b918e6166fe772,
            limb1: 0x7206d0a6bcd1f33f0fa3e967,
            limb2: 0x1dcbe7db7b82e061,
        },
        r1a0: u288 {
            limb0: 0x62851f9778e5877647028e53,
            limb1: 0xaae2812d3c1694a6ee2b1df0,
            limb2: 0x1bac83d54cf8555e,
        },
        r1a1: u288 {
            limb0: 0x9c31587cad5e56e810ce704d,
            limb1: 0x3790d2540e313324a26b5682,
            limb2: 0x1c33f98a4148ffcb,
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
            limb0: 0x52866fe92a1d5e98449e0cfa,
            limb1: 0xc07c7a2a27658db804be9cfe,
            limb2: 0x184c074b09092cdc,
        },
        r0a1: u288 {
            limb0: 0xa0688cddeaf70fd6dd852e8d,
            limb1: 0xf830a182d6601ab8f50218d3,
            limb2: 0x27c5bafd146cfbbe,
        },
        r1a0: u288 {
            limb0: 0x99575e09bf99fb5d93126c06,
            limb1: 0x41bd98dd0cb80e045896dbb2,
            limb2: 0x1d7351eeb79cd34a,
        },
        r1a1: u288 {
            limb0: 0x8f16a43eb4d04da89953ff26,
            limb1: 0xdce79b82435c667a58c9d25e,
            limb2: 0x21d32364785cf7c,
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
            limb0: 0x1df0ee94f7e15417d1d41c1d,
            limb1: 0x8470dcf1aca4e1d35c7f64dd,
            limb2: 0x12ff504227f9f624,
        },
        r0a1: u288 {
            limb0: 0x81784f35026f9dd28d5ea0dd,
            limb1: 0x7694a1405a0424a5b31a98af,
            limb2: 0x2c3266e886e06278,
        },
        r1a0: u288 {
            limb0: 0xa6d0eceb8e22c56c39657026,
            limb1: 0x952c29632e495348d497009c,
            limb2: 0x8c8152240818ab,
        },
        r1a1: u288 {
            limb0: 0xbe8e70010dafde85f3ca2a63,
            limb1: 0x768877f4c5490ab27a7886b7,
            limb2: 0x10e463b66507f65,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7ed7b5f8c33e9a9461e9dab7,
            limb1: 0x1229087dee1ba62b8d4c779b,
            limb2: 0x290905a7cbe3f1e9,
        },
        r0a1: u288 {
            limb0: 0x5cda1540937dcbb6369af085,
            limb1: 0xbd74e35e92b1f7425a4741,
            limb2: 0x62e7142cc4232f6,
        },
        r1a0: u288 {
            limb0: 0x85530f5e781492affd684d51,
            limb1: 0x27cd15b8d52965c4c3c9550c,
            limb2: 0xaa89b9dc24dfa68,
        },
        r1a1: u288 {
            limb0: 0xb7a8d901fece7e101e9be9ef,
            limb1: 0x31e8610985807f96fc60c655,
            limb2: 0x238949c51e4d5960,
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
            limb0: 0xfdb889581a3166bc4da3c641,
            limb1: 0x63975a297558a9ac12e0d52e,
            limb2: 0x267719cf796812e,
        },
        r0a1: u288 {
            limb0: 0x6d210458bee110935da907dd,
            limb1: 0x75ce3524886a01b96957cb02,
            limb2: 0x28289a8cdcab3dd4,
        },
        r1a0: u288 {
            limb0: 0x42fd5e15f3c3f16abbbf1323,
            limb1: 0xa19eb3295c8de83e973994ab,
            limb2: 0x217e3bde0efc0c7e,
        },
        r1a1: u288 {
            limb0: 0x5fb8b4be2f4bf0b64d726d,
            limb1: 0x5d1e770b1e957ba9247dd70b,
            limb2: 0x68995249f7da7ce,
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
            limb0: 0x53110179195dd2bdf97c1109,
            limb1: 0x6a56a2130b04f0badf9e8df2,
            limb2: 0x1cb50c2e4cc847d5,
        },
        r0a1: u288 {
            limb0: 0xb33d327df904f9995f140b6b,
            limb1: 0xa00ea7da83bc02159a0ccd5,
            limb2: 0x2ade1ff5cf870e07,
        },
        r1a0: u288 {
            limb0: 0x3f817ccc0cc37be6942dfdf2,
            limb1: 0x8b142581530b128d4fe4b9f3,
            limb2: 0xdbe55410bba816c,
        },
        r1a1: u288 {
            limb0: 0x41f82f9bfc248752e845a250,
            limb1: 0xcce94576e1a28568bea12ff0,
            limb2: 0x125b798709a7c97c,
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
            limb0: 0xc0e5d5aa401e1b3ecbc3f20e,
            limb1: 0xacbc8b321f3a7c7c96038384,
            limb2: 0x30628ca801e7a7b9,
        },
        r0a1: u288 {
            limb0: 0x2bd0e5e0b385392394e137e6,
            limb1: 0xdbad104c41dbb07250575eee,
            limb2: 0x289cd1f74616c380,
        },
        r1a0: u288 {
            limb0: 0xd376ae07355e745b2aec45f2,
            limb1: 0xc6c7ddd0a8e7b5e21a513c27,
            limb2: 0x227acab4be7f7994,
        },
        r1a1: u288 {
            limb0: 0xd56219ac5ec9bbbc60270579,
            limb1: 0x3270966509f567ea88190eaf,
            limb2: 0x108263d53a1170f3,
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
            limb0: 0xf56c43f3da75eb8032d800d4,
            limb1: 0x3d96c4a22f235fbb1f0bd17b,
            limb2: 0x5408e510f4453ac,
        },
        r0a1: u288 {
            limb0: 0x7d95f950fec58493d04a3d2f,
            limb1: 0xee98afece8b155b8ba802b03,
            limb2: 0x1ede4fed45e32bd2,
        },
        r1a0: u288 {
            limb0: 0x8caad352e235d81a1b16d5be,
            limb1: 0xf350482e0b80e84cc22e2a5a,
            limb2: 0xef6d57c2e9898e,
        },
        r1a1: u288 {
            limb0: 0x3bb09dd2fbe706ff9767fb1a,
            limb1: 0x9493a876646bb2ca50fd87b0,
            limb2: 0x2dea6e8fb6eb9fbb,
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
            limb0: 0x2782211ae33439d908164986,
            limb1: 0x29c54bcdb4925cf2562386e2,
            limb2: 0x15d096d94a26c17f,
        },
        r0a1: u288 {
            limb0: 0xd49c0d97f6c9149b6ea5a4d1,
            limb1: 0xa02fce7c53afdf26fa5dab84,
            limb2: 0x1f5c4e93479680c,
        },
        r1a0: u288 {
            limb0: 0x1005b8ffc8fca5fd0f5d696c,
            limb1: 0x2388ef16a6b65ed13e511ad2,
            limb2: 0x3be9308e5cd4aa3,
        },
        r1a1: u288 {
            limb0: 0xfd356b92d1649f5634945dd6,
            limb1: 0x6055b1d4c41110918c7106e3,
            limb2: 0x2b20f7d69139af03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x450b555d810d3cd9af4bf255,
            limb1: 0xf75d576aff487a0e2d7d7ee8,
            limb2: 0x2e3fb469892360e4,
        },
        r0a1: u288 {
            limb0: 0xac8ad7604f3483a1cb07df30,
            limb1: 0xb8ae65124333409e393ea4e1,
            limb2: 0x1987e6e85e0e2aed,
        },
        r1a0: u288 {
            limb0: 0x36bd22a49c1fbca86d9f450c,
            limb1: 0x120a69f74838d6a7c771bdc6,
            limb2: 0x26d08c522a87042b,
        },
        r1a1: u288 {
            limb0: 0x14555843fa54b6a8f7efb2e4,
            limb1: 0x5792c722fa58dc98d221033e,
            limb2: 0x1667aad566ff4dd0,
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
            limb0: 0x472887ea1fcf056d76961704,
            limb1: 0x201952489f35e727395b5627,
            limb2: 0x1be525cb4a4a72a1,
        },
        r0a1: u288 {
            limb0: 0xaf72e002d80410431354900e,
            limb1: 0x727457b2ea66ab3d96ceb4bf,
            limb2: 0x1f7d2a79dc7ec726,
        },
        r1a0: u288 {
            limb0: 0x3cb7d27ff6e3324d178c898,
            limb1: 0xa175f6fc100e7b9f31f98487,
            limb2: 0xa934c1132caddc9,
        },
        r1a1: u288 {
            limb0: 0xda9460c9ac955b1e4251b345,
            limb1: 0x9c7b12c232c7eaaa37385e33,
            limb2: 0x1f7f2d1433c2e4a9,
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
            limb0: 0x91fd8e56d81cf2cb9978b70d,
            limb1: 0x75985332072a91682da99e94,
            limb2: 0x14cb83d29ba11c2,
        },
        r0a1: u288 {
            limb0: 0x6e8978e90440b2be1fb44984,
            limb1: 0xe6fdf6ace36ecd095cdbad2,
            limb2: 0x1eed0e7650675388,
        },
        r1a0: u288 {
            limb0: 0xed947d69f1852a1551a242aa,
            limb1: 0xc9ccc32ad2ee96b8f791a809,
            limb2: 0x3499fef78fe6138,
        },
        r1a1: u288 {
            limb0: 0x42f897574ebad0eff6fd1af5,
            limb1: 0x12a17e8fae407a679e930e8d,
            limb2: 0x27029d1696e4c7e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d76ec5912fc730cc05e0311,
            limb1: 0xa3e4ab9079d9e1af7cef28ef,
            limb2: 0x5872d422559d404,
        },
        r0a1: u288 {
            limb0: 0x750d8abb4bc7762f008e4345,
            limb1: 0x423d10d4a5fd931142adb427,
            limb2: 0x2790c6065a22a9e1,
        },
        r1a0: u288 {
            limb0: 0x5c1b66ecc6e70a562832b013,
            limb1: 0x2299b650953ad44de80b3623,
            limb2: 0x1444f451c3b058b2,
        },
        r1a1: u288 {
            limb0: 0x8b0b8e546c62a351d4c353d5,
            limb1: 0xca8c430fcb513cd4457a0f51,
            limb2: 0x1f1dd50468b720ba,
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
            limb0: 0xff9992b03f42f28a098e8080,
            limb1: 0x5e306deddcf2a7396fab4544,
            limb2: 0x305ac6531852216d,
        },
        r0a1: u288 {
            limb0: 0x4d7d528304a4a574c1bb08e3,
            limb1: 0x7f4c968d88b57210bd85e07e,
            limb2: 0xd7c716c1d0357a4,
        },
        r1a0: u288 {
            limb0: 0xf92aae65bfe95e690ae09158,
            limb1: 0xa3a83aaa31dc02787db636ec,
            limb2: 0xa7ce5007d076d88,
        },
        r1a1: u288 {
            limb0: 0xd888938a5e9056bd41382db,
            limb1: 0xc5eca870f43081017c68867c,
            limb2: 0x22d829250449e613,
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
            limb0: 0xc07badf86fccf8241386e5fc,
            limb1: 0xd7ba7e9f8b837c983b71a34f,
            limb2: 0x5b6d8c42ce91155,
        },
        r0a1: u288 {
            limb0: 0xbaf287510b2048480fd6075a,
            limb1: 0xeef450e20e3ae2ae84e53de1,
            limb2: 0x24db555374068580,
        },
        r1a0: u288 {
            limb0: 0x60e20268775d2c0002eb6c54,
            limb1: 0x964af7ee69820906bf73d288,
            limb2: 0x28191df98172fbc6,
        },
        r1a1: u288 {
            limb0: 0x441216b55155869a59bbbe3,
            limb1: 0x3f636ed236a78f3c42e3aea5,
            limb2: 0x240c19ce9ab0282d,
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
            limb0: 0x58551625472c0cd9b34de522,
            limb1: 0x6b6259048297f360c4c19d1a,
            limb2: 0xddbb63c0352bba6,
        },
        r0a1: u288 {
            limb0: 0xce882151208ec8be19a13634,
            limb1: 0xfa85cbd84d032335bc4713d4,
            limb2: 0xcc246b779ae14ce,
        },
        r1a0: u288 {
            limb0: 0x8d72f23257a35dd64968b2bf,
            limb1: 0xcf40e42ceddbf380a9671fc9,
            limb2: 0x29c02cae8f2d6483,
        },
        r1a1: u288 {
            limb0: 0x769504baf3db44bb3f753f95,
            limb1: 0xf5e845192499ee7eac084c62,
            limb2: 0x3787ad81c49b501,
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
            limb0: 0x98e95d048b39eef7b2e5a0b9,
            limb1: 0xa0f6020f103f26742bac12d1,
            limb2: 0x29c9f8cc30eb6b21,
        },
        r0a1: u288 {
            limb0: 0xa54828009f1856eec4a147f,
            limb1: 0xfce684e656ed085b40c68c52,
            limb2: 0x15a00f536dcec059,
        },
        r1a0: u288 {
            limb0: 0x9d5bd795de5df098bb16b882,
            limb1: 0x43d3bdc84c46cf80d5e01c08,
            limb2: 0x4c8be6fcf44794d,
        },
        r1a1: u288 {
            limb0: 0x13aaf0f083d6bef3b0e50870,
            limb1: 0x58c927690af33b0452b3d9f7,
            limb2: 0x1d7f53d13aab261e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x82fad6c02f6e07d4430f175e,
            limb1: 0xe1261b16728fe493ff61c8f,
            limb2: 0x17bbd0672768eaf9,
        },
        r0a1: u288 {
            limb0: 0x73f12fb5898b5e23b8afca59,
            limb1: 0x840774d55ebca0f532bb1c2c,
            limb2: 0x280dd4083bf21cd5,
        },
        r1a0: u288 {
            limb0: 0xb8f43753cec56d68da7a9082,
            limb1: 0x7c48531bbd90379c3ec8d17b,
            limb2: 0x171a5a65a21a8db6,
        },
        r1a1: u288 {
            limb0: 0xa6451644f4f6f758afd7e95f,
            limb1: 0xcf049dca6ca7d96125085818,
            limb2: 0x7acbdffe2ae9d18,
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
            limb0: 0x5a724be80f478e7393d9d1b8,
            limb1: 0x8edfeadbdc965e08cb54127,
            limb2: 0x1b2ebe0b8861de2e,
        },
        r0a1: u288 {
            limb0: 0xcca2ca0a82f4455c7fee752,
            limb1: 0x8a7eecf9dada63e9f95cab28,
            limb2: 0xe0dae765dec5bfd,
        },
        r1a0: u288 {
            limb0: 0x111a0cdde1ae0a75a3b6bae8,
            limb1: 0xf3f8ef45402779d989d3b6d3,
            limb2: 0x1cfdbf93fa00cd00,
        },
        r1a1: u288 {
            limb0: 0xfeba7dc028024d9233799f65,
            limb1: 0xbbaacd3eac36030acd7bc325,
            limb2: 0x1d3c9114c0a4248e,
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
            limb0: 0xfa811930bb69a9e6421c7948,
            limb1: 0xf3779bca37180f541cfcce0e,
            limb2: 0x53b7fe1e05776fc,
        },
        r0a1: u288 {
            limb0: 0x2c1eeb22da70333e079fa46b,
            limb1: 0x63ede01eaff0712043a7fb56,
            limb2: 0x1b5122d0459259,
        },
        r1a0: u288 {
            limb0: 0x286c90db0363ee5f7886fd58,
            limb1: 0x75e865050b9adbea45302512,
            limb2: 0x12c10aca88034448,
        },
        r1a1: u288 {
            limb0: 0xc0a5084245c21051d2f9bb40,
            limb1: 0x857fd7f111899da5cb08b83f,
            limb2: 0x29b5d82a586657ed,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4dbb4f86f67c955bf7eced76,
            limb1: 0xc0232ae23509db055d644336,
            limb2: 0x2bd7baeb8e32d985,
        },
        r0a1: u288 {
            limb0: 0x68583d4487b7774f6769355d,
            limb1: 0xa78b839f791f94904296e926,
            limb2: 0x2983afd3a624be1d,
        },
        r1a0: u288 {
            limb0: 0x1073c56f419ae5135873ae68,
            limb1: 0x7a97e2289bf62122c32f2b37,
            limb2: 0xb0db39c08d2dc9d,
        },
        r1a1: u288 {
            limb0: 0x253260ee6fbc5f941c8d099e,
            limb1: 0x5bc50e243f89adf892ec9af4,
            limb2: 0x299d538bf125d9b6,
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
            limb0: 0x643c73c491ed8ecec4253bb5,
            limb1: 0x96907f3893ee49839eed1f5b,
            limb2: 0x6fbc0edb8f7b37,
        },
        r0a1: u288 {
            limb0: 0x2070ba971c6d7b0f8f16ef41,
            limb1: 0x501190ba8c881a96554ddab7,
            limb2: 0x2c0115a78c4e4373,
        },
        r1a0: u288 {
            limb0: 0x27db7988fd0b8dd4fb55317,
            limb1: 0xc3b7da9badcc744c1d936a53,
            limb2: 0x99f5078e31a3785,
        },
        r1a1: u288 {
            limb0: 0x1737ac071d36c618385a0215,
            limb1: 0x5fcefd3bc07194f92d6c13c5,
            limb2: 0x2fb8f2982b161ec5,
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
            limb0: 0x9871d3828c37ed9e17cd54e5,
            limb1: 0x68dda8748effbf36c7868c21,
            limb2: 0x2adebd7f0bfcb634,
        },
        r0a1: u288 {
            limb0: 0x9689cfa403c0fceac4c9602a,
            limb1: 0x44c4d52e726f0c30644bc8eb,
            limb2: 0x24f8a839e092646a,
        },
        r1a0: u288 {
            limb0: 0x8035afaca25e13deea99cdd1,
            limb1: 0xb4285925a4af56e720f7d292,
            limb2: 0x12f22b0f47a2476e,
        },
        r1a1: u288 {
            limb0: 0xf2e266b094270c9886021129,
            limb1: 0x66ebf7b240b4a14ec54e78d7,
            limb2: 0x25410bfca5a9fe1f,
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
            limb0: 0xee9976323f14d10955182b39,
            limb1: 0xf0a8ee47f0ec3a404d1e3eee,
            limb2: 0x57e001038bbd537,
        },
        r0a1: u288 {
            limb0: 0xaf85228b64dbf9e39b566b01,
            limb1: 0x259672bbaa7426cb4756a6d6,
            limb2: 0x57c9810cd15fea1,
        },
        r1a0: u288 {
            limb0: 0xc7728aaf03522d703d5cf7d6,
            limb1: 0x6148bef2ab7e84bc90b1d901,
            limb2: 0x205a2fa8d53a4f9f,
        },
        r1a1: u288 {
            limb0: 0xc94b0d3be035fe579c420bc7,
            limb1: 0x66eb14459d004c07f93a3e24,
            limb2: 0x16664a94ce4983c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbd330af2db215bfcc127b46b,
            limb1: 0x9623ccfb4f6229f05288c260,
            limb2: 0x289c7d0fc3425c6f,
        },
        r0a1: u288 {
            limb0: 0x792a9c6ea2ff482d4b646d79,
            limb1: 0x6e476cb26ddc008781431b2c,
            limb2: 0x7dc05be15f64c7c,
        },
        r1a0: u288 {
            limb0: 0x66c4e9244b7012104002189e,
            limb1: 0xe4278d68ec8365105ccdd065,
            limb2: 0x1e95684d0eb61282,
        },
        r1a1: u288 {
            limb0: 0x1b9fae92dd791132818e7aaf,
            limb1: 0x55ba6353992d077bf207283,
            limb2: 0x277c8f1a2c7ecdcc,
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
            limb0: 0x3b0ad6ebb7e2ac9103d62f38,
            limb1: 0xff0935c5ff1302339c274ecd,
            limb2: 0x1d6acd288cf10842,
        },
        r0a1: u288 {
            limb0: 0x77926ea1892a66da9f0c64f6,
            limb1: 0x2a1270faf0172eb72c787f9f,
            limb2: 0x2a4e134165ba7ef1,
        },
        r1a0: u288 {
            limb0: 0xc15d63e7eb757152f2e4c303,
            limb1: 0x27917b948ef6c3367720fe66,
            limb2: 0x117e5696962deb25,
        },
        r1a1: u288 {
            limb0: 0x2f0ca067a2f2dc8874f40971,
            limb1: 0x953ccd8f6fb153a5b9315c7d,
            limb2: 0x17cf69b2e239a49a,
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
            limb0: 0x2e52e3d63c5c5a2d67c9ff6,
            limb1: 0x77efdb6b0bd8988780860228,
            limb2: 0x125e112feda46f86,
        },
        r0a1: u288 {
            limb0: 0x78eecb0366f05ab0be1200b1,
            limb1: 0x1c8d8e0d08a667bd158ed687,
            limb2: 0x1fc488a5e0442bbb,
        },
        r1a0: u288 {
            limb0: 0x6b64993bbd63144620ff2a8a,
            limb1: 0x79cee3eac0de193e3a5d892e,
            limb2: 0x1f8ad5de1b06b624,
        },
        r1a1: u288 {
            limb0: 0x223c386b80fc51444367d804,
            limb1: 0xd79b18b363b0dc1583b8a9e3,
            limb2: 0x22ab8826135f6e8e,
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
            limb0: 0x9756b377bd7e9ff233c8df0b,
            limb1: 0x5c64ccced92db07a5549ab0c,
            limb2: 0x20986c7c4ee35885,
        },
        r0a1: u288 {
            limb0: 0xee4d3e6a944304952c0b9a1f,
            limb1: 0x6b0930e24cc1413a8b0797d4,
            limb2: 0x90d99072bb5cea0,
        },
        r1a0: u288 {
            limb0: 0xd9608eef2e9f646be0bcc7d6,
            limb1: 0x849b3d121e9b76597cbcbf6c,
            limb2: 0x17dd2eef28c94d3a,
        },
        r1a1: u288 {
            limb0: 0x39f01d25b55e3e8ed2263861,
            limb1: 0x183f52bb7056dd012610c62f,
            limb2: 0x2493029ca9e77c65,
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
            limb0: 0xa7205df0b8bc55f0404b370c,
            limb1: 0xaffdb89890de3fb156f97f8f,
            limb2: 0xbccc01c4a5fc1c4,
        },
        r0a1: u288 {
            limb0: 0x6dce931166a8e3a28ecaf2a0,
            limb1: 0x7056a4d574575e3d2f266311,
            limb2: 0x2624f3cde703075,
        },
        r1a0: u288 {
            limb0: 0x7e2d7230101d408b8c93548d,
            limb1: 0x797fa16171967cc26beac35d,
            limb2: 0x2159451177d792c4,
        },
        r1a1: u288 {
            limb0: 0xaed288f04aa2961148722cd6,
            limb1: 0xf46a1255a84cc092a2129c02,
            limb2: 0xcc07b1ee27654b9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x84129c59a84beff814f9532e,
            limb1: 0x468c7740e86f74a101b50573,
            limb2: 0xd60c15ea813f23d,
        },
        r0a1: u288 {
            limb0: 0xaa2ffcbee270084aebe5e7f7,
            limb1: 0x491ba3091c657a82fcbd970,
            limb2: 0xe94f3d61b9d0225,
        },
        r1a0: u288 {
            limb0: 0xd1857417ca5020f97a6aa3cb,
            limb1: 0xe5ba051fe5a576167565c566,
            limb2: 0xafb835ccdf2936,
        },
        r1a1: u288 {
            limb0: 0x29d59308e9be710738db5075,
            limb1: 0xf08031134a2a4dbb81ab325e,
            limb2: 0x97fa48c40876d7c,
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
            limb0: 0x98706b526b63d289bd396b2b,
            limb1: 0x45e320e37b85ca03861e4ccc,
            limb2: 0x156d2c6725ea67a0,
        },
        r0a1: u288 {
            limb0: 0xe78f10a8550fb9081a098e56,
            limb1: 0x6f26fc5e90ebf37b3e86fc24,
            limb2: 0x17505f4142f398f6,
        },
        r1a0: u288 {
            limb0: 0x6edeacd8728d0ea965e7e7ce,
            limb1: 0x2df2aa94c504a8a5e4db6bcd,
            limb2: 0x1b47defcd0097270,
        },
        r1a1: u288 {
            limb0: 0x8828e6fbead261bed22f0775,
            limb1: 0xb8c0e5f0dd6609e4ec6b3ad4,
            limb2: 0x527c6593388859e,
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
            limb0: 0x93eaecedb27883238336f63b,
            limb1: 0x6c57fe171bf609c987539dc1,
            limb2: 0x187e861bcb826de8,
        },
        r0a1: u288 {
            limb0: 0x14177641ef6eb3b2bc78a9ec,
            limb1: 0x49bf3966a8b384c74508b63f,
            limb2: 0x200e2834478faaf7,
        },
        r1a0: u288 {
            limb0: 0xc40828ccc849d2f8d09b4b28,
            limb1: 0x91baed3d9c65b084da8e47bc,
            limb2: 0xa07c5f5ba1852a4,
        },
        r1a1: u288 {
            limb0: 0x149a1c904822828def284bc2,
            limb1: 0x6c6efc748daa31fb5f667b76,
            limb2: 0x10709438711541a0,
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
            limb0: 0xdedcc88e334011b4fd1c17c4,
            limb1: 0xc3b9dd348623d41d817d4402,
            limb2: 0x28bab1cf098be6d7,
        },
        r0a1: u288 {
            limb0: 0x32bc8fe512085f1b79111aa,
            limb1: 0x72c31942fdcce6874826792b,
            limb2: 0x272c2fb2ddbd63d4,
        },
        r1a0: u288 {
            limb0: 0xb50ad3e712880ed9283ebefb,
            limb1: 0xff456841f53d0e44145c5482,
            limb2: 0x242e4d8dcb093cd4,
        },
        r1a1: u288 {
            limb0: 0xe3b476f5a0908fdcf88ae0d2,
            limb1: 0xbaceeeec1ccf2e83ca987d9b,
            limb2: 0x22ae7c1fc371edf1,
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
            limb0: 0x77833787eb2bf5132fed4662,
            limb1: 0x97a0bdf9a22f74ce50b0aac8,
            limb2: 0x7994d2ea1c41ec7,
        },
        r0a1: u288 {
            limb0: 0xfe95fb69b403cb08fb0b4b63,
            limb1: 0x8a7dbbb2bb72f7efda56fb04,
            limb2: 0x1745d69117ce200f,
        },
        r1a0: u288 {
            limb0: 0x7eed6fbba7c77a516cb8977b,
            limb1: 0xe8fb2438331f4b1f41775f98,
            limb2: 0x35595b2921caec9,
        },
        r1a1: u288 {
            limb0: 0xcbba66533887e9d30391b3b1,
            limb1: 0x3429199d5735fc25b4f8e08,
            limb2: 0x2d1fac17ea8335e9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd2c92699adb0e93181799b60,
            limb1: 0x3edfbe1b9a4af281d53d21bc,
            limb2: 0x1bd4b3ee4138eea5,
        },
        r0a1: u288 {
            limb0: 0xad1723a3d179b3a3dcfe614d,
            limb1: 0xe5b77ad4ea015e4819d3e7ab,
            limb2: 0x1881065aee8ab521,
        },
        r1a0: u288 {
            limb0: 0xef5b238d6b6a396a80d1a9d7,
            limb1: 0x59fb1036e7518617e188b730,
            limb2: 0x225210d2e11a53f1,
        },
        r1a1: u288 {
            limb0: 0x8be2487c5187826a461c8155,
            limb1: 0x23fc5df1e5943d01009a5640,
            limb2: 0x8dd9e3b353532e2,
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
            limb0: 0x1ae2b1e561ed28ff3b7e2e1c,
            limb1: 0x77d0a288079ee11672ea7f8,
            limb2: 0xbf794b6e95f4357,
        },
        r0a1: u288 {
            limb0: 0x636edb3d453ee095ba0d32dc,
            limb1: 0x5b50549c272d78acc0be43fc,
            limb2: 0xe2755ef2e4e439f,
        },
        r1a0: u288 {
            limb0: 0x4e2e39a3986400aac976f98,
            limb1: 0xf3a37dc80f017fb59532cfb9,
            limb2: 0x93be8981b9a51a6,
        },
        r1a1: u288 {
            limb0: 0x83ac01c267ea327d52bf4508,
            limb1: 0xda1e6215534053ce35f78fae,
            limb2: 0x31369a990dbc80e,
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
            limb0: 0x3c81ac55d5dbb659dea138ec,
            limb1: 0xe6e5a8bc839404605e16f39a,
            limb2: 0x2cf6dbcfe1f52cb3,
        },
        r0a1: u288 {
            limb0: 0xb59f16df3498007848869544,
            limb1: 0xcd053bb87def968949091712,
            limb2: 0x1a77deae2bd251c,
        },
        r1a0: u288 {
            limb0: 0x96ac933f5df0539e6dbb79f6,
            limb1: 0x5664529dd4e2fa57f25b9427,
            limb2: 0x18a1a114d2466054,
        },
        r1a1: u288 {
            limb0: 0x26e458e10195f372ee9f1d6c,
            limb1: 0xf6bd55c713e136e48a2b9e64,
            limb2: 0x245713c8810e16e6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf8c8995a869c11b40e9b7681,
            limb1: 0x30a42290606e01204b99be33,
            limb2: 0x212a35fba2c8fbe6,
        },
        r0a1: u288 {
            limb0: 0x76318529200d5f906a4c2b2b,
            limb1: 0x1fa6dfc92a6da67c13773e72,
            limb2: 0xa3778cc08f1bda2,
        },
        r1a0: u288 {
            limb0: 0x7d9495ba1ed4a866b9d48927,
            limb1: 0x6c7402ac8fce33011caa0025,
            limb2: 0x1c71843f2ec8fda3,
        },
        r1a1: u288 {
            limb0: 0xfe99e8caf11f3d87b419b7b4,
            limb1: 0xd3e63bbcaead5b59f95df829,
            limb2: 0x170489a04c302894,
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
            limb0: 0x3008b3c476818884fd8eb500,
            limb1: 0xbb9e27d8fd8b66cf21815702,
            limb2: 0x730007391395243,
        },
        r0a1: u288 {
            limb0: 0x40dc97a86f348f79e4b90e28,
            limb1: 0xcadd42d933e9c3382966366d,
            limb2: 0x2d6f9adf6ca24f8,
        },
        r1a0: u288 {
            limb0: 0xd7e1325df1787dc169228e68,
            limb1: 0x6116df9a155b3c73e66a6f33,
            limb2: 0x2a41344e55b1b819,
        },
        r1a1: u288 {
            limb0: 0x53fe9d6e93121be18ae8959b,
            limb1: 0x5cdc465f52dcc2415bc4e031,
            limb2: 0x1f7ba61e8ccbb3f1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e943bfd45cf8078a2cf8081,
            limb1: 0xf240a228dc5c5335be0e7591,
            limb2: 0x6ba0023573b290f,
        },
        r0a1: u288 {
            limb0: 0x4a6ef7b7890045304b88700c,
            limb1: 0xd45eedc3567107862ff63c0,
            limb2: 0x5ce1e509272066e,
        },
        r1a0: u288 {
            limb0: 0x4e3dbf2902d3750f5b5410af,
            limb1: 0xef7e0a3fa93c8c593c42531b,
            limb2: 0x221e0ce2096df30c,
        },
        r1a1: u288 {
            limb0: 0x2faba8d96dc8aedc8f9dcdcc,
            limb1: 0x4cfed679ce74bb3fb03db58b,
            limb2: 0x1d0ab7e0015d6a79,
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
            limb0: 0x30d8e63fe12991b33ddd46f7,
            limb1: 0x49ccbd75f6b336cbdb31dd0d,
            limb2: 0x27acbcfef1723b90,
        },
        r0a1: u288 {
            limb0: 0xb3ba7b574339a09eec7333ad,
            limb1: 0x9e832923ef7231a4ddf1d3d3,
            limb2: 0x10e3f1c1a4df491c,
        },
        r1a0: u288 {
            limb0: 0x4295b7034ea8b850da5676ba,
            limb1: 0x556ebb1368fa0d3178359c15,
            limb2: 0x219897e80fffc6c9,
        },
        r1a1: u288 {
            limb0: 0xd3551765200cb2ebafcea149,
            limb1: 0xf19a013366a4c974cbfb9cc1,
            limb2: 0x2050488fd1125e6c,
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
            limb0: 0xbec3df0d44ac78de4e56358c,
            limb1: 0x182e94f4c07e35187f7805f3,
            limb2: 0x14865d8bfbbace78,
        },
        r0a1: u288 {
            limb0: 0xf1aeb95577dfde5843f43a1,
            limb1: 0x314e2e47e459dfc448ecbfca,
            limb2: 0xccc792d12340048,
        },
        r1a0: u288 {
            limb0: 0x51b1b0f23ae2e95c5c0f4272,
            limb1: 0x6a87575e3d59f4453264f90a,
            limb2: 0x1b4ba659249c3c2,
        },
        r1a1: u288 {
            limb0: 0xe18b61d97cb9454b7a39ea85,
            limb1: 0xa3cf04aac305091ffff082d0,
            limb2: 0xf8aa0aeea7f30ff,
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
            limb0: 0xfde2d4b1b40b642e9e239311,
            limb1: 0xd2766af81ef8b79053f0ef39,
            limb2: 0x19de0410865cb9ed,
        },
        r0a1: u288 {
            limb0: 0xd3919dca5ff5a6ba60776651,
            limb1: 0xfb1371f9a699d8cf1532853b,
            limb2: 0xbc531e4c9413620,
        },
        r1a0: u288 {
            limb0: 0x4b130250a85645e4bf5f65ca,
            limb1: 0x6c7cfe64621705ae191a0770,
            limb2: 0xdd90eb1cb1f51f0,
        },
        r1a1: u288 {
            limb0: 0x13b550ad5b7976ef8c8522b3,
            limb1: 0x232adae8e5888cf0426f9ca7,
            limb2: 0x240783ceb1294a33,
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
            limb0: 0xf529a75250052e468d0931b4,
            limb1: 0x137a4934a83237b57e439370,
            limb2: 0x108add761a724ad4,
        },
        r0a1: u288 {
            limb0: 0xf0f4aab67ac495887407a3f4,
            limb1: 0x9180ae45391f86fb34fcff1e,
            limb2: 0x2cf8ac204915195e,
        },
        r1a0: u288 {
            limb0: 0x16936f7383bbb255b5a08bd1,
            limb1: 0xa51d1c4211f2e0b5edf4642b,
            limb2: 0x1aa93a61ee632900,
        },
        r1a1: u288 {
            limb0: 0xf711f2d4d5f768833f55a690,
            limb1: 0xc2a0ad330fbfd6897ec3d8ad,
            limb2: 0x25dc7d1ddde5ac15,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x500665464ba602583cb82d4b,
            limb1: 0x133b0a703b96e8fd8be998a2,
            limb2: 0xc6d1334cf5e2c7d,
        },
        r0a1: u288 {
            limb0: 0x396aa390871b37ae81c8630e,
            limb1: 0x7c7bfe90080c4c6e982c8f8c,
            limb2: 0x16c54fb25ddbeec4,
        },
        r1a0: u288 {
            limb0: 0xcc9a8d5cf420a0d713c77185,
            limb1: 0x901d688bb57c13d0d7d7c47a,
            limb2: 0x4c14444e1321e27,
        },
        r1a1: u288 {
            limb0: 0xcbb961a0775973c27224f54c,
            limb1: 0x4e61865128651dd9e5184a7b,
            limb2: 0x435903c6318fd5,
        },
    },
];

