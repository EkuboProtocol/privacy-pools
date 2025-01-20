use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x4b0f445fcb2728858f7d34d6,
            limb1: 0xd18c1c043875e26070d27486,
            limb2: 0x1ef60a9137abdf5f,
        },
        w1: u288 {
            limb0: 0x7b2515425502f065a451c60c,
            limb1: 0xb1b383ed55b724b00cfe1c4f,
            limb2: 0x146cde7945224d2d,
        },
        w2: u288 {
            limb0: 0x16d4e893a72af779cd315547,
            limb1: 0x58838f02d64b76855f58b90e,
            limb2: 0x2390b5e2a68c256e,
        },
        w3: u288 {
            limb0: 0xbcbf047bec9f870c641daac2,
            limb1: 0x6513baa523dadfa3d50e15f8,
            limb2: 0x18d998c8f66029b3,
        },
        w4: u288 {
            limb0: 0xa987b656767f2900bae5480d,
            limb1: 0x735df51e32ba6ca70d935a2f,
            limb2: 0xb70090013e4d4c3,
        },
        w5: u288 {
            limb0: 0xd57a041e9da75ec3123a2fd3,
            limb1: 0x2cf8ed72b9777baf1c09267c,
            limb2: 0x15dcd3464b83778,
        },
        w6: u288 {
            limb0: 0x63a3a2b2ccc3811361aef7dd,
            limb1: 0x4555017d6e05f58ea3a50,
            limb2: 0x12eb591bc42edef0,
        },
        w7: u288 {
            limb0: 0x6d8a31657c0106d1067d99a1,
            limb1: 0x7aa278010e32edcc6710d0bb,
            limb2: 0x2012547e061532d0,
        },
        w8: u288 {
            limb0: 0x3aaa2091f39554977214dd5d,
            limb1: 0x7bb08bb58320a15d290e70c6,
            limb2: 0x2af9b56d2f5ab55c,
        },
        w9: u288 {
            limb0: 0xd80a844541859ef24d691cf6,
            limb1: 0xd7c205c4f768712e2d639829,
            limb2: 0x362b2bee4883307,
        },
        w10: u288 {
            limb0: 0xdc7ed2abe624126164b7072f,
            limb1: 0xf4eec9d8e01cb5c2699fe048,
            limb2: 0x192acc5887608c17,
        },
        w11: u288 {
            limb0: 0x1e52cce59da2da2612138215,
            limb1: 0x74f4f24f36ce8a86f772cb46,
            limb2: 0x1f9b3af4ca833c6e,
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
            limb0: 0xf8dd9dd94413085dde69e8b6,
            limb1: 0xe63c3e12edcb6f4fc067e9df,
            limb2: 0x25ca23be51d3eab9,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x5e16ac685b43b842b1827352,
            limb1: 0x1f665c786257e03c656563f7,
            limb2: 0xc06c3e0e1e96380,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xa6f54424a85b467048fd52a3,
            limb1: 0x3a1f88254d9e102e48d1a15c,
            limb2: 0x21f04c8c8e7ec79d,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x110319d7a5426246580ac804,
            limb1: 0xcadf966f2634b264be3a6a60,
            limb2: 0x112ecbd7d612edad,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 7] = [
    G1Point {
        x: u384 {
            limb0: 0x2670fd42ada6400828aaf3e3,
            limb1: 0xe5f3384ef7d373559f5c4fc3,
            limb2: 0x1a3f8672ba30b5ab,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xffe1bf405468a197a8449a46,
            limb1: 0x3aa1357826d52b981552556c,
            limb2: 0x99b0a81b4b3d95,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x6dd52267e7c39fa90588cc6b,
            limb1: 0x26db1ea57a74bfd000d4d809,
            limb2: 0x109533ef4a10e4e,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xd92656cea60906612521d1c8,
            limb1: 0x18d06bdc9d50e05b4e9fa95a,
            limb2: 0x422501d14fd832c,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x7bd4ea06a3569db1be785001,
            limb1: 0x9d2a8a7148f0788135e2cec9,
            limb2: 0x58926b6674606de,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x5d792b4acd8141c829acc286,
            limb1: 0xa4d30804ffb7771cd5ac6b67,
            limb2: 0x122e28268ba267ee,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x8f82eab12df38d18253fcb2f,
            limb1: 0xecaa02219883d92729592744,
            limb2: 0x2dd02147b64cf4ac,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x74274fbb2bfc7a4b93ad3f2,
            limb1: 0x15e8fcee45ff47fe7171637a,
            limb2: 0xfa4f8d945f2534c,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x2b5310aa866a69457f948326,
            limb1: 0xf9ec74b45ac2f585441c6c7f,
            limb2: 0x176f1f787c40a6d1,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x68c731806ef5dfd1ec6c2a44,
            limb1: 0xdf46c265fc458eda3632174c,
            limb2: 0xb8410d38aad7fb1,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xfa3d77232dd4c59c531ce70a,
            limb1: 0x80b36db3e1b267d543c15f67,
            limb2: 0x9a6b752132b9ba3,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x3bcd38efdee69f19564d7e89,
            limb1: 0x9fad03789b5b80ce2d6c7892,
            limb2: 0x2567d453a29ee5de,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x70fd221ffa4dad1d3d915582,
            limb1: 0x47391b295ac6a27f4da0ba70,
            limb2: 0x940a930f2e6ab5f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xef1be5ddad829c2638b54e25,
            limb1: 0xf5c93bbb8df20b23c2e6fe4,
            limb2: 0x21d5b602d8af9012,
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
            limb0: 0xbd51e41636a76182b09c1154,
            limb1: 0x55b01ac9577396c1d5b379d,
            limb2: 0x51866efac385c63,
        },
        r0a1: u288 {
            limb0: 0xc787a662106c294266891e27,
            limb1: 0xf10881d549dcffc4076732fc,
            limb2: 0x2993c4fd8857d102,
        },
        r1a0: u288 {
            limb0: 0x51ee585a3da90f5da988444d,
            limb1: 0x2e48347553d8b295d671dd63,
            limb2: 0x2f6de97f40141afd,
        },
        r1a1: u288 {
            limb0: 0x96fc0a377d97ef9ac8600b48,
            limb1: 0x9e9452449c660c4929591143,
            limb2: 0x14e27e482561eed3,
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
            limb0: 0xab1fe67705792a9427e0ebf3,
            limb1: 0xb2f54409ec0a1ef17a2632f3,
            limb2: 0x2b4be78334f943c6,
        },
        r0a1: u288 {
            limb0: 0xa0ea242b2bb462d471f3df20,
            limb1: 0xc747c3e137a45899901a3794,
            limb2: 0x6d0897558d9cf26,
        },
        r1a0: u288 {
            limb0: 0x16837232fe777cb92ef4b8fa,
            limb1: 0x8a0811412da8a5c7c10f8d2e,
            limb2: 0xf664f3a11d852c,
        },
        r1a1: u288 {
            limb0: 0xd175c055be889c7c101cf1ff,
            limb1: 0x19bbf371e51b4c146e28594d,
            limb2: 0x1b81d02abbcfb156,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5722e8b1ea354ba931a2fb6d,
            limb1: 0x6a28fdadd3c32c8c00080e7a,
            limb2: 0x635f3699df831d2,
        },
        r0a1: u288 {
            limb0: 0x55b0b05f58eff9c6c8e38710,
            limb1: 0x940fd33602284e4bc5741f82,
            limb2: 0x1bf732674d146220,
        },
        r1a0: u288 {
            limb0: 0x6e1e733a0bc4342c24365fa7,
            limb1: 0x2b24baa402b4478d034b4ba0,
            limb2: 0x14e776ee25a8a671,
        },
        r1a1: u288 {
            limb0: 0x9084cb205b780b4dbb2fcb2d,
            limb1: 0x17cce88c50b3060bca0496fc,
            limb2: 0xe708b4fa69f9359,
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
            limb0: 0x21045216a24d4760f790761,
            limb1: 0xce324a014c34c2a7d8aa5ede,
            limb2: 0x683a16220c13932,
        },
        r0a1: u288 {
            limb0: 0xb7ef3a6e8297653204dd5524,
            limb1: 0x4aca650bc9410995724a3400,
            limb2: 0x2db7393b2c4f9ce9,
        },
        r1a0: u288 {
            limb0: 0xf9d5b71256f95b851f559151,
            limb1: 0xee9005392f109e193fc6bd84,
            limb2: 0x139388799a809bed,
        },
        r1a1: u288 {
            limb0: 0x74a51e345737efa9435975ae,
            limb1: 0xd0aa1f5a048fa6ba05d2374d,
            limb2: 0x118f3772df6cc9b3,
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
            limb0: 0xa1e99233e5c3966093abca8,
            limb1: 0x72e2e25bceefa9b41f35aeaa,
            limb2: 0x1f0e588f9b7a7cd2,
        },
        r0a1: u288 {
            limb0: 0x60356f0a13e29309b395ff57,
            limb1: 0x8a94d450a1d6aab32e130f5a,
            limb2: 0x1bb2a71b27adcac,
        },
        r1a0: u288 {
            limb0: 0xa1e89e6e5dcd4d20e03cc32e,
            limb1: 0x1ef991ad76ec98bbdefb215d,
            limb2: 0xdb70869b60d5c6,
        },
        r1a1: u288 {
            limb0: 0x9055295a043dbd3475f49e47,
            limb1: 0x3c9f77ed32191dba7949e8a9,
            limb2: 0x18bbf572e1607ee9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2acfea59cecba75c6c4648c7,
            limb1: 0xd50f6c0e750d17a89aed4f37,
            limb2: 0x13186bd5ea8189d1,
        },
        r0a1: u288 {
            limb0: 0xb9353fc9aa5fa000be18ab56,
            limb1: 0xddc7b582c8a40bcdd437575,
            limb2: 0x25a63f5b035a054e,
        },
        r1a0: u288 {
            limb0: 0xa0bcfa591c4e6d6960337dce,
            limb1: 0x43df53a1d8dbc84d90baf4ea,
            limb2: 0x2e6219bbac70d18d,
        },
        r1a1: u288 {
            limb0: 0xbcd4cd037c89bc31ad0aec1,
            limb1: 0xb4a9e47ecf4b62fa0b59086f,
            limb2: 0xfb8e4c1ae2c0c88,
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
            limb0: 0x17d2c30e46f9501c6b6e2024,
            limb1: 0x6e2419a40012a566916d4100,
            limb2: 0x16a7ccdd4501f33a,
        },
        r0a1: u288 {
            limb0: 0x6fa57e164d75eb3cd73903fc,
            limb1: 0x4dc70a529464ec12608f6f7c,
            limb2: 0x1d4bc8d7813b469,
        },
        r1a0: u288 {
            limb0: 0x853a82cf55c17f8eb51c0ac2,
            limb1: 0xabcadc7bf91de202a9ebd671,
            limb2: 0x24353222981048aa,
        },
        r1a1: u288 {
            limb0: 0x61dc8a000512c8aa4fac4475,
            limb1: 0xc46ec248c5ad080acf6aef97,
            limb2: 0x15ef5ad32b5723c4,
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
            limb0: 0x73fe6537bbfb9b6eedcb68de,
            limb1: 0xf6e6242d07aa52a81073b250,
            limb2: 0x191791febd48f7ba,
        },
        r0a1: u288 {
            limb0: 0x270984ef8cd9d7bd9083d15e,
            limb1: 0x65626d3e8349fb26dd7925ca,
            limb2: 0x8a2d4261494c174,
        },
        r1a0: u288 {
            limb0: 0xd055f57f82078eae70d477d5,
            limb1: 0x188b63379e2ca8067fa5ae4e,
            limb2: 0x367643b8b33ba5a,
        },
        r1a1: u288 {
            limb0: 0x355ce78cfdc0da5f33f2ee90,
            limb1: 0x237f47bb0c4624f9158b697b,
            limb2: 0x2620d5e7ded4cd51,
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
            limb0: 0x1e96ef75c892ce7b2f241440,
            limb1: 0x12cded74e4d5557975e6349b,
            limb2: 0x4555a223ff90d9b,
        },
        r0a1: u288 {
            limb0: 0x3934b56402908a77722998fc,
            limb1: 0xeae55c23e4d337a46ff267c7,
            limb2: 0x20d17a22da8db2e1,
        },
        r1a0: u288 {
            limb0: 0xb0ae0fe481f9573373c1db93,
            limb1: 0xf421f44df039fdeb20166db1,
            limb2: 0xe29dd264b24411f,
        },
        r1a1: u288 {
            limb0: 0xd3a2922f60e7f3675a79381b,
            limb1: 0x36ce3a0038721e1b88cdb42,
            limb2: 0x147528a677bcbd9f,
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
            limb0: 0x878a40323917f564b88fad42,
            limb1: 0x3227687904b1eb2b4a1914ff,
            limb2: 0xf84d857218f4a26,
        },
        r0a1: u288 {
            limb0: 0xaf3eb538fa471c1b72d9316a,
            limb1: 0xa85e382e30d069c74d605385,
            limb2: 0x19b9f81d5806f226,
        },
        r1a0: u288 {
            limb0: 0x9fd42bf8faa0383b6736cf9c,
            limb1: 0x3999a2300781a0b73c88c050,
            limb2: 0xeca0958fa2354f5,
        },
        r1a1: u288 {
            limb0: 0x5c6642f3dcba78641d18e873,
            limb1: 0x6b9ecc3e37c833ed7f277c49,
            limb2: 0xdc8f60c278d7e22,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc65336660a6e2b399a4b7d29,
            limb1: 0xc2f4cd3c61ed0c1726af1c99,
            limb2: 0x178aea547a444e6f,
        },
        r0a1: u288 {
            limb0: 0x2b515e49e7302317fe7f3cc,
            limb1: 0xd5a35f9aa9cdd19a7515e155,
            limb2: 0x94627521fc6f9d4,
        },
        r1a0: u288 {
            limb0: 0xaa07267aa1d6ba6d2af06f25,
            limb1: 0xf6161dbf60301058ca44d6e,
            limb2: 0x29528be8aaa9a8ab,
        },
        r1a1: u288 {
            limb0: 0xc14554a079aa040de2829616,
            limb1: 0x9b030782becee89fc50e791,
            limb2: 0x1dbcfca16859f47c,
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
            limb0: 0x270461c7846ae3f1c42a4b08,
            limb1: 0xf1b83b0c5ba72550ac71a86,
            limb2: 0x183c4fd627a462fc,
        },
        r0a1: u288 {
            limb0: 0x5af58c43073434536ff65058,
            limb1: 0x24cb9dfea8fe347486744ad4,
            limb2: 0xe8086c6d036118f,
        },
        r1a0: u288 {
            limb0: 0xdfb843b0fb687b3ef0eef77f,
            limb1: 0xc36bdd417df76effb4d4496e,
            limb2: 0xac4b745efdcd149,
        },
        r1a1: u288 {
            limb0: 0xac447abc178a79d8c21936f9,
            limb1: 0x35f7b767ab5809f50e451e55,
            limb2: 0x28c0f975c904d57c,
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
            limb0: 0xd287d9ffcb166bbf8f304eb5,
            limb1: 0xf78d25de60d116c48e6edf5d,
            limb2: 0x1b664aa55fff8699,
        },
        r0a1: u288 {
            limb0: 0xc1216b56077320e916586c75,
            limb1: 0xda2bc13fe76c67b660e36dad,
            limb2: 0x14b02cb81e810baa,
        },
        r1a0: u288 {
            limb0: 0x8c8e9d45aa2681f8745b76be,
            limb1: 0xcaa817971980babe08aaa192,
            limb2: 0x85e1858b4e14f1d,
        },
        r1a1: u288 {
            limb0: 0xfe6f76c217707f96512070ac,
            limb1: 0x585a8b5e8c62e03240b730c6,
            limb2: 0xf929e8bf50e6fc8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f447b1b2f83925ae9f302,
            limb1: 0x6e3400840e1d994ed4ab956d,
            limb2: 0x7f69a46d0c5f30d,
        },
        r0a1: u288 {
            limb0: 0x85c3e3688d8a472fe38e0933,
            limb1: 0xd5cb76aa0499351ca82806a8,
            limb2: 0x4b0c90219c88a2e,
        },
        r1a0: u288 {
            limb0: 0xe3d90af776b30b6c92e3f61b,
            limb1: 0xc533e9c78c090839ce240429,
            limb2: 0x1dc7a09ce04f721b,
        },
        r1a1: u288 {
            limb0: 0x7f842b14f13af5702a938d0,
            limb1: 0xb2d40f41562b6e57b333ed83,
            limb2: 0x14e6534c7e21c8cb,
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
            limb0: 0x6609f03f13a0077ba1093811,
            limb1: 0x3ac12f6e296260530342c6e4,
            limb2: 0x2663017d84101334,
        },
        r0a1: u288 {
            limb0: 0x87b43c80f48fa281a2c199b6,
            limb1: 0x958b15080f243ba6cad0a602,
            limb2: 0x2cfc20d396b502b6,
        },
        r1a0: u288 {
            limb0: 0xc83d4bdfb6d633c0c1d95e73,
            limb1: 0x1b7270f5db62a436193bf58b,
            limb2: 0x297e2bc2684369a5,
        },
        r1a1: u288 {
            limb0: 0xd1e038a4611ec419eb350a1a,
            limb1: 0x44bfbeeef567ac074e901d27,
            limb2: 0x2e445d7f23194e72,
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
            limb0: 0x56039606fb24423509e6955b,
            limb1: 0xaae062bbf299b54d39f0c2e8,
            limb2: 0xb10d7a9e8376afe,
        },
        r0a1: u288 {
            limb0: 0xd0403f82a34f4471e725bceb,
            limb1: 0x559b52f7ad25e2ec795e7897,
            limb2: 0x27bb3318cee03819,
        },
        r1a0: u288 {
            limb0: 0x9898c86e7cecb02abee1c849,
            limb1: 0xf62a27cc60b1cd9fd15ebc7f,
            limb2: 0x648a620128807c9,
        },
        r1a1: u288 {
            limb0: 0x31927c43537fe82fcc68226f,
            limb1: 0xb38745f3facb49d2e2c44b52,
            limb2: 0x472b07c1f0afbfe,
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
            limb0: 0xb51f576fa188e57d81a154d3,
            limb1: 0x1417ce950f53f94c50c205d0,
            limb2: 0xc06bbccc98ea2dd,
        },
        r0a1: u288 {
            limb0: 0x86a7724bb8cac30846dc681a,
            limb1: 0x3c7c90d24a65cf2150bda972,
            limb2: 0x2ea1e556f6c48b05,
        },
        r1a0: u288 {
            limb0: 0xdb7f11fcd658a9cceb08d527,
            limb1: 0x4f1416e8610c2656f72f403f,
            limb2: 0x192ce61a22314168,
        },
        r1a1: u288 {
            limb0: 0xe3438132c50069f0bb23879d,
            limb1: 0xd3f278be49a6e74061b9f106,
            limb2: 0x25163446b81dd84a,
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
            limb0: 0xb9ec4940742d45dc8c301280,
            limb1: 0xf6a77015c622d99bafea1878,
            limb2: 0x1a35b127601876ec,
        },
        r0a1: u288 {
            limb0: 0x839e5a277c90f6c06d892c24,
            limb1: 0x48a7f27984d9f1c9c200aed2,
            limb2: 0x602b2cd7bc81d29,
        },
        r1a0: u288 {
            limb0: 0x704aba0d0504e06e9d05053f,
            limb1: 0xc90722ba532518e5dfe42466,
            limb2: 0xb9f7123979a4332,
        },
        r1a1: u288 {
            limb0: 0xbc2b127554c4d82b53e54f9a,
            limb1: 0x56c7012ece9e59450c9b5195,
            limb2: 0x92f70496763516e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8fe8aab1e7d75bfed430d96f,
            limb1: 0x96481152761789c26fa47ceb,
            limb2: 0x1199df5c3d6e3ad3,
        },
        r0a1: u288 {
            limb0: 0x670196601389f136837b964e,
            limb1: 0x29e1974d4735f6262f53a0f0,
            limb2: 0x18e00b92375a7b2c,
        },
        r1a0: u288 {
            limb0: 0x7e8649d80ad4df3bf8fed5c,
            limb1: 0x1e5e2789e27883ed461323ac,
            limb2: 0x19e0397973a6e60f,
        },
        r1a1: u288 {
            limb0: 0x4bd4a3e8cdf0c44ba968d89f,
            limb1: 0x18c5b05f8b906d430c501da3,
            limb2: 0x17d21a6091c19a9a,
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
            limb0: 0xbc9fd3ec06aa1f91682db8e4,
            limb1: 0x7db19c314d4ddea7aec210a7,
            limb2: 0xc309a416a66cc96,
        },
        r0a1: u288 {
            limb0: 0x1e3d57fffeb8c73fd681f5a0,
            limb1: 0x7782c00c32618485fa4d641b,
            limb2: 0x2d21432f20413047,
        },
        r1a0: u288 {
            limb0: 0x1f20dcf04b3fbfde5fcc7a1b,
            limb1: 0x779306aa14588072624ed225,
            limb2: 0x1450fc324fd10967,
        },
        r1a1: u288 {
            limb0: 0x11b71a65d92cbaa1a39f86ac,
            limb1: 0xb8b0da83e72238569a238cba,
            limb2: 0x14899d7401a9f2eb,
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
            limb0: 0xa0f3cc99bf2aab6e59fb7952,
            limb1: 0x488acdcbda2ffb7d4898bf70,
            limb2: 0x10c5ac3c0142a679,
        },
        r0a1: u288 {
            limb0: 0xd1d8a895de178c252a9ff156,
            limb1: 0x9801d08ac217bb114aaf5ec7,
            limb2: 0x27ca07393778c653,
        },
        r1a0: u288 {
            limb0: 0xeecc7ff546daa300ecc20c66,
            limb1: 0xf9570b00adc592213bc19d2,
            limb2: 0x2ee576812245038f,
        },
        r1a1: u288 {
            limb0: 0xef14b8ad9b1aa776a801ae46,
            limb1: 0x28d6469341382d424a5aee09,
            limb2: 0x3961eb16c2962e6,
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
            limb0: 0x33f2c150b53fb384de14949,
            limb1: 0xd140db636733c6b69aba4fb5,
            limb2: 0x2bb6af52e5442ba1,
        },
        r0a1: u288 {
            limb0: 0xa59acf603214cdbcd9f36f1c,
            limb1: 0xb2caf57d0914720b0b167916,
            limb2: 0x2ee0835736c57cbe,
        },
        r1a0: u288 {
            limb0: 0x6e855df74a125e35d2d5c9eb,
            limb1: 0x96dd8ab67e31b6e1d33a1f7f,
            limb2: 0x387c5c16716e91b,
        },
        r1a1: u288 {
            limb0: 0x6e6b3c3512a02241229303dc,
            limb1: 0xcf221e4c14f98f0b150b6215,
            limb2: 0x8705f965a6c9f4b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c9aa6310b137bdf76902806,
            limb1: 0x39df2ea8c5faf5fda53e24f1,
            limb2: 0x178f6c135f5cb6ea,
        },
        r0a1: u288 {
            limb0: 0x6409d811aecd874a7e12ea90,
            limb1: 0x94d76b066900092be21d4088,
            limb2: 0x9be5d74d07bff25,
        },
        r1a0: u288 {
            limb0: 0xdf16ac121d6133f9751c9143,
            limb1: 0xb2812a37e9a754b3e2dcc630,
            limb2: 0x27b41c13b6cca0,
        },
        r1a1: u288 {
            limb0: 0x824b38a999319361eb907857,
            limb1: 0x3e002fb514041d690f86f671,
            limb2: 0x1020ecb99dcca998,
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
            limb0: 0xf7bcee359e132ae6929792a,
            limb1: 0xf01cbbb1778fb860d1ffb343,
            limb2: 0x9c501a1b13c89d4,
        },
        r0a1: u288 {
            limb0: 0xc1b2cbefea7f837aa73ce7ea,
            limb1: 0x9fe361119ba468d3b43b6c8a,
            limb2: 0x15af4171f174962,
        },
        r1a0: u288 {
            limb0: 0x1fb2cc5d63fe0000524c47af,
            limb1: 0x1ffb78430e4b9f6180bc18fa,
            limb2: 0xea2d06dfee60d70,
        },
        r1a1: u288 {
            limb0: 0xc26aef994a6ca44b9a3bd843,
            limb1: 0x5f82be6756da4d18c2d3bee2,
            limb2: 0x1f4b369b2d1a1d12,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4b4face9244fd7e9311463ea,
            limb1: 0x7dc6d1fedcb5dda254b107bd,
            limb2: 0x49fc16a68dfd586,
        },
        r0a1: u288 {
            limb0: 0x507ccc48392faf9267a71f22,
            limb1: 0x975444c6ed64fb3d9cf9a2d0,
            limb2: 0x22b3ec5fd927925b,
        },
        r1a0: u288 {
            limb0: 0x3017f6fba28ec244093c5149,
            limb1: 0xa3e4a9a895a938618e7893a5,
            limb2: 0x293f6385e374670b,
        },
        r1a1: u288 {
            limb0: 0xe3991f499d18f6d6b8bc9fbf,
            limb1: 0x927fe727e339d766cab5257f,
            limb2: 0x29ba1ea79e727e3c,
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
            limb0: 0x7807587c189f61116772f60e,
            limb1: 0x407010c695de475ca6b73fc6,
            limb2: 0x17d8075a31cb056f,
        },
        r0a1: u288 {
            limb0: 0xb5036767f671e24336fea018,
            limb1: 0xde175798a70175d09dd4fa33,
            limb2: 0x1a6a42869fd35dad,
        },
        r1a0: u288 {
            limb0: 0xbb3d82c72f01c977fcf842fc,
            limb1: 0xec52f57bddf244d7ac1cf2e2,
            limb2: 0x28ceb769a1963903,
        },
        r1a1: u288 {
            limb0: 0x8650d38d375be43c18c5a3d9,
            limb1: 0xe0789642ebb7a2d6e2b97abb,
            limb2: 0xd2ac533927b63fe,
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
            limb0: 0xb412d4ed8ee6f6224909f8e6,
            limb1: 0xf146f2f70ec523ff2dbc7174,
            limb2: 0x246b75f49734a350,
        },
        r0a1: u288 {
            limb0: 0x39dcce19d4a74a23791228d2,
            limb1: 0xbeca302e650dda38d37da9e9,
            limb2: 0x21af610f5cb1e232,
        },
        r1a0: u288 {
            limb0: 0x11968d355a4a125193085506,
            limb1: 0x616aca8df2fafc2701f67d74,
            limb2: 0xbb7c409fc3b7281,
        },
        r1a1: u288 {
            limb0: 0xdea8d5a8eaf88cec9f1309a8,
            limb1: 0xf7a405a1ec41e4141e177936,
            limb2: 0x3029775f27079e1b,
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
            limb0: 0x96fb6cdbaa1b24d4989d0c38,
            limb1: 0x4d0a7b067119524145591251,
            limb2: 0x8010e3f5b569aa4,
        },
        r0a1: u288 {
            limb0: 0x948b8dc8a2ec7a3b4032c044,
            limb1: 0xeacaa7e41c8470c3cc6166c6,
            limb2: 0x270f8d5d066a2ee,
        },
        r1a0: u288 {
            limb0: 0x291e58ca0c3ccff52351e65c,
            limb1: 0xa12d896a123752bc483f258c,
            limb2: 0x2ca94b8f824d5de8,
        },
        r1a1: u288 {
            limb0: 0x4dae14f5d53c9ffd790519d4,
            limb1: 0xbf2979d5a158f66ac911b53,
            limb2: 0x26ede6f4e020c3c1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa47cd9b4983073458fd21e0b,
            limb1: 0x3f7200e6389a41bd961f2dc9,
            limb2: 0x7a3e949cd2fc554,
        },
        r0a1: u288 {
            limb0: 0xeb08003f2e860e3b5ff3770c,
            limb1: 0x880618f89cc0d27fc0774a86,
            limb2: 0x153f34dae3fa1a1e,
        },
        r1a0: u288 {
            limb0: 0xe87bb50f902c0d09af3f7864,
            limb1: 0xe4621e77f22b989e298a039d,
            limb2: 0x7478ca3f22c3267,
        },
        r1a1: u288 {
            limb0: 0xd8022f3f536f1f350f1190a9,
            limb1: 0x657fa3324c5973610936a6c2,
            limb2: 0x213ebc6b769c5a23,
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
            limb0: 0x9b91d02d95277f216cdec944,
            limb1: 0x8da38966b7b82fed26aeac63,
            limb2: 0x215be847428d9676,
        },
        r0a1: u288 {
            limb0: 0x1b52d65d9ad491340a9c5367,
            limb1: 0xbd8c09e8abf3d1f6e6bd9ffd,
            limb2: 0x170f274a50f21ed7,
        },
        r1a0: u288 {
            limb0: 0xc62a9ca04c88a232331fcb8e,
            limb1: 0xd24e80a676a50ec89ca8f5fa,
            limb2: 0x17105293455d856f,
        },
        r1a1: u288 {
            limb0: 0xfabda8d36b4d5eb949430cac,
            limb1: 0xf4dc7c0392cbc09100b2dcb6,
            limb2: 0x8e61e756475e651,
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
            limb0: 0xfd3300d502feaec411d5075c,
            limb1: 0x3fed5a60b630899f48110c9a,
            limb2: 0x2609fb16f6b06e7b,
        },
        r0a1: u288 {
            limb0: 0xb528ab6d0ae794873182313d,
            limb1: 0xe18c41d03aea38f0f262fa14,
            limb2: 0x1d11110a487b8e88,
        },
        r1a0: u288 {
            limb0: 0x64648782e6c49501fc92ba89,
            limb1: 0xf25f220d665fbd4b2dc750b1,
            limb2: 0x2e6c925de09a899d,
        },
        r1a1: u288 {
            limb0: 0x96b44d8b2edc2aefdc040b9b,
            limb1: 0xf5767b5cda3f82b875aa980b,
            limb2: 0x1e63b4ac224af4,
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
            limb0: 0xd5786fde5ad117b57d165bed,
            limb1: 0xcfb93a3f72d33bca33a98f7c,
            limb2: 0x16d13ae2735322dd,
        },
        r0a1: u288 {
            limb0: 0xbf101335eb326901c6e96566,
            limb1: 0xce8e01dc96875d4ad7c95dc2,
            limb2: 0x1ee403fdf1c79307,
        },
        r1a0: u288 {
            limb0: 0xd2837346c64ac78ea9968e1,
            limb1: 0x31044d24ed4e5a3d5b7831d3,
            limb2: 0x200da86f40608aed,
        },
        r1a1: u288 {
            limb0: 0xbb7e04923572dab5232972a4,
            limb1: 0x7f0eb5c45c0c600094c41ed,
            limb2: 0xb4bb917fcdd1047,
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
            limb0: 0xf4769ec1e687b5d0e9aded8a,
            limb1: 0x98ccd4a173976832defc6145,
            limb2: 0x16ff2f1e79bda761,
        },
        r0a1: u288 {
            limb0: 0x60522da5722daed05342e1d5,
            limb1: 0xf6bcb105a0acea083ee35e03,
            limb2: 0xfbe9ab0ec633318,
        },
        r1a0: u288 {
            limb0: 0xd208840b37bbdcc6740b9e7e,
            limb1: 0x86f86f842be7706d9d0a4d93,
            limb2: 0x1ba6460c62bdf1f3,
        },
        r1a1: u288 {
            limb0: 0xd6b2c815fc3cadffe2129edd,
            limb1: 0x8c66c2bf39ca599d43e405c8,
            limb2: 0x1c4a650d22fe27a2,
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
            limb0: 0x113752471be13869bdacfc9,
            limb1: 0xa041db0ad8b6d197b5987ad7,
            limb2: 0xc92165a4ceb2fee,
        },
        r0a1: u288 {
            limb0: 0xdcabe6900199b083c7f0302e,
            limb1: 0x3048e5a13ac3af06ba79e157,
            limb2: 0x206529c36e5fb2e5,
        },
        r1a0: u288 {
            limb0: 0x4dae481b5853bbe5a20dbec1,
            limb1: 0xeeae35570950f6353103adef,
            limb2: 0x14a494823cbc60c7,
        },
        r1a1: u288 {
            limb0: 0x4762b2d8bbe7e88d08cae0f7,
            limb1: 0x227b6aa666acec0b5e9bffa7,
            limb2: 0xdb5105e960a34d4,
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
            limb0: 0xa809b9b9a50e71288122c417,
            limb1: 0x47e651e61e947f12afc97c3,
            limb2: 0x88c9df94a8b072e,
        },
        r0a1: u288 {
            limb0: 0xf917104fc1b8f5702ef474fa,
            limb1: 0x55a3ab25605b8316652a5f7e,
            limb2: 0x1fc38564414acf18,
        },
        r1a0: u288 {
            limb0: 0xb4b76fde5ec06dd2baa43f4e,
            limb1: 0xa84a2e29cbb09b2761e0d31b,
            limb2: 0x8cceb5824c342da,
        },
        r1a1: u288 {
            limb0: 0x8e2aea9d982ea8873ec764d8,
            limb1: 0xfa299d554b2ef299083cfec7,
            limb2: 0x1086b36460af4129,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88b7316981872a04e8cb28a1,
            limb1: 0x4fb8230e42050b1795b315,
            limb2: 0x1adf834e8cb45040,
        },
        r0a1: u288 {
            limb0: 0x127783ec27ed912b56a61e77,
            limb1: 0xb1e97de8fa75157be97dea4d,
            limb2: 0x1eba8a06803441c6,
        },
        r1a0: u288 {
            limb0: 0xa04e6a70578bbb55546c47d,
            limb1: 0xf6cad6b529dd42e044febf76,
            limb2: 0x144de75669a8b146,
        },
        r1a1: u288 {
            limb0: 0xc7a5718a28fb3ec97911b9af,
            limb1: 0xa493969e9339de41fabf2359,
            limb2: 0x1963536536046789,
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
            limb0: 0x6fc3a65f7f93448ffb59cab7,
            limb1: 0x988b3311830512419315593d,
            limb2: 0x1e875736dcde90d,
        },
        r0a1: u288 {
            limb0: 0x720f2e610c6fd698f5f144c9,
            limb1: 0x2b393b3245b41c4c99b988ca,
            limb2: 0x23709f63c8a06755,
        },
        r1a0: u288 {
            limb0: 0x9c4aa2be143c30ffd88804c2,
            limb1: 0x576e430445fd2e77a3b00aa8,
            limb2: 0x25a088faaf725820,
        },
        r1a1: u288 {
            limb0: 0xa41ed8e63bbe0885f555a677,
            limb1: 0x8bb1244997102c053675f8e0,
            limb2: 0x2be0a61987acf55d,
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
            limb0: 0x3b0650a97eb4e80b8c947d0c,
            limb1: 0xc2f7e639b93965d6baf02024,
            limb2: 0x2eba3f04344d5fe,
        },
        r0a1: u288 {
            limb0: 0x769314ee4eea9c7d52b85780,
            limb1: 0x16676209c5b49304632b6008,
            limb2: 0x10cdfa760556ff70,
        },
        r1a0: u288 {
            limb0: 0x395db062d0f60f4ac949ac9c,
            limb1: 0x6ec97d5a6fce186fb4c0fd20,
            limb2: 0x177fd235c1a03087,
        },
        r1a1: u288 {
            limb0: 0x4dca6204286575addd16b321,
            limb1: 0xf533e873905058b616e59493,
            limb2: 0xda31050e470890d,
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
            limb0: 0x3d24457cbff5abe03b9ff036,
            limb1: 0x476a99aef2022278b36563b3,
            limb2: 0x13062e0b1b2ee464,
        },
        r0a1: u288 {
            limb0: 0x1c9e78077e3ecaf91aaa719f,
            limb1: 0x7a3ca9de5d0b1eddc3724578,
            limb2: 0x22cfa0131519b7c0,
        },
        r1a0: u288 {
            limb0: 0xd9fbb20d555c33debb9d620a,
            limb1: 0xe0d63b1890b30c03f259d65b,
            limb2: 0x1567429c243ced1c,
        },
        r1a1: u288 {
            limb0: 0x4fa844ad60104497c8dd8940,
            limb1: 0xfb6163121786f125170895f7,
            limb2: 0x2738d3eb56ba29b9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa49626036ceb9e79c010d213,
            limb1: 0x2034a19c8d2299a288276585,
            limb2: 0x1857e9999338448e,
        },
        r0a1: u288 {
            limb0: 0x6ab145b55ecbc89b35b83c05,
            limb1: 0xe2b9f957c63f6755643079c4,
            limb2: 0xc304660d95d3a82,
        },
        r1a0: u288 {
            limb0: 0xefdaad3a57182db4636a4678,
            limb1: 0xd553598d9f5fd760d89cd767,
            limb2: 0x2b138a5d7d7d3f54,
        },
        r1a1: u288 {
            limb0: 0xc11c091779e08483d2bc91a5,
            limb1: 0xe2bfbf9268e472c8b1d985e7,
            limb2: 0x2ac521f3e259f17b,
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
            limb0: 0x6a7e8514ec7e14ab51347f6,
            limb1: 0xa08fbbbc1316d888e2d1d914,
            limb2: 0x17798fcf1c1bdb41,
        },
        r0a1: u288 {
            limb0: 0x61996d342577100c5af85ba0,
            limb1: 0x8f76931919b10fe27a94fc59,
            limb2: 0xb603d47d5e81ee6,
        },
        r1a0: u288 {
            limb0: 0xb0c9d26802bba0fd093f3807,
            limb1: 0xe805fb748a825ee22dabd34e,
            limb2: 0x1d4eb6eaa079c7f8,
        },
        r1a1: u288 {
            limb0: 0x53c4ff12dd8f1fe6ab56c157,
            limb1: 0x80ab12b9e41c62b1c9120df8,
            limb2: 0xe96e9ffe586df53,
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
            limb0: 0x4f52441421baec5db77c7f9e,
            limb1: 0x545b4601b15c1d6e7aa9ad7a,
            limb2: 0x2bc886c80383bcf8,
        },
        r0a1: u288 {
            limb0: 0xe6166a75c274d72df4645295,
            limb1: 0xc7b9f21cac0b4e3e3ea6130c,
            limb2: 0x2f76b718a6b299b9,
        },
        r1a0: u288 {
            limb0: 0xadbcdd15840837b649b1c9fb,
            limb1: 0x3b07b005cf75a4cfe78c2e6b,
            limb2: 0x19fa4c6706c8d54c,
        },
        r1a1: u288 {
            limb0: 0xd2c66d44af4bfaf9c3473d50,
            limb1: 0x9afa1d3140c835cba844106f,
            limb2: 0x23857f0fc21db26,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc81c931f11151a3f9597e52,
            limb1: 0x85507d1eafb5fba00da97f21,
            limb2: 0x66fea58275c1b51,
        },
        r0a1: u288 {
            limb0: 0x73ec638ac5e091b90ffc5b6d,
            limb1: 0x96d0721a2e2e20846498eed4,
            limb2: 0xaefedecdfaf2929,
        },
        r1a0: u288 {
            limb0: 0xef07e4360932296639e1f563,
            limb1: 0x693ed16ed538430ecdb0749c,
            limb2: 0x1381eb7b22596caf,
        },
        r1a1: u288 {
            limb0: 0xec870126cc8990b6171621a3,
            limb1: 0xbaf400e52f7e431939751b45,
            limb2: 0x1000fa77665d965,
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
            limb0: 0x777308eca6753a8b6d39f2c,
            limb1: 0xeabdcd44637f84cfede170cf,
            limb2: 0x104368d77be84777,
        },
        r0a1: u288 {
            limb0: 0x9dc4efaf0513f1a30108e217,
            limb1: 0xb44f93fdf58e0ad26cc87d4c,
            limb2: 0xac254139149a44,
        },
        r1a0: u288 {
            limb0: 0x9584281a9702bb99862f2a6e,
            limb1: 0x45e25778f3dbd614c222d098,
            limb2: 0x1317484602208d23,
        },
        r1a1: u288 {
            limb0: 0x64921318207c77159fecb592,
            limb1: 0x7455ac797cff381600b9bec5,
            limb2: 0x1f662db7443a63bb,
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
            limb0: 0xd107265947e303faec6b9a48,
            limb1: 0x639cbdbf1f598a4cc3468d06,
            limb2: 0xb3f83b6198da7e7,
        },
        r0a1: u288 {
            limb0: 0x1ff735658231a9a944533c6e,
            limb1: 0x817ba47a64a02ae9b955b165,
            limb2: 0x271929173b783e31,
        },
        r1a0: u288 {
            limb0: 0x54717d3e4cd8f5e736e123b1,
            limb1: 0x9e14b229fab938d5011f7cd2,
            limb2: 0x22821751e852e39a,
        },
        r1a1: u288 {
            limb0: 0x14e8740aa4cb8ef9e16a3f60,
            limb1: 0x6ea9e1c832e5f39d42d508e7,
            limb2: 0x1d6e2a44a7ccf677,
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
            limb0: 0xc6ed867db011213019ace655,
            limb1: 0xc882e795878b6f76ea290aee,
            limb2: 0x121ecbedeb78cfde,
        },
        r0a1: u288 {
            limb0: 0x59bf7a454d2c4aac47889726,
            limb1: 0x25f31e6c7ea5cd21081272b,
            limb2: 0x21b913ffa8adad0f,
        },
        r1a0: u288 {
            limb0: 0x771418d9a829de7f7515ddeb,
            limb1: 0xd6d35ae8060b659b6592444b,
            limb2: 0x2c67456fb155fbbe,
        },
        r1a1: u288 {
            limb0: 0xb1203167af52d6e3d1143b0f,
            limb1: 0x343d62dab3f21135e1fd62f5,
            limb2: 0xcbe668b818aa40d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6c94db4c7bd9e88e0fae30c2,
            limb1: 0xfefc02d1790b388ecd3fc666,
            limb2: 0xea3299dfe5e6940,
        },
        r0a1: u288 {
            limb0: 0xef6ece09c77ee5a6c5d55d77,
            limb1: 0xce69b41d751254376fccdd87,
            limb2: 0x1c8e2767843875f0,
        },
        r1a0: u288 {
            limb0: 0xe909362a81f8949c9950d6be,
            limb1: 0x601503e8009fe5fe38eece9f,
            limb2: 0x35964f000c693f0,
        },
        r1a1: u288 {
            limb0: 0xace5e2f28d5368130a2ee42f,
            limb1: 0x35eaa485adc5de44b385abf6,
            limb2: 0x20957604e2031a78,
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
            limb0: 0x434bec82d3b0de09b41fea1b,
            limb1: 0xcb78ba874b5af6d21d34a500,
            limb2: 0xb933b198c19d97e,
        },
        r0a1: u288 {
            limb0: 0x51b4e7a5c2e8945e8645ab05,
            limb1: 0x475a506626d5a9781689a52b,
            limb2: 0x1e8c1fc316d1110c,
        },
        r1a0: u288 {
            limb0: 0x1c1cd9803d3216c6ad0b3304,
            limb1: 0x640a0aa6a34ce1ecd284e47e,
            limb2: 0x2ddc5291310793a6,
        },
        r1a1: u288 {
            limb0: 0x404ebbc3399048f2b8d6c7fe,
            limb1: 0x3fa52daf96045419c82365e3,
            limb2: 0xa520a9327f23073,
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
            limb0: 0x67e99da3545fea46fbb60c28,
            limb1: 0xe2f67ac39a31adc7fe629cfa,
            limb2: 0x289b4fa48d0e4cda,
        },
        r0a1: u288 {
            limb0: 0x3830f4f30b0983a35718cd1f,
            limb1: 0x5d682f5db8bac81c37cf233a,
            limb2: 0x13f6357294fba66,
        },
        r1a0: u288 {
            limb0: 0x86a87016e20088d85a3d9ff3,
            limb1: 0x7d1903287c42737b36d14c50,
            limb2: 0x20a72682d4bc72e8,
        },
        r1a1: u288 {
            limb0: 0xa717fa70c2c77f80ea6cdf13,
            limb1: 0x45ad65c96ef90e5311b17594,
            limb2: 0xf086ea6d1bb0b6d,
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
            limb0: 0x49e5456ce5f26ec921161e5,
            limb1: 0xdfb8ab3fbc38166c5e3578b0,
            limb2: 0x25e75d2b0f7a158,
        },
        r0a1: u288 {
            limb0: 0xaf930ff40043a00572cad9d3,
            limb1: 0x755924a066e62d26923910b7,
            limb2: 0x522402ccf68009e,
        },
        r1a0: u288 {
            limb0: 0xb8f1975f996825a8dea6fe7b,
            limb1: 0x97be2a74d2ec4852fa3d5aec,
            limb2: 0x1138441e1840c502,
        },
        r1a1: u288 {
            limb0: 0x73713e82c8e20eb64a4fc072,
            limb1: 0xa8331126bcb9015570185972,
            limb2: 0x266e550e2ea33733,
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
            limb0: 0x71278c2ca8ca85cf7b2e3a72,
            limb1: 0x58829278fe60dc7c9b379f2c,
            limb2: 0x7b691b0babc8bb1,
        },
        r0a1: u288 {
            limb0: 0xaea1c4c2a90d64987e24fe96,
            limb1: 0x62d9b3cec5e12e7cb64d7e46,
            limb2: 0x1cc77e029c6bcc7b,
        },
        r1a0: u288 {
            limb0: 0x9e8e808dbe0cbbb6be0b9ca3,
            limb1: 0xd0a0c1a8695d525f02ee0c9a,
            limb2: 0xfe6c8d3d39942f9,
        },
        r1a1: u288 {
            limb0: 0xbbfc94165d1770f86af1b2f6,
            limb1: 0x684053fb43625bd4a1827715,
            limb2: 0x754c8cacf7d9ddb,
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
            limb0: 0xa06025bda23ee81a519cede,
            limb1: 0x6780fbddb9c6cbbe56006594,
            limb2: 0x7f91fd348f59fcc,
        },
        r0a1: u288 {
            limb0: 0xcfc1fe2b26ec76125432aaa7,
            limb1: 0x456474b06d64a33fbc524854,
            limb2: 0x2eb5ad291f3d5b52,
        },
        r1a0: u288 {
            limb0: 0x4b898ec5dcde820caae64920,
            limb1: 0xc258f059cca796584dc4d6ce,
            limb2: 0x1963d9a995278000,
        },
        r1a1: u288 {
            limb0: 0xde43964cbe7ef1873e647289,
            limb1: 0xc3b4987bf04d798abb4e435e,
            limb2: 0xb5a75e82dba4cfd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc0a62689cbb42cd39b7b94d7,
            limb1: 0x8bf1fe10d8ebfd31dcd04ae9,
            limb2: 0x4ffec95e26a3500,
        },
        r0a1: u288 {
            limb0: 0xa03fff72016c1c1e5a942321,
            limb1: 0x59b7ab2666aeb6ce287b9a9,
            limb2: 0x23d152795bf33edf,
        },
        r1a0: u288 {
            limb0: 0xea30621de02393355d9f6cfe,
            limb1: 0x91f76cd1590b4672e478fc40,
            limb2: 0x7b44b143e1bf0f0,
        },
        r1a1: u288 {
            limb0: 0x267c75fdcafd542fd43d480a,
            limb1: 0x650582182672f39db2d60e3b,
            limb2: 0x2b82d1a3119596bb,
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
            limb0: 0xe6d9a91bf7da119a97f3eb1f,
            limb1: 0x33e4ecca3deb7001cac40e57,
            limb2: 0x23b42ccd6ea8e881,
        },
        r0a1: u288 {
            limb0: 0xc484338cb24bb7227405dbc,
            limb1: 0x13ac6688bf06c838dd669ebf,
            limb2: 0x104836c9a6c5dd27,
        },
        r1a0: u288 {
            limb0: 0x32f32ade082e838629c48778,
            limb1: 0x3d95c0a7a7b00d7298546a1e,
            limb2: 0xb6aa064db163b8b,
        },
        r1a1: u288 {
            limb0: 0x9835d782907ab34a089158b2,
            limb1: 0x45220aedccf51ed47699b06b,
            limb2: 0x1982b7afd124123e,
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
            limb0: 0xde09a7c287c0fff87ae1541d,
            limb1: 0x310b0f37df2b98cfc5171f35,
            limb2: 0x1c9c9438def5d497,
        },
        r0a1: u288 {
            limb0: 0x39b9d5960782eed3ebcd18e9,
            limb1: 0x56661e5e621297bec0dd44de,
            limb2: 0x4af0fdc90c79414,
        },
        r1a0: u288 {
            limb0: 0x4efbff48a664ebeeb6d83b6,
            limb1: 0x3e03c75487b0285f25a76c4c,
            limb2: 0x144405027b27fa03,
        },
        r1a1: u288 {
            limb0: 0x311c60bc8be2cf9cedbeb43a,
            limb1: 0xa66fdd704918ca4aa20d95f3,
            limb2: 0x2cec2cd5a03753bc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e2367c8cbbebcefdccb5dc6,
            limb1: 0x974469b86578b106f92168ec,
            limb2: 0x2b40ca887ee67713,
        },
        r0a1: u288 {
            limb0: 0x5caa872dd74a3f402be4ae0b,
            limb1: 0x9a9b49519e8be8a8c7280412,
            limb2: 0x1fa05d5f05eb3392,
        },
        r1a0: u288 {
            limb0: 0x30ddaa3c4de64b0facf804a3,
            limb1: 0xbaf2946ac4f594b7833b3638,
            limb2: 0x2c41279649436c13,
        },
        r1a1: u288 {
            limb0: 0xdd18a24b8feeed184591cea5,
            limb1: 0xb9c9ec42b88721a208e6a714,
            limb2: 0x1e4fd15d20d61dbc,
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
            limb0: 0x978f478c9b42ccd5ec4e6b9,
            limb1: 0x35333ad9db9c647d551176fe,
            limb2: 0x2c3c44f0001b7df4,
        },
        r0a1: u288 {
            limb0: 0x7b46b428f4bbca696ce47c5a,
            limb1: 0x3b4c7e222b58106af024b09a,
            limb2: 0x1201200b18ba7eff,
        },
        r1a0: u288 {
            limb0: 0x6b416abb1364290f950f5848,
            limb1: 0xa01a026edc60883db875dfd0,
            limb2: 0x1495619c9d12201,
        },
        r1a1: u288 {
            limb0: 0x882fb2d15c87a1be05fc68a0,
            limb1: 0x4eeb2f0c28200e8650ce18b0,
            limb2: 0x19aab57f7346dac4,
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
            limb0: 0x60ff726c32966b5af8c557a1,
            limb1: 0xec606f896bd28fbbcd0e8431,
            limb2: 0xb5ae4ed306ab893,
        },
        r0a1: u288 {
            limb0: 0x684c94adb1bfdf2764280236,
            limb1: 0x589ff5a974d45c0b6ec2c4fc,
            limb2: 0x24440964c30d5833,
        },
        r1a0: u288 {
            limb0: 0xd5c46e886c56fed16965ae9b,
            limb1: 0x1513fab792a370797a293a97,
            limb2: 0x2ed334dff6ce30e8,
        },
        r1a1: u288 {
            limb0: 0x2c768ed35c6f959360f4fd0a,
            limb1: 0xc10d44f454b571849166d5e2,
            limb2: 0x1165e1e4c4127d69,
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
            limb0: 0xf53ef583af37b7ca71a9241b,
            limb1: 0x8e1cd621375f11c09358fde9,
            limb2: 0xcda636d0b0800ff,
        },
        r0a1: u288 {
            limb0: 0xf1761a2345c30dc96c73dbdd,
            limb1: 0x4d03d1a2d39df4da00567a2c,
            limb2: 0x18b79652b96a7d2d,
        },
        r1a0: u288 {
            limb0: 0xf745daa649af23cda51470ce,
            limb1: 0x74a6f6dbc7e9d1ed1f1f1a39,
            limb2: 0x24e81bbc3fca3ce9,
        },
        r1a1: u288 {
            limb0: 0x3c775aab520a295cc0075c70,
            limb1: 0x8f3d055449ec86119d719ddd,
            limb2: 0x18ea66d17a9d98ae,
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
            limb0: 0xa8d3a69c1b3b67771f95c126,
            limb1: 0xe58138cfdbcc775afa612e54,
            limb2: 0x2d7e2a170e8aeb86,
        },
        r0a1: u288 {
            limb0: 0xf36130350812873d89369a19,
            limb1: 0xd8b3d6b8d0b6581cea7fc90a,
            limb2: 0x1475322d131d239c,
        },
        r1a0: u288 {
            limb0: 0x2e703eede4aec637d109a593,
            limb1: 0xd03782bab8f3192a63f55d7e,
            limb2: 0x28f95b67384168af,
        },
        r1a1: u288 {
            limb0: 0x50817f497627105e3e4ba60b,
            limb1: 0x59a6219ad9795fb443f9a6de,
            limb2: 0x1a4f76d62466415e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe4d2135a352c75c095b0fb4,
            limb1: 0xbaf3a22276892d7d600475a0,
            limb2: 0x21436c338dad88b8,
        },
        r0a1: u288 {
            limb0: 0x166fd5931e11a2578f0782a6,
            limb1: 0x745a7b8f25d5ddc9a86327bf,
            limb2: 0x25ec2af893bcfece,
        },
        r1a0: u288 {
            limb0: 0xaddb6fd40d58e97c78de0414,
            limb1: 0x6bdafac53cb85445c1334401,
            limb2: 0x19e01b52fc876531,
        },
        r1a1: u288 {
            limb0: 0x6c303ce941ad036ecb767f7b,
            limb1: 0x44d26d171e4639949bdcb757,
            limb2: 0x2aee1594e14ed76f,
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
            limb0: 0x8d13ed45d5b264d4b9d0374e,
            limb1: 0xb2022fa0616851b82017fe01,
            limb2: 0xbac21716bee91a3,
        },
        r0a1: u288 {
            limb0: 0x6b183011f3758a814df88880,
            limb1: 0x87b04adf0778d0d9f9f5a748,
            limb2: 0x2648e9d3898cf5eb,
        },
        r1a0: u288 {
            limb0: 0x9ceeefe869617359956720ec,
            limb1: 0x5a8e37f401635eaa7fe643ec,
            limb2: 0x30119666fb4893a6,
        },
        r1a1: u288 {
            limb0: 0x44e3991b2283694d6a01cb8a,
            limb1: 0xb030220ae5da0877be19e762,
            limb2: 0x827e70b0475a85b,
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
            limb0: 0xb0ddd9c0ae688fe2e2fae111,
            limb1: 0xee775d99f73dc62145abbf15,
            limb2: 0xa644ab154d98988,
        },
        r0a1: u288 {
            limb0: 0x5c993a79d216cfea2118a022,
            limb1: 0xb5c70a6a810ce39983c4cd64,
            limb2: 0x7beb6cab2c247d8,
        },
        r1a0: u288 {
            limb0: 0xdd65fcbf893c20197d3eac31,
            limb1: 0xc3574634ca0ed3276c611ea0,
            limb2: 0x1bd99dc36901eeac,
        },
        r1a1: u288 {
            limb0: 0xa705a94a7382d47e739cb8c,
            limb1: 0x4dca508ff17c8b24d13e987c,
            limb2: 0x3efae53ca261ee1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x942429a2e8614e04a4992cde,
            limb1: 0xa7ccd436d314203db11eed9a,
            limb2: 0x89126b02985a2b6,
        },
        r0a1: u288 {
            limb0: 0xa7cc8cad52940423b5d65bd2,
            limb1: 0x883bf2f49c85dd340220bba4,
            limb2: 0x26c78ce8c1e8f9e2,
        },
        r1a0: u288 {
            limb0: 0x9d5f8e47fe8280b56888d78,
            limb1: 0x168595885977fd7cbb1c8995,
            limb2: 0x142aa6d080306812,
        },
        r1a1: u288 {
            limb0: 0x81f374fc5d07dda46bedebe4,
            limb1: 0xef7f77fc19ec23b751947253,
            limb2: 0x29289948dbfa67f2,
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
            limb0: 0x33cf8ad837adf2d7e414ea28,
            limb1: 0x7c608d2712e69446e2f6e396,
            limb2: 0x32709eeb531d659,
        },
        r0a1: u288 {
            limb0: 0x85b266c436dd4b18c3900ec8,
            limb1: 0x6a58727624ab487ced4ebd6e,
            limb2: 0xff469d83032ae2e,
        },
        r1a0: u288 {
            limb0: 0xe8c25fc490260b0759e0a582,
            limb1: 0xbd0c7ec3d5bdf5b354c88849,
            limb2: 0x63cc1887fb9b0b0,
        },
        r1a1: u288 {
            limb0: 0xab2083a74afa8b6ab171d64d,
            limb1: 0x546043b188e46786b98fa1e5,
            limb2: 0x1fbb754401d63c8b,
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
            limb0: 0xef8f4578706e5043e8751750,
            limb1: 0xf192b3173492cb4da30b16ad,
            limb2: 0x2145a7d113c2a5c,
        },
        r0a1: u288 {
            limb0: 0xa3992a459706815f0e6b475f,
            limb1: 0xa6bac9a5ba0cc65ff3677e3d,
            limb2: 0xa7c7ebda4ddd5a8,
        },
        r1a0: u288 {
            limb0: 0x550bea4721c18bce532b33f1,
            limb1: 0x6e50bfcc506908dbc29cc48e,
            limb2: 0x1ea2071f306e988e,
        },
        r1a1: u288 {
            limb0: 0x663ca59aeee488d2dbf4667,
            limb1: 0xa3c8f7a0c1f7803aa2b7cf2d,
            limb2: 0x100faf1ec75a6e32,
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
            limb0: 0x71150cdd1ac0f4abf8dc0ef9,
            limb1: 0x354760eca520fcdce8d80050,
            limb2: 0x14148bf65168f244,
        },
        r0a1: u288 {
            limb0: 0xbe5d4baf1199839664998874,
            limb1: 0x68b51f49c78ab295707cd237,
            limb2: 0x259207164abdf475,
        },
        r1a0: u288 {
            limb0: 0x165776e1bb6116aa7bea35f,
            limb1: 0x91ca4ea6aebb7fca930dc920,
            limb2: 0x133fa3bf52612e2,
        },
        r1a1: u288 {
            limb0: 0x7952ca4ab1d2b5fd84ec9ded,
            limb1: 0xcf9a1b441612220197bfa3e2,
            limb2: 0x16801f2d3b340a81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc91fb05f7cabbf79466cfb7d,
            limb1: 0x3bec56b50333fec699cfb56b,
            limb2: 0xb9c8d2ca17c5d9f,
        },
        r0a1: u288 {
            limb0: 0xc782d478cea605c133b7d0e1,
            limb1: 0x207c16f90331ea09e7cb02f8,
            limb2: 0x3000ce7d57014e6f,
        },
        r1a0: u288 {
            limb0: 0xed0d9ffd24ad235ba20e4187,
            limb1: 0x3c7554cf3374f28b29d9f670,
            limb2: 0x10cdd29f826527f2,
        },
        r1a1: u288 {
            limb0: 0xf8e5cb7bf043ccacb65893d8,
            limb1: 0xea1b99e875d95970028b4f62,
            limb2: 0x2480d0c882f92d4f,
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
            limb0: 0x448178f9f489519d9458d4f4,
            limb1: 0x944ce3b38c36be3c5b717332,
            limb2: 0x25bd6aebf01f5202,
        },
        r0a1: u288 {
            limb0: 0x97526f27d135aa54b01ae2fd,
            limb1: 0xe78f0539c1b99ff83feeba01,
            limb2: 0x2748e12ffc6083de,
        },
        r1a0: u288 {
            limb0: 0x75c668c2b99913aabca58e22,
            limb1: 0x33302e1e60c634f0e730119,
            limb2: 0x104d5f2a5bf3d70b,
        },
        r1a1: u288 {
            limb0: 0x603604a981f2480eeb1329c9,
            limb1: 0xddb2e52463e21e31e3a0f3d6,
            limb2: 0x20aa92e905abf8cc,
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
            limb0: 0xabb06f75ad5997b484e6c9e2,
            limb1: 0x3c5de50beaeb0342cf0ad78e,
            limb2: 0x29cf73ff16a1b154,
        },
        r0a1: u288 {
            limb0: 0x5f44b46d28353f0a9494a4b5,
            limb1: 0xf3a68d3cfac0c4a4e831aced,
            limb2: 0x1755e7ebb25c6b93,
        },
        r1a0: u288 {
            limb0: 0xec166c5cda624e5853f549b,
            limb1: 0x9171c3f6f7a38de681ee9eda,
            limb2: 0x4e1158beaf77a59,
        },
        r1a1: u288 {
            limb0: 0xf4e46c2a2c804acd0de63688,
            limb1: 0xba77e64d09bc6d18e523f4da,
            limb2: 0x2d84c406a4f7696b,
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
            limb0: 0x785bb0feeac483bd6a8bc0e7,
            limb1: 0x1cab6208a727cbd78370b637,
            limb2: 0x17a2d9fa6a07655b,
        },
        r0a1: u288 {
            limb0: 0x244be1a3aeb9a04f7c81fa03,
            limb1: 0x33ca7f0c84c93e6b67d8bdad,
            limb2: 0x24e030971d419629,
        },
        r1a0: u288 {
            limb0: 0x8b94df93ed30588092894831,
            limb1: 0x890312748290e49eda58cc26,
            limb2: 0x7f535765fdce145,
        },
        r1a1: u288 {
            limb0: 0x6211324d9f055343ce2afab1,
            limb1: 0x9923397c9bae7194e45bff01,
            limb2: 0x47e5d55d7108469,
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
            limb0: 0xe9191fb5868f643ede8fd1c5,
            limb1: 0x9b02043096c91da73c510fbe,
            limb2: 0x2361d64588a47268,
        },
        r0a1: u288 {
            limb0: 0xf83cc084e6509ebf382643be,
            limb1: 0x1a1bbfc258a4061f9e5825ea,
            limb2: 0x1b0cde16fef98512,
        },
        r1a0: u288 {
            limb0: 0x92047d8f3be4859deae475a5,
            limb1: 0x2c08fa758c93d599dd8d5733,
            limb2: 0x1a011eaaee4fc9f9,
        },
        r1a1: u288 {
            limb0: 0xaa5be5aaaa24026b0eafc90d,
            limb1: 0x12802cf43ffbfce5fb9385b1,
            limb2: 0x24edd3fdcf4c82b1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcc39714f21c7a9234cb84343,
            limb1: 0x437a1a34b827cddf544ca6a4,
            limb2: 0x25ef5064e95191d4,
        },
        r0a1: u288 {
            limb0: 0x34d8d51f15a3f9ca626973db,
            limb1: 0x54e27696c2e49e6ef32630,
            limb2: 0x141eea8a79df75a4,
        },
        r1a0: u288 {
            limb0: 0x6e43be17b68f211d90d44cf9,
            limb1: 0x5427cd2c3234ccd08f481ddb,
            limb2: 0x1d35131befa91c53,
        },
        r1a1: u288 {
            limb0: 0x9dc9fcfe19f1fb245f0bc5b5,
            limb1: 0x232eb471472aaf012c56acf7,
            limb2: 0x3c0193723078ae2,
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
            limb0: 0xa79d1d880a71684fe49c7599,
            limb1: 0x54ef14e09c7c293becf9a878,
            limb2: 0x27e4a7202c6be89d,
        },
        r0a1: u288 {
            limb0: 0xc53271a45dbe612f5ba2ea13,
            limb1: 0x79ad561581cdbc9eb58bde06,
            limb2: 0x247b1f9a213f91f,
        },
        r1a0: u288 {
            limb0: 0x6b0a3c9636fd1a4a8f8950a0,
            limb1: 0x2496a0dc6a8e335c40a585e5,
            limb2: 0x22446fb01c841c76,
        },
        r1a1: u288 {
            limb0: 0x9441b4dba179295a59909a64,
            limb1: 0x2be030e7a040f70f39d4f817,
            limb2: 0x2796a74f7d76e715,
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
            limb0: 0x123f7c0d5e153bbe65c14bf9,
            limb1: 0x22cb5dc65f0e24b3e770c337,
            limb2: 0xa24a8976b549222,
        },
        r0a1: u288 {
            limb0: 0xf7d686ac8cc1f548443115ad,
            limb1: 0xd9ccd958abc50dce1fc0bbe2,
            limb2: 0xde90a004219f637,
        },
        r1a0: u288 {
            limb0: 0xbbc9dc68ec4f8b44e1b04b0b,
            limb1: 0x33050f4d023a34803afcb136,
            limb2: 0x2bc34471d1135761,
        },
        r1a1: u288 {
            limb0: 0xcb9b8df3f1cd5b3825722f62,
            limb1: 0xae149e3bc9b8fff35d85f518,
            limb2: 0x2a10fe6f7e52d1c3,
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
            limb0: 0xd0247ff36d21fcdcde9307d4,
            limb1: 0x222bdf84c57ecad949c7c2af,
            limb2: 0x1e70ff2d75c85c86,
        },
        r0a1: u288 {
            limb0: 0xf94eff7d677ef4ac91390d4c,
            limb1: 0xb273e62b1b6ec5836f5274c2,
            limb2: 0x580ebf46b12b05f,
        },
        r1a0: u288 {
            limb0: 0x997cc2eb48bfb2eb82e565a1,
            limb1: 0xc5e432565b02f515a313e73d,
            limb2: 0x267dff3c4f07a505,
        },
        r1a1: u288 {
            limb0: 0xde04946f63a5eddd74f15742,
            limb1: 0x40a04da4a3b8a46be2dbb82e,
            limb2: 0x2fdba32a29bc1119,
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
            limb0: 0x29f8c2dcb2488fcd87f5300f,
            limb1: 0xddc72d351e847bd2c14fe60b,
            limb2: 0x1efba7960bc9a25f,
        },
        r0a1: u288 {
            limb0: 0x59106369b4cf6783a1e24460,
            limb1: 0x4698a4970e21f4edb46b2725,
            limb2: 0x217764f639bab0d0,
        },
        r1a0: u288 {
            limb0: 0x89b634447de5bec44ede3ea0,
            limb1: 0x1f691939aea33d47f88607af,
            limb2: 0xb5d72fb9d6edb3,
        },
        r1a1: u288 {
            limb0: 0x1bb914c524429f7992734370,
            limb1: 0x68ec6f0bbaa6040e6f1f7e6d,
            limb2: 0xc2078f6dcaa86a9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd53ca0c425a39c9f07c40287,
            limb1: 0x53adce0ae45bb9ada0ab3063,
            limb2: 0xbde72e4b9275416,
        },
        r0a1: u288 {
            limb0: 0x9a98545540342104c1091139,
            limb1: 0x13a76d61905d023628f36473,
            limb2: 0x17c4c873d9617b53,
        },
        r1a0: u288 {
            limb0: 0xbb22debcb1a0c2f6048bfb3,
            limb1: 0x878f43edede54be74e505b68,
            limb2: 0x2e1ddf059b6fa7b0,
        },
        r1a1: u288 {
            limb0: 0x602132563f866897379d6ee3,
            limb1: 0x6fa3c29731baa0346d81f8d,
            limb2: 0x8046dc3934a799b,
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
            limb0: 0x4ed79f729b5027217b24c61a,
            limb1: 0x12e6ca29ffc4fb25b0004675,
            limb2: 0x35a10dbfdb243e1,
        },
        r0a1: u288 {
            limb0: 0x107199850b75a0b2858b5546,
            limb1: 0xb978d772f8ceebc21b6e73bf,
            limb2: 0x156345c0680c6870,
        },
        r1a0: u288 {
            limb0: 0x9c33104b1a8390e55bc221d6,
            limb1: 0xe5bd1388a1da521fc87862a,
            limb2: 0x1e62c1edbd73e965,
        },
        r1a1: u288 {
            limb0: 0x7a57df06c1fd3c679de7538c,
            limb1: 0x931b4e3db44b2f016317405c,
            limb2: 0x21cf783f93e660c0,
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
            limb0: 0x932a87f8b4c75ddaf7b9c89,
            limb1: 0x1b147f9da402f013578a4314,
            limb2: 0x2b79a8030c31e4c9,
        },
        r0a1: u288 {
            limb0: 0xaa5037711359954bc681fb0b,
            limb1: 0x25e165a8273e2f5da49a2c41,
            limb2: 0x16fcad4316f8a69d,
        },
        r1a0: u288 {
            limb0: 0xc409dbb1a21132422ad2b7e5,
            limb1: 0x667a091be33b34146e1be493,
            limb2: 0x27432e0141b87717,
        },
        r1a1: u288 {
            limb0: 0x5bd32914acf8b47342b16036,
            limb1: 0x6111edfbdaf54c78569c1e97,
            limb2: 0xad93e68bd04a454,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x68c17de8d88fdb55ddc9467b,
            limb1: 0x4ff824629e131293d55094d1,
            limb2: 0x14b9d9abee3b588b,
        },
        r0a1: u288 {
            limb0: 0x490a3a17d7dfb803852187,
            limb1: 0x38684aea56585551dc1baf21,
            limb2: 0x230f96ad3f5ed85a,
        },
        r1a0: u288 {
            limb0: 0xfc54e1434db765de45423938,
            limb1: 0xc0c047b4d9a9bab4cc9fb62,
            limb2: 0x124b7329106399f2,
        },
        r1a1: u288 {
            limb0: 0x44d8381beca21007da6b9aa2,
            limb1: 0x2b7f56a0994cc79478242bed,
            limb2: 0x1fce75488425bf4e,
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
            limb0: 0x8d0d459a13b52f419536b2f5,
            limb1: 0xef1bec2633a3f5a721299e18,
            limb2: 0xaec9964ce998c78,
        },
        r0a1: u288 {
            limb0: 0xc36a8b9a02c95ab9efe2d359,
            limb1: 0x6307c28775bdd83e35e92007,
            limb2: 0x303b59e18349aea1,
        },
        r1a0: u288 {
            limb0: 0x71f0107287b185f34da19782,
            limb1: 0x9b28e294c1736ef998779b10,
            limb2: 0xe25ef96e1c5e7a9,
        },
        r1a1: u288 {
            limb0: 0x7069a51eaa40c50c563314ed,
            limb1: 0x235eaa63417147f1cf18dcaf,
            limb2: 0x1bcce1cfecccc660,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9f55c4e4468f6c8bbac90725,
            limb1: 0x2d93d46e0e078cb18b515976,
            limb2: 0xffbd42e13df4836,
        },
        r0a1: u288 {
            limb0: 0x929e8d5325b0c01f33dc9f09,
            limb1: 0x8e655eda84a2d0017c8c2d43,
            limb2: 0x12cf829fe4510e52,
        },
        r1a0: u288 {
            limb0: 0xeadd2adb0f2ddc24573cada7,
            limb1: 0x398a90a886404569b5495941,
            limb2: 0x2a60a3006b9a2d27,
        },
        r1a1: u288 {
            limb0: 0x2c728d84f03a2da76ef0adea,
            limb1: 0x93ada1c0c6922def98cc0e2b,
            limb2: 0xf0f01ae637be1e1,
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
            limb0: 0xa5cc3aa8881387f5920fff4a,
            limb1: 0x50ad32a6bb0925ace116cd32,
            limb2: 0x28e6b7c8b6bbd646,
        },
        r0a1: u288 {
            limb0: 0xe5e2eafcddecc570883adf9a,
            limb1: 0x7b076f14c0171a3d15bb34ef,
            limb2: 0x78422ea149626a8,
        },
        r1a0: u288 {
            limb0: 0xf62d9d7e4576b01c3c0ebf86,
            limb1: 0x86399bf9bbdd172723b08a80,
            limb2: 0x1555a785de571335,
        },
        r1a1: u288 {
            limb0: 0x72b008214b4c574089ecf118,
            limb1: 0x218eb116139341c8f368c2dd,
            limb2: 0x2ba8c2bb452b0d76,
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
            limb0: 0xc3a62155567568c23bbc2cab,
            limb1: 0x25157ab6a7f8f5bfb06ea254,
            limb2: 0x1343ddeef764a1b4,
        },
        r0a1: u288 {
            limb0: 0xbc80d78f9da81b41943c2712,
            limb1: 0x1fba89297918f9b3fc869382,
            limb2: 0x4e009892d450dec,
        },
        r1a0: u288 {
            limb0: 0xb48bd7abbf03bd6056a571ef,
            limb1: 0x7f8f11b1db2682c11bfa0b09,
            limb2: 0x260388a2cdb77261,
        },
        r1a1: u288 {
            limb0: 0x78de3fee7cf273a4eff595d,
            limb1: 0x379ff03b30a6148dfd77572e,
            limb2: 0x1e40fd8c0c1798c7,
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
            limb0: 0xd45e28524612396b5d03b6e9,
            limb1: 0xa4309b68bb7fc94659a2132e,
            limb2: 0x2e283a4c13178d12,
        },
        r0a1: u288 {
            limb0: 0x187f6bed42e59677c9ac526,
            limb1: 0xc015072467f2f66e50e2ca00,
            limb2: 0x122c4a78548ec359,
        },
        r1a0: u288 {
            limb0: 0xf7df7e28f7e8f50e522324ba,
            limb1: 0x2e3bb9891604f431c32b19b4,
            limb2: 0x189a3461e44dc4f8,
        },
        r1a1: u288 {
            limb0: 0xd41fb223d4d82f7d38ee1051,
            limb1: 0xee8ec96e2b3d98c5a7e52d2a,
            limb2: 0x284b2f1bea7b36a1,
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
            limb0: 0xc001a92b0ce3a023d95968b0,
            limb1: 0x47cf88b85cb8bffd2ac55def,
            limb2: 0x52948f0a2ade57e,
        },
        r0a1: u288 {
            limb0: 0x2491deb1fa02cd5f10fe1f6a,
            limb1: 0xacbd0bfa22a1c8e84d77d205,
            limb2: 0x1d329e8d495872de,
        },
        r1a0: u288 {
            limb0: 0x6a9d1ef0a0817821aa94991d,
            limb1: 0xc1237450120871e5e30305c6,
            limb2: 0x3977229134a063d,
        },
        r1a1: u288 {
            limb0: 0x37b52c0123ebe4f34e158857,
            limb1: 0x40f1475af865bfcac3f61d25,
            limb2: 0xfd7d3c6f072be0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f021a55456d90d03a3ebfb5,
            limb1: 0xf3f9dbdda9979561334b72f0,
            limb2: 0x2341018edbc60340,
        },
        r0a1: u288 {
            limb0: 0xe7e4025709e897fc96368391,
            limb1: 0x8f1bd3500f545201cc9380de,
            limb2: 0x76ad228ad185471,
        },
        r1a0: u288 {
            limb0: 0x64fd686743280076b9e6cd62,
            limb1: 0x1e3f150ebf58ff2454c8df34,
            limb2: 0x1077ee426016d283,
        },
        r1a1: u288 {
            limb0: 0xd02593d5c5dda821479e34c,
            limb1: 0x371d279461ce005fd3209c83,
            limb2: 0x168d6a34808a5f13,
        },
    },
];

