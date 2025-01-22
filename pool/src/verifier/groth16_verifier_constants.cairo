use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0xf2a6fed9ded1ff0bb324988e,
            limb1: 0x29659cc062a1f3f5fd059d07,
            limb2: 0x2773d4cf96524321,
        },
        w1: u288 {
            limb0: 0x287b4265437954f5f719ca5c,
            limb1: 0xa873e7b77f56c3e090c271b0,
            limb2: 0x202875e773a6abcc,
        },
        w2: u288 {
            limb0: 0x8f82f8d12c472a31f4918ecd,
            limb1: 0xc45d3a6791143cc8012bba1b,
            limb2: 0xf2556635876b0b1,
        },
        w3: u288 {
            limb0: 0xc6ae66a50ef7d85bff1f6a86,
            limb1: 0x737ce63a9e35f91e1be57396,
            limb2: 0x2994d5656357589e,
        },
        w4: u288 {
            limb0: 0xea4feeb5915e62e3c80aed71,
            limb1: 0xc00ca6ee9b473bc7d127fadc,
            limb2: 0x25337ade54cb75f9,
        },
        w5: u288 {
            limb0: 0xaca8cbc566bd95236b365343,
            limb1: 0x4c1602ae6bff115cc53bccf6,
            limb2: 0x859646b902c91d4,
        },
        w6: u288 {
            limb0: 0xad5cefead9626dcf36752de9,
            limb1: 0xf9a79a9862c0b433ee60acd5,
            limb2: 0x208dff2469ddb2da,
        },
        w7: u288 {
            limb0: 0x6f5be6a9e7bf481a1ee828a,
            limb1: 0xdacb1a29ce4679965495cb43,
            limb2: 0xf7a050ef182a77f,
        },
        w8: u288 {
            limb0: 0x1dc656fb67f188dd1247e638,
            limb1: 0x4190ad7aa59952ae95d5617,
            limb2: 0xe5f0a4f5c7f056b,
        },
        w9: u288 {
            limb0: 0xe511e69bda86758071c7e600,
            limb1: 0x90ec55ae7f781143e4529e,
            limb2: 0xf67cdaf24941de7,
        },
        w10: u288 {
            limb0: 0xbda91035abc02748b6dc3117,
            limb1: 0x99d56667cec1ff7bf6cd1639,
            limb2: 0x24e78ef139b20f75,
        },
        w11: u288 {
            limb0: 0xeeacdb50d82fc0675d80c2dd,
            limb1: 0xa57e2b51bd6857405b990980,
            limb2: 0x300f1f198c94ef61,
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
            limb0: 0x97324a3528be0d05bc6df5b3,
            limb1: 0xf80d2f599d30e330007b737c,
            limb2: 0x2e4271a59817376f,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xe114c6a2bc15ca8d2190ef23,
            limb1: 0x3ca8b23878e733b84d096496,
            limb2: 0x4c129cd93a73716,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xb784fcdc8300f8fedb4544fa,
            limb1: 0xf7c5641f65d8eaa7c205f0d9,
            limb2: 0x2fbe86e852818fda,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x66a359652c1dbf49a5a51f4,
            limb1: 0x11388aa4aaefdd0eb92ed55c,
            limb2: 0x39fd3e9afb4d19e,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x29556ce3f19aa4eb8736b54d,
            limb1: 0x9553f890276737c0bb5ddfa2,
            limb2: 0x1e0ec8fd4a01a7ec,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x55b6c72bc646630c46d9f740,
            limb1: 0xccd52a5b0bccc7d74e05661,
            limb2: 0x241446d3660bf080,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x38d6936239b2370bf0167f27,
            limb1: 0xba2dc009acb02f833feadc4c,
            limb2: 0x2c069d96f5fcb778,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x4cdd6a3a8f2757c18e8e386c,
            limb1: 0x76ecc65c7e0a28fade8b4599,
            limb2: 0x19cbea383955a6a7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x12f981a9b8431eec7803cd7,
            limb1: 0xd01fcf62bcdf8a57a36f82b3,
            limb2: 0x3c2461030a995aa,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x93ac4eccc667fb837b183a99,
            limb1: 0x6c176e2a860351dedbd69214,
            limb2: 0xb0e4594e261628d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf770f98afdd6175bfa59c859,
            limb1: 0x387a931c2f0c429a72426bc5,
            limb2: 0x196efe9d70d18e2f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe07b3b64e8750614813e11aa,
            limb1: 0x4403452d8f0b363986a8eee6,
            limb2: 0x11855f4fde320807,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x8f9bedca68bda97db025f17c,
            limb1: 0x5b73efa8d72ff497c49dd3de,
            limb2: 0x2990aff508b8315f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x5b8ba432b77c06c79230590f,
            limb1: 0x4c12aee5e9bed2fd7dae6760,
            limb2: 0x263c8335d72dbd99,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x14a7cb2dea099f642c3241ce,
            limb1: 0x7157043c950c6b7b888a4c8,
            limb2: 0xf5ccb88a9b18637,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xfb07fb37a7079f7f59ed2e9,
            limb1: 0x29770ad7b4bd194876e3541c,
            limb2: 0x24e77c35694c2667,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x4c6d997da65704d141daf343,
            limb1: 0xc0de7de8ad25a96da5a5b463,
            limb2: 0x75920c00eb1f723,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x43f4d410471679d8494450ed,
            limb1: 0xc0fde869221494f7427a7e1d,
            limb2: 0xef2c6377e81c265,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xa37f362935f90daa72684352,
            limb1: 0xf494ac84908fd27872d4dd13,
            limb2: 0x292cbdda50617659,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x9768da6fc7f8e7a7630a661,
            limb1: 0xc0ef9562f1edb008ce4ecc8,
            limb2: 0x8a7d8a4bd955fe9,
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
            limb0: 0xf8dc818504c17983074588dd,
            limb1: 0xf154bfedef6c22acce5c1364,
            limb2: 0x227b12d96154fe72,
        },
        r0a1: u288 {
            limb0: 0xf802fdf3fa4a9f1f76e587a7,
            limb1: 0x7d679cea1f85d32a3eefe480,
            limb2: 0xd48266dbdfcd20b,
        },
        r1a0: u288 {
            limb0: 0xc07dad6838ca8e83dd00850c,
            limb1: 0xd0de2b6f96266eef1ad2b3e8,
            limb2: 0xd9534526e73d330,
        },
        r1a1: u288 {
            limb0: 0xafebe69b30756a289f193e20,
            limb1: 0xf4265d78dce538ab2bbd15d4,
            limb2: 0x2272cc115ea4496f,
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
            limb0: 0x6f954908375f1293d137746a,
            limb1: 0xc6fb85c8921535b0c925572c,
            limb2: 0xde93b997fdca1b6,
        },
        r0a1: u288 {
            limb0: 0x706ecc9941d5ecf7619775a0,
            limb1: 0x3ae8a8cc61fb853358918610,
            limb2: 0x231c28052334ce1e,
        },
        r1a0: u288 {
            limb0: 0xa7f41d250355fd92fb7c783b,
            limb1: 0xe7721a46eb5ae96e7caeb6a8,
            limb2: 0x22cf1a2072bdccf8,
        },
        r1a1: u288 {
            limb0: 0xb885e3f20bab21ee3963bf27,
            limb1: 0xc429e83da49c1fb26bc454bc,
            limb2: 0xdf18261828d56b9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbd3ef0ce744b0d974ae5d32c,
            limb1: 0x30fb3fc02b8e7a7c7b43186,
            limb2: 0x1c0806b422ec3bd3,
        },
        r0a1: u288 {
            limb0: 0x392cf378502e01660d91f2b6,
            limb1: 0x6a9d9ffaec75f7c675f1fe92,
            limb2: 0x1cf609bea48ad379,
        },
        r1a0: u288 {
            limb0: 0xb214ec9d1d337cd511fb4fec,
            limb1: 0x79ea1c2bca0a83dc1b0a59bf,
            limb2: 0x214683129077efe6,
        },
        r1a1: u288 {
            limb0: 0x974c6a9854a57f99687d293d,
            limb1: 0xe520a333f5ed98fbd4240605,
            limb2: 0x2518eae360486170,
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
            limb0: 0xa8e70c80284a051ed30cf2d1,
            limb1: 0xb284144c325cdc8bba43020f,
            limb2: 0x1f6aeb27d29a6c32,
        },
        r0a1: u288 {
            limb0: 0xa2f3b39b8b34bb063b07b45d,
            limb1: 0xeecd3de5834c8b0722919193,
            limb2: 0x1ef36a32f1f5a3bd,
        },
        r1a0: u288 {
            limb0: 0x1720be72de8a459f4f02668a,
            limb1: 0xe3125fa291d39f6ad857e86f,
            limb2: 0x2d25d4db57033287,
        },
        r1a1: u288 {
            limb0: 0xcc896303e0bdb62f348b6beb,
            limb1: 0x4bc7ad48c8c89a611b0bd48,
            limb2: 0x171828b070ff8ec1,
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
            limb0: 0x791540bb046f398a6a04e3f7,
            limb1: 0xbf09361ffe8138808caecf68,
            limb2: 0xdf797d71bd56e8a,
        },
        r0a1: u288 {
            limb0: 0xd9d13a3286d1204c4b48ef88,
            limb1: 0x924d3018e199090d0c28b626,
            limb2: 0x18345f159be103b5,
        },
        r1a0: u288 {
            limb0: 0x52d722f3079af61af4f87d95,
            limb1: 0x72a52c44a7d9f21f1cf5f7f8,
            limb2: 0x2cf6c4a3b6d86dbf,
        },
        r1a1: u288 {
            limb0: 0xeaa77d5f208922589a927ec6,
            limb1: 0x356efb2f60a06e5dc499ba3d,
            limb2: 0xb2b5afdf9e04a03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x90dd30f4e52dbed6a4ce78ff,
            limb1: 0x97a343fc90a50b7392d039dc,
            limb2: 0x1ac0964d174b8109,
        },
        r0a1: u288 {
            limb0: 0x8dfa92138a491a51bba4243a,
            limb1: 0xab144593dd31ae062b901e6e,
            limb2: 0xd6d127a6c91f8c3,
        },
        r1a0: u288 {
            limb0: 0x52c651d65b4efe0f6f7886f2,
            limb1: 0x219a10ce0ebe906368e0b9e8,
            limb2: 0x2045372f08441954,
        },
        r1a1: u288 {
            limb0: 0x4f0b2152199cdcf9e3dc7911,
            limb1: 0xcd316fcaf0949332600fc01c,
            limb2: 0x1608f9bc9d1ce486,
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
            limb0: 0xb8917f54e56d2e3444b434a8,
            limb1: 0xeb6c1d83cb5565b1d216555c,
            limb2: 0x2d1b7325ae5bf634,
        },
        r0a1: u288 {
            limb0: 0x86a5673f467f80216fbee703,
            limb1: 0xc0ce46e74eacf123a0c772ba,
            limb2: 0x2c4440dcbf355519,
        },
        r1a0: u288 {
            limb0: 0x2c0adfe94571bac6d8c69327,
            limb1: 0x6ad6487cda785f9a58ecb4ea,
            limb2: 0x318718f994c5c6b,
        },
        r1a1: u288 {
            limb0: 0x5f1758d24af72628295d31c5,
            limb1: 0x79ab5ad8f4eac52d865d4252,
            limb2: 0x15ad43fccb012aad,
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
            limb0: 0x2c5373e3940298d4f4144480,
            limb1: 0xf670947353be940da2889304,
            limb2: 0x13f19e277cc41be0,
        },
        r0a1: u288 {
            limb0: 0x8b4d3408571be8eee637e61f,
            limb1: 0x3046cafc7951f0c6a0e16217,
            limb2: 0xf006912e6a737cb,
        },
        r1a0: u288 {
            limb0: 0x48b39413b6ad19df503815cd,
            limb1: 0x23519d12f8beec11d8e839c8,
            limb2: 0x2c7c1e6f0d4b98e5,
        },
        r1a1: u288 {
            limb0: 0x984d00311b9d40683dd92de5,
            limb1: 0x9f4a3ad1235cd126bfab6865,
            limb2: 0x251fa06a14771954,
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
            limb0: 0x10b9df49488509d033e744f7,
            limb1: 0xfc164c6d38669270f38e1ea7,
            limb2: 0x2af020fdaf831b72,
        },
        r0a1: u288 {
            limb0: 0x79ef645579bbd52e8e1d49b,
            limb1: 0x2ba8fca0def84ea1f634d739,
            limb2: 0x205d88075146eeac,
        },
        r1a0: u288 {
            limb0: 0x9906da89c3b3e5381564808c,
            limb1: 0x89d500b5d3ac264c706371e2,
            limb2: 0x1ca6aef728b97130,
        },
        r1a1: u288 {
            limb0: 0xc93113cca474ca3dcdd9e619,
            limb1: 0x9a17178b620ae1259364d0e1,
            limb2: 0x2892e029b58f9f9d,
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
            limb0: 0x47e10830d0f4810d81a6c119,
            limb1: 0x70ce199d68ca07f81527afc5,
            limb2: 0x216ffa3024b7d3a7,
        },
        r0a1: u288 {
            limb0: 0x94c232e7277ba5069b18fc54,
            limb1: 0x28513776b78bd1ff8ffbd509,
            limb2: 0x11335cd7ad373002,
        },
        r1a0: u288 {
            limb0: 0xdaa56178719f28531fd8ad96,
            limb1: 0x367bd1e12418a022781ffd66,
            limb2: 0x108e9f52c71750cb,
        },
        r1a1: u288 {
            limb0: 0xb85b055bffe5e9ce92edd0a2,
            limb1: 0xb1d4fd9b61a314cb744cb690,
            limb2: 0x15c8a4a035e2b001,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc97630f0dd769a217e4c56a9,
            limb1: 0xcfc08326fc32b64dfb8a1228,
            limb2: 0xebc7fe1481e485a,
        },
        r0a1: u288 {
            limb0: 0xd9229473e602933a884dd02b,
            limb1: 0x3651a518d1a76ddf430ad7ec,
            limb2: 0x4c12aab154bd75f,
        },
        r1a0: u288 {
            limb0: 0xf8794ff31bdd408d5a2b6f3,
            limb1: 0xf0829c16ad3a6351eede014d,
            limb2: 0x4dfcc03f537628a,
        },
        r1a1: u288 {
            limb0: 0xaa2add0bdc1043269b21e3ba,
            limb1: 0x28073f4c4b85d8e50cac18ff,
            limb2: 0x1cd9e3714784a6e1,
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
            limb0: 0xf282c743708f06d6d0a4d7fb,
            limb1: 0x1fb8473ec5a34cb1fb018d5b,
            limb2: 0x159907f7aaf8f2e0,
        },
        r0a1: u288 {
            limb0: 0x775c9807b7621fd70fa86050,
            limb1: 0xf57f1d144b1c8495d2ce83ee,
            limb2: 0x204d93967d5129b,
        },
        r1a0: u288 {
            limb0: 0x756754aae9ab4a1948e4cd0f,
            limb1: 0xd7d15e07eed01b01fbeb8e14,
            limb2: 0x12655e7c3678e85,
        },
        r1a1: u288 {
            limb0: 0x31f227520d1d56db32197c5f,
            limb1: 0xe5d2a3da251c05164236f40c,
            limb2: 0x2c82a93f6374fd26,
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
            limb0: 0x7f8b268432ac28977654c357,
            limb1: 0x6c053ad89b08092344808022,
            limb2: 0x203888a4785e20a6,
        },
        r0a1: u288 {
            limb0: 0x3e2d03b87dc81b04aaa37295,
            limb1: 0x1c43b3eb1f38f2f95d615211,
            limb2: 0x103a64f1df495579,
        },
        r1a0: u288 {
            limb0: 0x76a3f803026a65998daa2804,
            limb1: 0x4a301c57cf9a55ded129ce76,
            limb2: 0x19eca8b8d837ef3d,
        },
        r1a1: u288 {
            limb0: 0x69ccfaa6b5e5c3b66e39fc8b,
            limb1: 0x4bbb9772d606d6548108dca6,
            limb2: 0x1d7024c75a0aeb32,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x59dc2e7e3b7a15479b077254,
            limb1: 0xb5f6dbc00133ef66f8086967,
            limb2: 0x2d2d3dd3895d70f2,
        },
        r0a1: u288 {
            limb0: 0x6eb5fbb06ac7a24619f25d2b,
            limb1: 0x7d58d06aad746541acbbecd2,
            limb2: 0x21a4cea9a02cf53b,
        },
        r1a0: u288 {
            limb0: 0x558d7d851a5cd97dcecf40ee,
            limb1: 0x897e5d163062318f40c7e57,
            limb2: 0x2362e4c0577901e6,
        },
        r1a1: u288 {
            limb0: 0x1c122a60e945193af09f8731,
            limb1: 0x6902c7448f2bfcf003496afd,
            limb2: 0x2438a55f1c79c25,
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
            limb0: 0x46d377a7a5fa66dd4cf9c310,
            limb1: 0x4b2dfed6bc5560d9b703bc9c,
            limb2: 0x1d233b377ce7f59,
        },
        r0a1: u288 {
            limb0: 0x312f64daa264c35d82ab71c3,
            limb1: 0xd0d6ae524003d4ad6a95d5cc,
            limb2: 0xf55054e29cad9b5,
        },
        r1a0: u288 {
            limb0: 0xc3a2841e56e5fd182a765f30,
            limb1: 0x6fb227c944a5f96461fb8b70,
            limb2: 0x18ea19737467d458,
        },
        r1a1: u288 {
            limb0: 0x24672bfa0c12e7676142d411,
            limb1: 0x23a5627b7c668fa21a18b4a4,
            limb2: 0x274395c0bbcddb5f,
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
            limb0: 0x899abb57895578fb4bd3a5d2,
            limb1: 0x216e6b6f1273f9f38870f644,
            limb2: 0x2ae6377285e1d708,
        },
        r0a1: u288 {
            limb0: 0xdb57a38dab2e22feb04e8d75,
            limb1: 0xbf35682be88b8b5ffc4f167,
            limb2: 0xff6fd5a76ac039e,
        },
        r1a0: u288 {
            limb0: 0x4762f4e72a177ba83ec4f333,
            limb1: 0x18970da63bfbe52daceccdc3,
            limb2: 0x517a021b45ed793,
        },
        r1a1: u288 {
            limb0: 0x5a5af8b8fbb1e7ff49cb070f,
            limb1: 0x49b7d99d5f30e36fb5acbdf,
            limb2: 0x1f555d61c29bc5f8,
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
            limb0: 0xbd98b6d3d3a91fcf8d7dc5a,
            limb1: 0xb0b60721705f451cd41db2ff,
            limb2: 0x14a716e6c40d5b0a,
        },
        r0a1: u288 {
            limb0: 0x33465a240df5b94b48e35356,
            limb1: 0x50d647342823460599d89b45,
            limb2: 0xe697e23250843f3,
        },
        r1a0: u288 {
            limb0: 0xd6b53348f9829bc51dfb8fe1,
            limb1: 0x7349069d466f149a08deb09e,
            limb2: 0x193d9725182dcf18,
        },
        r1a1: u288 {
            limb0: 0x16f0890572a8fb41d65bcb20,
            limb1: 0x1f6a39529310d97dbf749e00,
            limb2: 0x98c12a420d7e0a6,
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
            limb0: 0x35f3e64f132a27772f78b50f,
            limb1: 0xc268e1ffcc55c43c57a96c53,
            limb2: 0x1c279ba8890772a,
        },
        r0a1: u288 {
            limb0: 0x9d4fb9ec6657aafd6b287d7e,
            limb1: 0x384bdc9bb5c6be05e6baf07a,
            limb2: 0x13aeea701d0cf950,
        },
        r1a0: u288 {
            limb0: 0x820f5c2d3f06886d9081e7f2,
            limb1: 0x4cf8afae8a514296445f91d2,
            limb2: 0x2d2b5e2487fdda03,
        },
        r1a1: u288 {
            limb0: 0xe66b9e06be4b2f30985c43f3,
            limb1: 0x3a3b6d49e360a2d03ddb7a4c,
            limb2: 0xc27de6cd156d7ea,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x15d98c0435715e17284654e3,
            limb1: 0x75eec16b8d52b93f086a651d,
            limb2: 0xf4ac8cb271346c2,
        },
        r0a1: u288 {
            limb0: 0xb69a773c405d178d9bd4a665,
            limb1: 0xb3644c6639abfd5219fe6ad,
            limb2: 0x243514ba8b04ad7e,
        },
        r1a0: u288 {
            limb0: 0xc4434bd378edbcc44f11d283,
            limb1: 0x9bac3a608435fde70bddc158,
            limb2: 0x18e3afe613b61d3e,
        },
        r1a1: u288 {
            limb0: 0xbfce33d20ceb7b616cf4cee6,
            limb1: 0x6eae4d288e2114b9b92ea6d3,
            limb2: 0xb89361c5ecab236,
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
            limb0: 0xd3de532d08368beb9f8ec4ec,
            limb1: 0x115fc15323c320a60f807b7c,
            limb2: 0x63a5843255ec11b,
        },
        r0a1: u288 {
            limb0: 0x9cb641aaae4180ffb97028e9,
            limb1: 0x5844205b7fe74108e4e0cfe4,
            limb2: 0x18a3ec93b39ddcc1,
        },
        r1a0: u288 {
            limb0: 0x5b05921361e6742b46d3e4e3,
            limb1: 0x3a004f1e72648fd2ac60aad9,
            limb2: 0x14d937c69b498609,
        },
        r1a1: u288 {
            limb0: 0x80719df7f4ddf911ca18cbeb,
            limb1: 0x8240a5186da6af8fc4a927df,
            limb2: 0x2f6628458bad59c,
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
            limb0: 0x54ea95456f048dae5815d9e0,
            limb1: 0xf120030eb25a59a788574994,
            limb2: 0x2d4b798083bccbd7,
        },
        r0a1: u288 {
            limb0: 0x67708797ccfd6f94dbb79c4d,
            limb1: 0x9345ee58b6b3f9d7e1acd81e,
            limb2: 0x1baf7606bccec112,
        },
        r1a0: u288 {
            limb0: 0x11d7473213a7ed269c7d1cdd,
            limb1: 0xf6411ca3d7e32e73cab97893,
            limb2: 0x3945f5ff0588758,
        },
        r1a1: u288 {
            limb0: 0x23bf009a731d95c7f39a5eb4,
            limb1: 0xf58f98ce4869127e92a2a88b,
            limb2: 0x1c05f0487d5dfcca,
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
            limb0: 0x80617cc451ef88de98b4a382,
            limb1: 0xfb09825f93721f6e41235675,
            limb2: 0x622ab9d9343cacd,
        },
        r0a1: u288 {
            limb0: 0x16bd24dee17ca30cafc70677,
            limb1: 0xb5d29c608cc57373395468ba,
            limb2: 0x2d8da7563f5b1d63,
        },
        r1a0: u288 {
            limb0: 0xa730b5106f30d18bebdd4737,
            limb1: 0xf586b079a0496891c51b8e48,
            limb2: 0xb3ed443b86fdb83,
        },
        r1a1: u288 {
            limb0: 0x6034e18cdbd0b1ae9e14c92e,
            limb1: 0xf94562647bb405c4fcd76818,
            limb2: 0x7997f9c78eba803,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc44c979096da7044476400ea,
            limb1: 0x44e8b060046d2cc3b75e5e3a,
            limb2: 0xf1ef0727148d7a1,
        },
        r0a1: u288 {
            limb0: 0x275875a7f22c080b2d1aff79,
            limb1: 0xa42f7efceb33c57616e7f790,
            limb2: 0x1569de21d62bbe9d,
        },
        r1a0: u288 {
            limb0: 0x5736f4aede65de2f63faf6fa,
            limb1: 0xfc6b7a4a116d7522a7e6cf82,
            limb2: 0x24edffc6b7456189,
        },
        r1a1: u288 {
            limb0: 0xf56802e10db637ae44743247,
            limb1: 0x2a70f4ed1e5a123a25b598dc,
            limb2: 0x1ca25d65db57b942,
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
            limb0: 0xfafa747daaa2b6047befed9f,
            limb1: 0x141741e6c04bde38873bd1ed,
            limb2: 0x1052680db1de1e21,
        },
        r0a1: u288 {
            limb0: 0x72c4208c77666af082b12e4d,
            limb1: 0xcbff05b4695fdfb43db4e3b9,
            limb2: 0x2e14518953d0c7bc,
        },
        r1a0: u288 {
            limb0: 0x4adc81ca7c8820ac4d0b9af7,
            limb1: 0x8c6e200d1a45444331735bc6,
            limb2: 0x164a6bed9906354f,
        },
        r1a1: u288 {
            limb0: 0x35a054b07877d6de3aafc915,
            limb1: 0x26b3f1371d07bc52bea4bcd,
            limb2: 0x2ad8bede2be31f08,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x689d7b42d65b03733e00650d,
            limb1: 0x6503698d04f2e0e623c4830b,
            limb2: 0x181a614d67a29765,
        },
        r0a1: u288 {
            limb0: 0xa1c092a21503e9a00196a44d,
            limb1: 0x7b2c154a5ed7d76e7804fd27,
            limb2: 0xb00bfb43c0d6d0,
        },
        r1a0: u288 {
            limb0: 0x2e69e0c3eee8381299780707,
            limb1: 0xd7519fce27f1cfda138b4c51,
            limb2: 0x1877c83e70c02230,
        },
        r1a1: u288 {
            limb0: 0x529fbd964f4fe06379aa7124,
            limb1: 0x513168fcc3c1e910b15f191c,
            limb2: 0x1c7dbbd5b4cd40dd,
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
            limb0: 0x849b88444c5e174ee1f14515,
            limb1: 0xc9a9c223940201c272d296fc,
            limb2: 0x2b4917b4f8be4803,
        },
        r0a1: u288 {
            limb0: 0xdb63667989d5fae6a1f54b3f,
            limb1: 0xed295b5dd960a55065f671ac,
            limb2: 0x1d7a26e69b1939a2,
        },
        r1a0: u288 {
            limb0: 0x64a3d3cd4f97e1fdbe6bebf8,
            limb1: 0xb39aa532d0aaa56d22ca7500,
            limb2: 0x113e8d8d212035b6,
        },
        r1a1: u288 {
            limb0: 0xdbf5de4fa9c80a5145a98260,
            limb1: 0xb3e66a3ccd52e58460998516,
            limb2: 0xfea80cf5c143fa7,
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
            limb0: 0x11df2e39accb8adeeae25e76,
            limb1: 0xabff7ace8c0b2da93a1c491a,
            limb2: 0x12a09177f17edf6a,
        },
        r0a1: u288 {
            limb0: 0x33e61747f67fda8cf0ed4ee3,
            limb1: 0xf1ed12d1fd2e638c3f7da292,
            limb2: 0x2a16e3f9e92e9a3e,
        },
        r1a0: u288 {
            limb0: 0xaf501c928caabf8e7afff3c1,
            limb1: 0x537fbffd8dcb02c508b91e6e,
            limb2: 0x28a3945fe2303388,
        },
        r1a1: u288 {
            limb0: 0xeb956611ba69a457842bcd4d,
            limb1: 0x49c27ac2f21f0df358134e98,
            limb2: 0x974f3f3f0fe0c7e,
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
            limb0: 0x3dcdd9ee35aafc87afaf3431,
            limb1: 0xeb8eeb8b00e6b03a9b5a89cf,
            limb2: 0x244c7ffbc8b6282f,
        },
        r0a1: u288 {
            limb0: 0x7127e5177b46dbf30136ce48,
            limb1: 0xe10a29e271d648a8bfbb7204,
            limb2: 0x2fa6de7a2888ad2e,
        },
        r1a0: u288 {
            limb0: 0xdc7bc14a2fa1354f15206774,
            limb1: 0x5a13391c4f61a66467a4f0ad,
            limb2: 0x2809358bc34e8fec,
        },
        r1a1: u288 {
            limb0: 0x77d79d6876f014cc60842f16,
            limb1: 0xdd17987221134b47a9840dcc,
            limb2: 0x37ba669857bf541,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe13e1f03e070b4e444b08ad8,
            limb1: 0xeeb70a9d306a2e9f98317a06,
            limb2: 0x70427c77575c308,
        },
        r0a1: u288 {
            limb0: 0xb186b61f0d7813363928d465,
            limb1: 0x1016579ec0240dd5ba15f307,
            limb2: 0x1012a758d429ef3c,
        },
        r1a0: u288 {
            limb0: 0x19ddbb6644105479547e9428,
            limb1: 0x466c0a422ebc41fe205c30ca,
            limb2: 0x2c51e444a6365159,
        },
        r1a1: u288 {
            limb0: 0xeace5c0073ae3d2473cc182a,
            limb1: 0x78da79217c5979f7f37356cd,
            limb2: 0x289514b6ffd20320,
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
            limb0: 0x85c911bcd62f2cf5a6c53da0,
            limb1: 0xcd014f9999c863e06d1c5c8c,
            limb2: 0xbf442775491f17a,
        },
        r0a1: u288 {
            limb0: 0xfe2ab6319efc2ea4507db762,
            limb1: 0xe2651e2024d3a9c4a30b481f,
            limb2: 0xca912f09c2e3aff,
        },
        r1a0: u288 {
            limb0: 0xfdce7c1be3f73589a1eca555,
            limb1: 0x77bca007bd47e358eb3d436,
            limb2: 0x2a79d4ccab40e12f,
        },
        r1a1: u288 {
            limb0: 0xfcdb8c44646b6575d1792322,
            limb1: 0x33f27a7334cf70c537cd6da,
            limb2: 0x93482d359e2cec2,
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
            limb0: 0xd35dccd34d975ec404e0abbe,
            limb1: 0x6d59244b7bef8ae74b1ff943,
            limb2: 0x6f7d32f5e81d857,
        },
        r0a1: u288 {
            limb0: 0xfd6c8ad731f2a90debd8b19c,
            limb1: 0xd86c4cd03fdcadc10d2427a0,
            limb2: 0xe4585b9bf825cc6,
        },
        r1a0: u288 {
            limb0: 0xfafa132f7f6443e3723aaff8,
            limb1: 0x6d8f59ba217e7cd048bb9744,
            limb2: 0x21dd47d1fd1b88ce,
        },
        r1a1: u288 {
            limb0: 0x6acb27e5f75bcb5da9c03d3c,
            limb1: 0x248dd8eec230592c4d717260,
            limb2: 0xc8b59bedae068bd,
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
            limb0: 0x53b91bb602d60bb5da2d240e,
            limb1: 0x1a9a0e319301e7f071ed8a00,
            limb2: 0x15b8e55cd4174801,
        },
        r0a1: u288 {
            limb0: 0xb2ee88d3befee1ef6c9bf533,
            limb1: 0x5757bfa8ab24d460e62c08d3,
            limb2: 0x14037b4c3ff70432,
        },
        r1a0: u288 {
            limb0: 0xc329711e8f8e285b03694fc6,
            limb1: 0x70b168ce4f66e8112fda1066,
            limb2: 0x2be693fc6af96c8f,
        },
        r1a1: u288 {
            limb0: 0x39b146a757f22e2daf168010,
            limb1: 0x8d13388bdaf9a549cb3588a3,
            limb2: 0x20e2f04ec9ec7f21,
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
            limb0: 0xb1ea0496b733c0612018c9df,
            limb1: 0xa712d109849b7c972acc60f4,
            limb2: 0x239f7166b2f15b7f,
        },
        r0a1: u288 {
            limb0: 0x1ec1d851f382f0d8901800a4,
            limb1: 0x4ec5b134363b8d6e14f8b02,
            limb2: 0x1a27114a9d16422b,
        },
        r1a0: u288 {
            limb0: 0xa813b8bf5e6020c828ac156b,
            limb1: 0xe3a69bc580f76379f7be1d35,
            limb2: 0x3028232ed1d05e2b,
        },
        r1a1: u288 {
            limb0: 0x36dc6228f6dcf4c64f03a792,
            limb1: 0x2cef78c39a5550d13ad8dbe,
            limb2: 0x22345183e38c5933,
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
            limb0: 0x74c1a70334cc53fe32236ff4,
            limb1: 0x2bb160dbc1abd66d434012b3,
            limb2: 0xd59b5e2b15ced38,
        },
        r0a1: u288 {
            limb0: 0x480347498618382883468190,
            limb1: 0xc4775bee313a0cea96ac2924,
            limb2: 0x958e4582434ab0b,
        },
        r1a0: u288 {
            limb0: 0x727d28373d388693b230c0a4,
            limb1: 0x5fcb71cc9c43e4e4fb425bf8,
            limb2: 0x25404196993c711,
        },
        r1a1: u288 {
            limb0: 0x36ff98678c52039765b82346,
            limb1: 0x695ee2646cf5e4196ec49b50,
            limb2: 0x25dc977741af3ff5,
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
            limb0: 0xdac530e44ee5e3ddecd27df9,
            limb1: 0x9c4fcec49020e63ad358feaf,
            limb2: 0x1008a6a851a45b55,
        },
        r0a1: u288 {
            limb0: 0xc0da6622fbad333fd2975e03,
            limb1: 0x772376ff27824a7e883c6c0f,
            limb2: 0x25e53b2ba46c05cf,
        },
        r1a0: u288 {
            limb0: 0x3de9281db836b4075e41a34a,
            limb1: 0x4b2383c4a510abb4a3584e8c,
            limb2: 0x67ec0a2d38221a7,
        },
        r1a1: u288 {
            limb0: 0x616e10361e8fb455a50eeda7,
            limb1: 0x22e145356d9dc0f53fc4e135,
            limb2: 0x156a938d799366e3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5ca6198ffb8e46040d62a8d8,
            limb1: 0xf305f702be68efc740696805,
            limb2: 0xdc2bc137af6e7d2,
        },
        r0a1: u288 {
            limb0: 0x543823718091320e1e8c4c38,
            limb1: 0xd51dc163b0770cc196f4b609,
            limb2: 0x199a10fbdaef35bf,
        },
        r1a0: u288 {
            limb0: 0x3324ec549a87722c0c133d12,
            limb1: 0xa56b3dba3815dc6c21d037be,
            limb2: 0x303710d5806bea84,
        },
        r1a1: u288 {
            limb0: 0xacd8e05bb8424c8377d3b56c,
            limb1: 0xfc9e99bcb73c0f7af7f30f68,
            limb2: 0x293e8a6e11077329,
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
            limb0: 0x95bd989201bfb739173adb29,
            limb1: 0xfaa7cf8e1b82ee2a7bf5c63e,
            limb2: 0xf54921a9de0841a,
        },
        r0a1: u288 {
            limb0: 0xfe0ba87802a4a51e40d1b9ba,
            limb1: 0xde1b282ed123409bd7df0bec,
            limb2: 0xa60db524d30ccb,
        },
        r1a0: u288 {
            limb0: 0x69210637b2251e5d0b0bb485,
            limb1: 0xdf2c2e20347d1dbbf0bb1a8b,
            limb2: 0x29d8cac2f0ff4073,
        },
        r1a1: u288 {
            limb0: 0x20375bc3040af526930f1ff2,
            limb1: 0x9096d60d418e7b9d4fc6770c,
            limb2: 0x1b986d39d4db5e0b,
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
            limb0: 0x27a35dcbf067431169e0bd19,
            limb1: 0xdcdb32b75dfd33943c8faa1,
            limb2: 0x2c5f598d2e9073f1,
        },
        r0a1: u288 {
            limb0: 0x9db5c380f9b8ea03bf14b2e7,
            limb1: 0xf38baad417e70bc423c3550,
            limb2: 0x22f701282dd66cb3,
        },
        r1a0: u288 {
            limb0: 0xae2ad97721ebe19075e7137b,
            limb1: 0x94861746d7b6f93af555f26c,
            limb2: 0x1a9d27acd8bbb2ab,
        },
        r1a1: u288 {
            limb0: 0xf81c2b1e4f2fa167e1f5e095,
            limb1: 0x964ae1e81aa939988b7ba197,
            limb2: 0x2f901f51e3ad7ffa,
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
            limb0: 0x42f5da57107c6697b99cebe1,
            limb1: 0xed3761ae5b4a9dcb5a3cba12,
            limb2: 0x1428da329d241604,
        },
        r0a1: u288 {
            limb0: 0x36d81391a5550b46edb4b7bc,
            limb1: 0x7267a5d955e381c09530019e,
            limb2: 0x7790c09d2af87bf,
        },
        r1a0: u288 {
            limb0: 0x82ba90490dd25884a4cf0a9,
            limb1: 0x9b9eec902d37b4ba4d5d9952,
            limb2: 0x21de4e8e6f6b826f,
        },
        r1a1: u288 {
            limb0: 0xf2703bed3feae97bee0ce223,
            limb1: 0x4ef475f1b5fc66e3fb385383,
            limb2: 0x1c56ba8cd87e31a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x524ffdf7543feefaa918fa16,
            limb1: 0x3b3ab25b927dabe45775c339,
            limb2: 0x30036207c5ee5ca9,
        },
        r0a1: u288 {
            limb0: 0xb09174fcdc73b68d28bfd631,
            limb1: 0x98219126c907c7e11bfa67ff,
            limb2: 0x2d9d4bdf39647024,
        },
        r1a0: u288 {
            limb0: 0x71a98adaa2c2e14425c6a0ae,
            limb1: 0xaf7176528ab686b1dc819a6b,
            limb2: 0x24bec7955177b31f,
        },
        r1a1: u288 {
            limb0: 0xc730e489186c799994136814,
            limb1: 0xa35bc7aa7856dc7e7fe0aa64,
            limb2: 0x236a8c7db5db95d2,
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
            limb0: 0x37f6af8fcf816593bf50650b,
            limb1: 0xdc14f02fcf0e82f503707188,
            limb2: 0x264fc6c658920729,
        },
        r0a1: u288 {
            limb0: 0xaa38b37c02a0560bb45bc6fc,
            limb1: 0x6810a6c03070c38060266a72,
            limb2: 0x2795bdd108ee4839,
        },
        r1a0: u288 {
            limb0: 0xe132a4fb78d2a3c9df5986aa,
            limb1: 0x5dcf83413634f9fe3bc2aab4,
            limb2: 0x2fab01fbc6b73796,
        },
        r1a1: u288 {
            limb0: 0xbaf67dd626a54fadc201d,
            limb1: 0x7037b580d5c2b7bf810cc107,
            limb2: 0x2e132f4f7a8980cf,
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
            limb0: 0xbce0b59d8dfeb8ea78907151,
            limb1: 0x33b44c2178d08cd3e40dff9f,
            limb2: 0x2771b5c3cb8c18f5,
        },
        r0a1: u288 {
            limb0: 0xdcc7ce5bca9e4c6df4e4c07,
            limb1: 0x404b334a8ef243f48275c2ce,
            limb2: 0x150a63161c9afa51,
        },
        r1a0: u288 {
            limb0: 0xa670f22bf7c97b2ffe84af32,
            limb1: 0x2f6c24fe0d44a3cea419b6b3,
            limb2: 0x17fecdf07f5bfaa0,
        },
        r1a1: u288 {
            limb0: 0x8ecfb29683829a9d3fa4d5bc,
            limb1: 0x38fcf2e1b2b4ae97cdc2f051,
            limb2: 0xfa1944fc0caec21,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd30061e764d7671e842e4645,
            limb1: 0xfe47771782dbdefc62754f6a,
            limb2: 0x1fac26bc182d0889,
        },
        r0a1: u288 {
            limb0: 0xdcab483ab76528609ec9d8f2,
            limb1: 0xfcfc4cf8598fe03102547186,
            limb2: 0x2fa81524ae8b3e94,
        },
        r1a0: u288 {
            limb0: 0x7d76fcfa2ed4ea2c1b5b707a,
            limb1: 0xa47a6f8c92e069fe10150a48,
            limb2: 0x172b63ede5f489be,
        },
        r1a1: u288 {
            limb0: 0x5a3a0b77a7a533f487ddf5e0,
            limb1: 0xf956ff644308411256250dcc,
            limb2: 0x1161b3ecbd4c8d36,
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
            limb0: 0x6d4e92f71f1684d83eb3e4e7,
            limb1: 0x1c4a62a781125a6ebb756cb,
            limb2: 0x176fc00f01e3c71e,
        },
        r0a1: u288 {
            limb0: 0xfa1fef3e624e2709813764c6,
            limb1: 0x5d7f78738d38f574ad0059f3,
            limb2: 0x131952233e0f2366,
        },
        r1a0: u288 {
            limb0: 0x3b6b9cbb6c678bf10dde2c32,
            limb1: 0x3e032fe2cda9a3e0a49e2401,
            limb2: 0x1784e0ac9c9fb417,
        },
        r1a1: u288 {
            limb0: 0x64eae96649600f6935140c87,
            limb1: 0xef729ede638f370c3595b103,
            limb2: 0x1831f898a839c397,
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
            limb0: 0xeea7b835d1808dd74e1d3f6c,
            limb1: 0x4dd5176fd73cc8e355b94c3c,
            limb2: 0x8e3fcf4b940da41,
        },
        r0a1: u288 {
            limb0: 0xa2bd6f9590ddffe9a7e8a713,
            limb1: 0x373b41c4922a1234ca17c051,
            limb2: 0x1d759f674fc0f832,
        },
        r1a0: u288 {
            limb0: 0x391a6b6108fcf322c00383a6,
            limb1: 0x7304d55db9bb7ae993532cda,
            limb2: 0x1155cb9d33bd9ad5,
        },
        r1a1: u288 {
            limb0: 0xaef7977b8cd0b6215b21165d,
            limb1: 0x158045c47a1a64a99708cbd0,
            limb2: 0x17ef66e0cc497e98,
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
            limb0: 0xdc540151ee4c3a55544c8e2c,
            limb1: 0x78d17d8c817e30f4da36342a,
            limb2: 0x2505adb70e4b4f96,
        },
        r0a1: u288 {
            limb0: 0x2867508a0f2ff2cb3b5bca50,
            limb1: 0x419f7ebd2d10856fcfac2a56,
            limb2: 0x219d987310e57cdf,
        },
        r1a0: u288 {
            limb0: 0x64d52ffa8766d4f1d25543b5,
            limb1: 0x545054dbfdfbcaf100c6fc41,
            limb2: 0x2eec038c9bd7adc1,
        },
        r1a1: u288 {
            limb0: 0x2076c41cfd60021e89b0069d,
            limb1: 0x122b175e22bf281950e004e6,
            limb2: 0x89eb982d5b9f666,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x63f7059818f670e10d43cf9e,
            limb1: 0x830ef86822a5f79e9553b4b9,
            limb2: 0x2f6de749aea26e39,
        },
        r0a1: u288 {
            limb0: 0x8afadc4d40fce9a91eb53ab2,
            limb1: 0xf2b09f45e2f007ca2602c4cb,
            limb2: 0x3cda2a7ca5f69af,
        },
        r1a0: u288 {
            limb0: 0x4c149b91b4eb505aab060332,
            limb1: 0x55bec8a7e9b089e233488a80,
            limb2: 0x11b7af46ae6bd071,
        },
        r1a1: u288 {
            limb0: 0xf423233e0d0a244a54e86695,
            limb1: 0x15da9c13b5fe765112b8af92,
            limb2: 0x1aa2e3b6c62208ff,
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
            limb0: 0xe93d43c3b2f126b47df77b84,
            limb1: 0x1c86d01eff7638b1c3c19c9f,
            limb2: 0x2ef06f5f5e5b9787,
        },
        r0a1: u288 {
            limb0: 0xef91526f2ae8b4b71009c054,
            limb1: 0xc81abf4d1fcede25f60ebaa8,
            limb2: 0x27e6be311761be2a,
        },
        r1a0: u288 {
            limb0: 0x52fac5c253b2214db50cd3e,
            limb1: 0x1aa89441eba40fc117422d62,
            limb2: 0xd16c872351c0c35,
        },
        r1a1: u288 {
            limb0: 0x7d8d59b26d9c8c7f7a2d1db3,
            limb1: 0x94bc484b04ba8805f16e9085,
            limb2: 0xa7a0d7d3b382d06,
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
            limb0: 0xdaf5b5f2a9e1a1fa8f561696,
            limb1: 0x19c12b477a6fce3ee32c02ae,
            limb2: 0x2e9a1d34af3718d8,
        },
        r0a1: u288 {
            limb0: 0x757cb3389c8e269d0b9d73eb,
            limb1: 0xa9d732fa3ca12dc900023cd7,
            limb2: 0x76b1141a6477c25,
        },
        r1a0: u288 {
            limb0: 0x8a04b8903df5637d11e40bb2,
            limb1: 0xd68b974a244c871ef4f5a43,
            limb2: 0x922b176c117f55e,
        },
        r1a1: u288 {
            limb0: 0x266f15cb1be384651c49fded,
            limb1: 0x59b746a7134cbe6a7227eab3,
            limb2: 0x1130b0b6c57cd2b1,
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
            limb0: 0xe2823af10f639ec1f489ceab,
            limb1: 0x7ea28f0ef77518e1c390d8b8,
            limb2: 0x25d908c6b1f4ccd3,
        },
        r0a1: u288 {
            limb0: 0x35382b1239714baa97d4de26,
            limb1: 0xc0a43cca6f74180232afe1f1,
            limb2: 0xe0071840a0f45a0,
        },
        r1a0: u288 {
            limb0: 0x47a3802835d13f388c92871e,
            limb1: 0x1a9585885d51ea299473a568,
            limb2: 0x198b8cfd91f09c83,
        },
        r1a1: u288 {
            limb0: 0xea99f320875c55b7b6ca6ab2,
            limb1: 0xd73585edbd004fa3f6c33402,
            limb2: 0x171784662d7981f9,
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
            limb0: 0x33a7890deffd6d9083cbbd30,
            limb1: 0xd2d6817fc5c0a10e683c0400,
            limb2: 0x1c19243e2ef6a8da,
        },
        r0a1: u288 {
            limb0: 0x95dc0600e2476ac90f8b8764,
            limb1: 0x91205f3b14d8e1e7a46c118d,
            limb2: 0x1b5e14f4cc23858c,
        },
        r1a0: u288 {
            limb0: 0xd98bb24abb433d78ef0d14db,
            limb1: 0x533f861cc6ab31750b55148c,
            limb2: 0xec891a44d5a75ea,
        },
        r1a1: u288 {
            limb0: 0x792dde51d00b5a6778c9647d,
            limb1: 0x1b098bbcd433a6c43a080168,
            limb2: 0x20b22befd5d2de93,
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
            limb0: 0x9cee5c651db077419a1c4e96,
            limb1: 0x4e67c53d65c7f370c8764642,
            limb2: 0x1c4f12bca0cda07d,
        },
        r0a1: u288 {
            limb0: 0x9d476c0bfa04f8015b3dc665,
            limb1: 0xebe2f8972c816c0a9a0d205a,
            limb2: 0x2bc0b2d2edd4aae2,
        },
        r1a0: u288 {
            limb0: 0xd00e5b208588a73124e9dfe,
            limb1: 0xc84d659d695d78d69385f349,
            limb2: 0x19cc60e1b8daa537,
        },
        r1a1: u288 {
            limb0: 0x2f1e818e0287b6623ad14557,
            limb1: 0x943c398e6e99bc3f87dd8a50,
            limb2: 0x22b6e2fb5db904d2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa67ca6455bd54a9d76e8b1c0,
            limb1: 0x6fca93096c02faa77438a692,
            limb2: 0xad1930beffb1b20,
        },
        r0a1: u288 {
            limb0: 0xb2413ed9579ddffbe26c7389,
            limb1: 0xfd3b6d5047f36e7b5e40d845,
            limb2: 0x16681a9e7ace787,
        },
        r1a0: u288 {
            limb0: 0x5bd926f5a3265da760d0b38f,
            limb1: 0xd1bb9d207e80bdc8ab32f65c,
            limb2: 0x2f9d84b6a9d254a0,
        },
        r1a1: u288 {
            limb0: 0x94ebbfa59a33610f8ff24ebb,
            limb1: 0x248f3316a3eec65746829582,
            limb2: 0x516a10893f4fd98,
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
            limb0: 0x159efcec501970a70002617e,
            limb1: 0xdddbb62464317d3dca24388e,
            limb2: 0x15428fec4d3bddd6,
        },
        r0a1: u288 {
            limb0: 0x374af6b576107eebeb8db67c,
            limb1: 0x117777f8b1eb07f51bfe6745,
            limb2: 0x20069ac8469b8429,
        },
        r1a0: u288 {
            limb0: 0x48a84319d2703c7d75c4bb7b,
            limb1: 0xb6ffda5119848a9c486a4afb,
            limb2: 0x2c810b4388d2386e,
        },
        r1a1: u288 {
            limb0: 0xdea43dccf36325378564f023,
            limb1: 0xeb56169a3d152982f327612d,
            limb2: 0x19359b0dc56fc658,
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
            limb0: 0x7e7d0ea943a748e9af38ffd5,
            limb1: 0x8803c5fff3587d9b506f86c3,
            limb2: 0x75d6e7108b70597,
        },
        r0a1: u288 {
            limb0: 0x24dc2951edf89d8ba061f232,
            limb1: 0x39e04e15c9ac423812d38fd4,
            limb2: 0x6685e553bbceb99,
        },
        r1a0: u288 {
            limb0: 0xe7f6739d5f53189a5e35ca25,
            limb1: 0x6aee2c90ffe51ced0d9f0a0f,
            limb2: 0x1cd0322c4b36475a,
        },
        r1a1: u288 {
            limb0: 0x5ba0df62460090d4e0b780e3,
            limb1: 0x4a09405f5234cc7726394186,
            limb2: 0x228b6a3ad8790dab,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1902f529133db301d56ad456,
            limb1: 0xdda83095860dcb9176199b20,
            limb2: 0x27ea19c98c495e51,
        },
        r0a1: u288 {
            limb0: 0xc751aff4b5486872917ef321,
            limb1: 0xa957589d16d32863e1f2f1a0,
            limb2: 0x8d9d9a80f0b6ea0,
        },
        r1a0: u288 {
            limb0: 0xd47cca101b9d3785900a3c61,
            limb1: 0x60a82d99fc99ce99673b3489,
            limb2: 0x1250c5e96fb355c,
        },
        r1a1: u288 {
            limb0: 0x76dffd6014efe06ca05d8735,
            limb1: 0xe43000a63c3e79006e9b8811,
            limb2: 0x15fb2391907db0a8,
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
            limb0: 0xfddddcf2c04178d680f1d3d3,
            limb1: 0x7ed834d1a8adf04158d1639a,
            limb2: 0x645bed19eadeda1,
        },
        r0a1: u288 {
            limb0: 0xfae676497a6a184e5af24d0e,
            limb1: 0x832acfac2648c2887b38bbb,
            limb2: 0x252e822f3cd06bc4,
        },
        r1a0: u288 {
            limb0: 0x450f4441bd71c87a0cc90270,
            limb1: 0x7e90eaba6b042586abd0d075,
            limb2: 0x5321bad6a372877,
        },
        r1a1: u288 {
            limb0: 0x1b759bb6e2d020962a607e1e,
            limb1: 0x90dd953c34a1b37716b2f20b,
            limb2: 0x231798f598f53af9,
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
            limb0: 0x48c76de56955ba97576e9920,
            limb1: 0x92974780f330e0720ecb7e63,
            limb2: 0xa724d8e9214cb2,
        },
        r0a1: u288 {
            limb0: 0xc4cd3493b3b470f4a7f53c08,
            limb1: 0x369b72281cc11eefabf6f989,
            limb2: 0x1f7a802e68505598,
        },
        r1a0: u288 {
            limb0: 0x9b7c134034d19e6ef7fea271,
            limb1: 0x8dddd075e60f55cef04af595,
            limb2: 0x1a71c145b19daf8b,
        },
        r1a1: u288 {
            limb0: 0xa7fc8d60a9f1a7ef9fe603d2,
            limb1: 0x80f91f198388fb0bf4766beb,
            limb2: 0x23fcfd91a6d7d3dc,
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
            limb0: 0x77860ebea1d3bb65179cdf94,
            limb1: 0x5991ed602d143cf96f444faf,
            limb2: 0xe91bfe7f370b000,
        },
        r0a1: u288 {
            limb0: 0x6e78c63571cdd1c025d0f232,
            limb1: 0x46c4f5930128ec473af5faf4,
            limb2: 0xa32bd8f27362ed0,
        },
        r1a0: u288 {
            limb0: 0x50dc6cb42bf475898fb66f0d,
            limb1: 0x4ee12b4db7edf4c8f4ae9525,
            limb2: 0x29b5bb54b6e68ba4,
        },
        r1a1: u288 {
            limb0: 0x6c0287afb8c7c8123b061875,
            limb1: 0xe8c867bf028685551f7c58fa,
            limb2: 0x24c9aed3833c5313,
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
            limb0: 0xde4a6c42f00d544cc91eb178,
            limb1: 0xd69ccbb69d1906132643fe96,
            limb2: 0x1cc698d3d11b40b9,
        },
        r0a1: u288 {
            limb0: 0x664e2a5e3e95fae62ee846f,
            limb1: 0xbb521a233c99fc66c197619d,
            limb2: 0xb7c20a2d11589a3,
        },
        r1a0: u288 {
            limb0: 0xe2cbd860e7543ee2f7d3e1b7,
            limb1: 0x659180fd74f7314dcebd35aa,
            limb2: 0x4a06d5ca145e284,
        },
        r1a1: u288 {
            limb0: 0xd4888d4eefbb64eb80aeedb0,
            limb1: 0x56081b04c6931125f53e731b,
            limb2: 0x1bd7f29008a3266,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x45dc8b22b657cdabcf790f88,
            limb1: 0xf10fe38dde4c612338d4eb23,
            limb2: 0x17f1dd3893656b2b,
        },
        r0a1: u288 {
            limb0: 0x8a75db86037c2ebab5814a59,
            limb1: 0xd838344828908ed7d45246fb,
            limb2: 0x19ce3ea02d41492a,
        },
        r1a0: u288 {
            limb0: 0x32a79ce6a8975f2b396ce854,
            limb1: 0x27c9ffe1ee57de50af158e34,
            limb2: 0x6265c886c044a5e,
        },
        r1a1: u288 {
            limb0: 0x2989a8e49b2c4fee6944eebf,
            limb1: 0x425464874389c0a21b69ca40,
            limb2: 0x2146454476f6628f,
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
            limb0: 0xea6e44ba53bee0346edc8e73,
            limb1: 0x63601d886ebddd3dc1e051ac,
            limb2: 0x3c7cc83ef3bc5dc,
        },
        r0a1: u288 {
            limb0: 0x6e1ea5a515c793272ff8b565,
            limb1: 0x745f3bdadc684850b1b2420e,
            limb2: 0x37b1bbef809d5ec,
        },
        r1a0: u288 {
            limb0: 0x556650aca225d62fb448d5b6,
            limb1: 0xd6eaa52b240d1b4bdcbd6222,
            limb2: 0x12a7aa7bef7620b1,
        },
        r1a1: u288 {
            limb0: 0xce6fabc1206c053465f33b2f,
            limb1: 0x4a51f5510ea840d81a9f62f,
            limb2: 0x290e42ed9f9512e9,
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
            limb0: 0xfe7d99a35ad744bef6c31a9,
            limb1: 0xf200c28fea64b76717b61506,
            limb2: 0x2b677a32796a5227,
        },
        r0a1: u288 {
            limb0: 0x1e484233621ab438829973be,
            limb1: 0xba0a716c9dcc859e369ae11,
            limb2: 0x12423f1d4c42da6a,
        },
        r1a0: u288 {
            limb0: 0x6158bee30bdef81f9e393584,
            limb1: 0x17a1a692559931f425417037,
            limb2: 0x2b9758ece71d7eed,
        },
        r1a1: u288 {
            limb0: 0xc08f1ba52a289ad089701234,
            limb1: 0x23ff012f1dfa26cf10513972,
            limb2: 0xba784aef29c394f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xed7b161694a4ccb3ebc47466,
            limb1: 0x2a603baf210df624bff85d46,
            limb2: 0x2afeb6e2e044fe7e,
        },
        r0a1: u288 {
            limb0: 0xf0acddd773f66cfd5d010c7c,
            limb1: 0xb207f7f68a4e89dd2c2445db,
            limb2: 0x137f7801766144c0,
        },
        r1a0: u288 {
            limb0: 0xf8bb883f94cbd8a848835847,
            limb1: 0x6b13703a9c84b646dd6085b2,
            limb2: 0x103f559c79b1bdd5,
        },
        r1a1: u288 {
            limb0: 0xb15dd257704555141f0bb936,
            limb1: 0xfaa196cc6530be68bf7bb425,
            limb2: 0x1215c44973a84653,
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
            limb0: 0xfca24fe63f5f9b8a3a236cd1,
            limb1: 0xf270d1a5cb3d5a6f91178184,
            limb2: 0x2a1c634c7c9e09d3,
        },
        r0a1: u288 {
            limb0: 0x6ae5d8c8f917257199ed9841,
            limb1: 0xa72584b473577da585fba2db,
            limb2: 0x4dd656cd17936dd,
        },
        r1a0: u288 {
            limb0: 0xef11d0505acda78c9384a2ec,
            limb1: 0xfc2bc067348d35e345661ad4,
            limb2: 0x1f08adde4e26576a,
        },
        r1a1: u288 {
            limb0: 0x77ff2807413d9d4f3891f19e,
            limb1: 0x79df1e00ffeaa8c3ea0acbd2,
            limb2: 0xd756664cb5e8ac9,
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
            limb0: 0xf498479f8532fd7402d77ceb,
            limb1: 0xea02f12872498e3c3824ed92,
            limb2: 0x273653dc883d81ad,
        },
        r0a1: u288 {
            limb0: 0xf3034432ac7846825818ec10,
            limb1: 0xb0370866904e43c0cac7e944,
            limb2: 0x13efbf7aeb307979,
        },
        r1a0: u288 {
            limb0: 0xce9db10254aeda1a7e91de64,
            limb1: 0xfacca2b8fe16f02d573a3512,
            limb2: 0x101a34041b2eeeec,
        },
        r1a1: u288 {
            limb0: 0xb52944197693368aa03f27ec,
            limb1: 0xd0941a0b5d475af887447737,
            limb2: 0x118e896f5831e365,
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
            limb0: 0x38e26e29c4699efc4ffeb5ff,
            limb1: 0xf365191ee98f9305f018a978,
            limb2: 0x17dfdceebd098c03,
        },
        r0a1: u288 {
            limb0: 0x2c432dc25f111ef57abbae7b,
            limb1: 0x320aec94801b372d66d73e61,
            limb2: 0x25c12fce4c5f7329,
        },
        r1a0: u288 {
            limb0: 0xd141bd6369c37650af3c7725,
            limb1: 0x1ed7edf505819842d413ad22,
            limb2: 0x1e61a18ba0687bb8,
        },
        r1a1: u288 {
            limb0: 0x774497591fe7accc7816e70e,
            limb1: 0x82b13dfffaac38f915f0366d,
            limb2: 0x16d740fd6d205e47,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x32735811ada798b23b738d3f,
            limb1: 0x3d0a0b4d8dd628d9bf366756,
            limb2: 0x2a75cb389a5a2e3d,
        },
        r0a1: u288 {
            limb0: 0xca76ae2a6a1be040b0e94000,
            limb1: 0xe6187ffca52bab5f492b3589,
            limb2: 0x11d3370dda7f788,
        },
        r1a0: u288 {
            limb0: 0x1e3048f903fd630c976a664a,
            limb1: 0xb3d008a334e927c53fd7d39e,
            limb2: 0x1c3b2d050dac9de8,
        },
        r1a1: u288 {
            limb0: 0xd379f932215ec2526945a020,
            limb1: 0x459ae2ef151e8ed5b886222f,
            limb2: 0xbd7cd2e2f4a04c4,
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
            limb0: 0xdb544f4996a4accd116afe74,
            limb1: 0x3708806fa79276bf9b2bfad7,
            limb2: 0x1c1c809d3a22b3a9,
        },
        r0a1: u288 {
            limb0: 0x770125985a64874bb1ba69f0,
            limb1: 0xfa84a5dcf9c11dc3ef7b257,
            limb2: 0xb60d2c8b6869f74,
        },
        r1a0: u288 {
            limb0: 0xb47839b10e2e0d5db396e150,
            limb1: 0xf318c0337ecc1efa8e6f988f,
            limb2: 0x26189e0d1e277553,
        },
        r1a1: u288 {
            limb0: 0x893b74f4c9f64ccea50fb5ce,
            limb1: 0x3f04994ca0ae7fef93ca854e,
            limb2: 0x5b9c48621c5808,
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
            limb0: 0xe9fe61a1c73ade66b7addfbc,
            limb1: 0x3389a9c4557b378e48baebe1,
            limb2: 0xc835ae6a89b0244,
        },
        r0a1: u288 {
            limb0: 0xd1b7bb0c9c3d496f7fee52a2,
            limb1: 0xa2e91f0e00a4c12cd9653812,
            limb2: 0xcace60d1c7b791f,
        },
        r1a0: u288 {
            limb0: 0x1eecc53292cd1feeeebd4786,
            limb1: 0x96793f5335aee985cb503358,
            limb2: 0xc115f6b65afba9,
        },
        r1a1: u288 {
            limb0: 0x9572a6e9a516ad144a3b2d5e,
            limb1: 0x7cecbe65f4a93b963afa31b0,
            limb2: 0x2f0455b16a316b6c,
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
            limb0: 0x23362cbd41f48cafc71552c5,
            limb1: 0xafea8cc93b057518f4f648b0,
            limb2: 0x2ef2681ed3cfd7d8,
        },
        r0a1: u288 {
            limb0: 0x4649f8465fae9b004a4efabd,
            limb1: 0xe61bb69ee0172c836be85cef,
            limb2: 0xe9c2cce468b9519,
        },
        r1a0: u288 {
            limb0: 0x3789b29bb2b17566392c4758,
            limb1: 0xc88b77127f109ceb78333c55,
            limb2: 0xbbee3e0acba39ca,
        },
        r1a1: u288 {
            limb0: 0x504c561f328b9e29e1256c5e,
            limb1: 0x75bb523cdcea488f2da8794b,
            limb2: 0x22c191c9b1ea8fdf,
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
            limb0: 0xc0c4d7f4765e06f95d288852,
            limb1: 0xac9eb28a54ac0abb7ce8a269,
            limb2: 0x27363cf00f7ccadd,
        },
        r0a1: u288 {
            limb0: 0x6e2ff06fb5f004327ea6a123,
            limb1: 0xd65bc9e19a2171c50f8fb763,
            limb2: 0x13545ccb5b6705b4,
        },
        r1a0: u288 {
            limb0: 0xba4430f81933b6bd59ed8e24,
            limb1: 0xed70a0dc8928d8fb4ac8c904,
            limb2: 0x1f9192c786399dad,
        },
        r1a1: u288 {
            limb0: 0x1b8908785d7f6acc7257d963,
            limb1: 0xf90ecd1e9300cb3ea2b3dc0,
            limb2: 0x13dec895f41cade7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x67319b7273757283d3f43ec,
            limb1: 0x1d76de04d68658256757a381,
            limb2: 0x2343ebbff98c2413,
        },
        r0a1: u288 {
            limb0: 0xc271f682d2fc0d5f1990a6f2,
            limb1: 0xdaa1aba6cf5005375a965567,
            limb2: 0x223d0b5f7d9713ad,
        },
        r1a0: u288 {
            limb0: 0x9c1c1cb63b313a6aeca17016,
            limb1: 0x49fb76a42b9b2f06525dad1,
            limb2: 0x90c6449c2edb18c,
        },
        r1a1: u288 {
            limb0: 0xf2499dd7e7608bacb7679ee3,
            limb1: 0x569f4b8c1c6f75b097057a7c,
            limb2: 0x2c7a9aa07c2e152a,
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
            limb0: 0x7e0f4ecc284422206f909f76,
            limb1: 0x4d74fc9abb118b09d70c82d1,
            limb2: 0xf96e32922860c19,
        },
        r0a1: u288 {
            limb0: 0xd037d057ea90f46d1b7e723c,
            limb1: 0xeb5169fceb86a3e893968b79,
            limb2: 0x165a768311840128,
        },
        r1a0: u288 {
            limb0: 0xb7dd5f5746489bd7aa19c4e2,
            limb1: 0xf5d2a4aa01b8590901345f0a,
            limb2: 0x13e13926bb99dd05,
        },
        r1a1: u288 {
            limb0: 0x36c3dee325324acfae930217,
            limb1: 0x9f4cdc72b4a770f43f745553,
            limb2: 0x186387b2f5d996ab,
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
            limb0: 0x1b998ba18fe7a001796d5218,
            limb1: 0x8029a635948c7d643db61a07,
            limb2: 0x2be678bbd6b2af3f,
        },
        r0a1: u288 {
            limb0: 0x1900661651fa21a835dc3ea5,
            limb1: 0x94a38d1ece693660525fe57,
            limb2: 0x2d672b54cca0631a,
        },
        r1a0: u288 {
            limb0: 0xdf54f0bfbd8220720b59127f,
            limb1: 0xc3b2cf855a5cf35c5e385d22,
            limb2: 0x29d539d742847bff,
        },
        r1a1: u288 {
            limb0: 0x72e626af6d6e2d1536c4ccc6,
            limb1: 0x2314b5ccb822c9553fff9f02,
            limb2: 0x10401568d1ec6524,
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
            limb0: 0x35aa42e68df6581dcb5308d,
            limb1: 0xba1b092c6cb83de13db1e58c,
            limb2: 0x128fb1f4a7dee59f,
        },
        r0a1: u288 {
            limb0: 0x8aa29b94ac7337434f2f5614,
            limb1: 0x25b49ac019f3ea7cb38d3eb9,
            limb2: 0x686c970d57c61cb,
        },
        r1a0: u288 {
            limb0: 0x6e1d1d6e0ca042d8528030f1,
            limb1: 0xb516c5d2c6cdaa4bb497c40b,
            limb2: 0x1cdb9083aa9e5050,
        },
        r1a1: u288 {
            limb0: 0x5d2648da3696fd350121fe95,
            limb1: 0x1cc965139986ed19a182ce70,
            limb2: 0x26a72a33314e4a27,
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
            limb0: 0x1123cdc0d7144a5d795a57a5,
            limb1: 0x2c02ba5aa64a3ab8017d0568,
            limb2: 0x14ff91b83f8825c0,
        },
        r0a1: u288 {
            limb0: 0xb690343351b32ba3f076468c,
            limb1: 0x36262a4ad7d451f8929289f0,
            limb2: 0x2f3b91d4cda47c06,
        },
        r1a0: u288 {
            limb0: 0x13068de7818d21354ffcdd3b,
            limb1: 0x674e7bb780a99b30aef565e3,
            limb2: 0x15731d42267939c8,
        },
        r1a1: u288 {
            limb0: 0xf07888895e6c4a1d49379dbf,
            limb1: 0xfd32926e30dd5d2f0fd487e3,
            limb2: 0x230aa721aa87f5b6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xba90e2c984a7a6b1f12fc7c7,
            limb1: 0xec0f3a50b527963c844f2008,
            limb2: 0x17e111ca65392683,
        },
        r0a1: u288 {
            limb0: 0x5b1fc3869fa0d4831bb77fd0,
            limb1: 0x450e3222facd23cc2055d18d,
            limb2: 0x1250da17f67730b,
        },
        r1a0: u288 {
            limb0: 0x519c708d5c89118cdbfef315,
            limb1: 0x2c3262d4c311f02452cd8519,
            limb2: 0x10c8e597b9cd77bb,
        },
        r1a1: u288 {
            limb0: 0xc953d7534758b56a2ac037a4,
            limb1: 0x729596ad308dc1c79c84696c,
            limb2: 0x86ab10f598e3c16,
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
            limb0: 0x90004ea4d8b2a0e0c6229d37,
            limb1: 0x1914896b4b2db94ab7a2baad,
            limb2: 0x2ababb4fc6ea8157,
        },
        r0a1: u288 {
            limb0: 0xc509b83d60d3abd7e216ef3e,
            limb1: 0x45f7bb1f302f481f96513a57,
            limb2: 0x1f189f7ca0b89797,
        },
        r1a0: u288 {
            limb0: 0x8eea40cac9a6f4509f526cc3,
            limb1: 0x8b9546a909daa8e2f12eeea4,
            limb2: 0xaf5b2b993fd0941,
        },
        r1a1: u288 {
            limb0: 0x4400f7832976406e4504199e,
            limb1: 0x75f76c67b588bf9f8f8395ac,
            limb2: 0x13a25a21d477eb68,
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
            limb0: 0x1ac469522f727de848a2dc7b,
            limb1: 0x327afb228cfb840824136df5,
            limb2: 0xaf87c90bb5132d5,
        },
        r0a1: u288 {
            limb0: 0xb7afb072e315354f0c6d6558,
            limb1: 0xda24fec25035e3b1d8fa065a,
            limb2: 0x22eb0ba02ea0bab8,
        },
        r1a0: u288 {
            limb0: 0x8a296548297d1569921b6400,
            limb1: 0xf05dd31981c18af5c7974b2,
            limb2: 0x883f84e84b8c0b4,
        },
        r1a1: u288 {
            limb0: 0x48dbab30604988e21ed2282e,
            limb1: 0xf7abfa5639d4b316c0fcecde,
            limb2: 0x18065b634c0c0c7f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcbd9bac435517972fe670599,
            limb1: 0xaa161689f678b236b1d57038,
            limb2: 0x463c8972ee09e82,
        },
        r0a1: u288 {
            limb0: 0x281c5311bd7affcceff18ad1,
            limb1: 0xcf44bb695a5f7d88f8998d87,
            limb2: 0x16c7f089146b5cf0,
        },
        r1a0: u288 {
            limb0: 0xc22948b9050b36aafef9604e,
            limb1: 0x79f9331fd7f59afde0e25942,
            limb2: 0x1509528020b0f3b6,
        },
        r1a1: u288 {
            limb0: 0x1fb2a5289d26d1cc70ee3e19,
            limb1: 0x9ddfcde5acd7bee21a83c19d,
            limb2: 0x295ec98f1bfa82fd,
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
            limb0: 0xc22fb1f578df26a663c26228,
            limb1: 0x7cc03d183c236709782eeabe,
            limb2: 0x2608475fcee671f4,
        },
        r0a1: u288 {
            limb0: 0x56782b8d119d52d6c29889b2,
            limb1: 0x5bae4b0c22f72ebec9b96e58,
            limb2: 0xafee155fdb886cd,
        },
        r1a0: u288 {
            limb0: 0x3ad0a26c6c931d74e894ce58,
            limb1: 0x9594e98a19baac1e6183ab3f,
            limb2: 0x2576f63563b98f3e,
        },
        r1a1: u288 {
            limb0: 0x4906dbcc93dc4bb6b2823dcd,
            limb1: 0xeb2b71ffb38a4c1aa508687f,
            limb2: 0x28a8fa04c74caed2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd5dc40b9ac7a8b01062f47e3,
            limb1: 0xf30cf9b93dc33231c3d44cf9,
            limb2: 0xe531cdb2ac006f6,
        },
        r0a1: u288 {
            limb0: 0x95b3e31188013a1ac66867b4,
            limb1: 0x372fc04b6fc3f9510ab091b,
            limb2: 0x10f8735c7e471f4a,
        },
        r1a0: u288 {
            limb0: 0x549e2b393b306929140a4c67,
            limb1: 0xe52f88178cca342e97b87242,
            limb2: 0x2b978bddcb12d60a,
        },
        r1a1: u288 {
            limb0: 0x7b9110c7c6a1755ccde78b71,
            limb1: 0x8ef472fccb69cc06f9c6d2cf,
            limb2: 0x20b4213982efbd4e,
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
            limb0: 0xc578e5d880f1a069467b826f,
            limb1: 0x2d2474837a98936fcaa5f5ba,
            limb2: 0x11f67610a6c49a33,
        },
        r0a1: u288 {
            limb0: 0x5da6726e9498773e4165340,
            limb1: 0x606635bda199b338b465c5cf,
            limb2: 0x2544969b165e00db,
        },
        r1a0: u288 {
            limb0: 0xc0ba489cf65533a6d12333ed,
            limb1: 0x53c83adfb348ab307ff0ae09,
            limb2: 0x2ea6bd803671d967,
        },
        r1a1: u288 {
            limb0: 0x4d37df5a540b3ef0ddc8a912,
            limb1: 0x26c3041b8adbaf7ac2716be,
            limb2: 0x28ac63c9d87243c4,
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
            limb0: 0xcc5eb836ca29461f9014c531,
            limb1: 0x1d1809ffd3a50734f460374e,
            limb2: 0xab540e390c65a4b,
        },
        r0a1: u288 {
            limb0: 0x444b420b33d40be1e2606290,
            limb1: 0xb4fdb8d538fffd234323f871,
            limb2: 0xf7b313ecdd7834b,
        },
        r1a0: u288 {
            limb0: 0xa23704020d5bd36facc9649f,
            limb1: 0x510ab729e57d1707e3b0db82,
            limb2: 0x25f43d87025eed3f,
        },
        r1a1: u288 {
            limb0: 0x474c68311dac45ee2d595b1c,
            limb1: 0x41f70307adf9a086164b0ca5,
            limb2: 0x55c190c15a2a981,
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
            limb0: 0x76e525a65e62031798fed24e,
            limb1: 0xf68fb3ae2e48f7b0e92868f,
            limb2: 0xafd1bd6658254ab,
        },
        r0a1: u288 {
            limb0: 0x5acad39189aa713c7e650956,
            limb1: 0x3410c219889b69209404a574,
            limb2: 0xb051a9efb317ccc,
        },
        r1a0: u288 {
            limb0: 0x79fbb60963c79d7147805081,
            limb1: 0x5a2b46b443ca24fc192610a3,
            limb2: 0x16bf5417b676130,
        },
        r1a1: u288 {
            limb0: 0x851f1dc3822c0945841b59a,
            limb1: 0x52d3c1a9e399034e796810da,
            limb2: 0x2b718790f8f447c,
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
            limb0: 0xe63895fb97c18960066f6c27,
            limb1: 0xe3b0f2c977d267924f7e65c4,
            limb2: 0x132d3835bc362d2a,
        },
        r0a1: u288 {
            limb0: 0x894e71d90645b491a80e2c5f,
            limb1: 0x47d3e6501e5ea15a531ab5d0,
            limb2: 0x103ef7a41242b666,
        },
        r1a0: u288 {
            limb0: 0x6811a9ac98d344c73ca09771,
            limb1: 0x51be9aa2509ef72a65e617e9,
            limb2: 0xd8e55619e8aadb0,
        },
        r1a1: u288 {
            limb0: 0xf41e08534270d41cf3c840dd,
            limb1: 0xa8b290247d975b62d52ae576,
            limb2: 0x2b09f06b6561841d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb491b5219ec7e67a06660120,
            limb1: 0x5e19ba403c74a5343fc6ec1b,
            limb2: 0xd8a5bc6540b6312,
        },
        r0a1: u288 {
            limb0: 0x46f01709388e76ce6d9c31dd,
            limb1: 0xf412f25cea2d506b7abdfbd3,
            limb2: 0x21bc266519bc6b2c,
        },
        r1a0: u288 {
            limb0: 0x98562378e3ee4a5599378fc8,
            limb1: 0xfadc34132869f340a20fe56f,
            limb2: 0x28ccd9f0c6e5292c,
        },
        r1a1: u288 {
            limb0: 0x94f921abd3e800dc5d3437f2,
            limb1: 0x13c931e6ec542f2859460403,
            limb2: 0x1c43f23c02e462a2,
        },
    },
];

