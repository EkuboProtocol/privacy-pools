use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x6b444b02705032c99fd0ce5d,
            limb1: 0xf50970ef5b5423724812e034,
            limb2: 0x15396fe464035af0,
        },
        w1: u288 {
            limb0: 0x533f00ff2d64787f4af3a33,
            limb1: 0xbbacf0cac3a78c22ec41c59d,
            limb2: 0xa865ce3113c9de3,
        },
        w2: u288 {
            limb0: 0xc2bd907d3b35bf09d50f089d,
            limb1: 0xaac0c7e0e66b99365721dad9,
            limb2: 0x1a48666a4f73efa3,
        },
        w3: u288 {
            limb0: 0x6ebc95b1aa2658794b419270,
            limb1: 0x71469ec7a15ece605d9ebe42,
            limb2: 0xce076beab22eba6,
        },
        w4: u288 {
            limb0: 0x26c198f9fee98b03ca458db5,
            limb1: 0x6402599f3b237100d285193a,
            limb2: 0x1e5ba37c6db9817b,
        },
        w5: u288 {
            limb0: 0xac7661efac70b10cd4208dd7,
            limb1: 0xb02fd0cd3469e36be7a19474,
            limb2: 0x20174fffecee7d39,
        },
        w6: u288 {
            limb0: 0x4b2ca07252d231448607f52c,
            limb1: 0xf9de3efdf843c24d97d5b73f,
            limb2: 0x15d9da1cb400943b,
        },
        w7: u288 {
            limb0: 0x882653e2468054a656607513,
            limb1: 0x46667984e3bc4d31edf154c3,
            limb2: 0xe12b358d9d5c34f,
        },
        w8: u288 {
            limb0: 0x1e38c99c60b31ffe566503ca,
            limb1: 0xc1244a9c92af25956700fb8a,
            limb2: 0x17c7d0e1c444a4ed,
        },
        w9: u288 {
            limb0: 0x7e0c1decc27f031e511d081a,
            limb1: 0x82fc625aa5e3cd9720c53395,
            limb2: 0x13e48ad84f5333c2,
        },
        w10: u288 {
            limb0: 0x6aa143ff843fbe44b6002f5a,
            limb1: 0x48c898f41c19430722897c9a,
            limb2: 0x1e3944ffa769b032,
        },
        w11: u288 {
            limb0: 0xebf562d55c6729a6d6d27d15,
            limb1: 0x3a72d69fa94a41a2526b5e1,
            limb2: 0x262a9e41c3f801ef,
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
            limb0: 0x58f27354979a27cf7b6aaf7b,
            limb1: 0x79f9bcbc75c77d5cce094d08,
            limb2: 0x2081b58b26447d3a,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xf69c93ae193c3ac9e98dc397,
            limb1: 0xa15658c6a70b11b706ddec2,
            limb2: 0x280d2f77630735b,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x3bf69319db63fbc01ef39cc4,
            limb1: 0xfe1a348f0f4dd9e2bdd52f26,
            limb2: 0x27778b1a9b2e3139,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x241ef7a6f5b81f7a41036ae1,
            limb1: 0x593bf1ad5ee22a8a87262f0f,
            limb2: 0x189cd8a9458d3c1d,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x6929b35aede5718d1a9b3a6c,
            limb1: 0xd4902a325b0e2e8f841c51f4,
            limb2: 0x1a6394f6ad1654d2,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe33129df96e0dee89e5d59cb,
            limb1: 0x58eee9b0c35f18187210776d,
            limb2: 0x24aa075e8425872c,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x13244d1e6709ecc14c13b1fa,
            limb1: 0x9b37cff56b2d9475a8aa1192,
            limb2: 0x40894578297c481,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x8fc7e824833c1882bab59c31,
            limb1: 0xc47ef7efdf6441e8ac71b18c,
            limb2: 0x107bb464a3606d54,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x8e8121923c2b2bbad6989156,
            limb1: 0xb969e7ddaf13e83a352738e7,
            limb2: 0x1f49e5a8da64e084,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xf042ab069e4b6b2862150d6d,
            limb1: 0x8ca9c91260a33a14a04be18,
            limb2: 0x1baa402f5b3483c,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x6466e1f21ba27af95540963a,
            limb1: 0x1f35f972c20918a3461f1f1,
            limb2: 0x218e454e4209a45b,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x7c11a164c86fc88958f1953,
            limb1: 0x3a1117e6e691fb7f62eb67f1,
            limb2: 0x1ba1e5a763f76e12,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x6e7917b4072fd1dea1340bad,
            limb1: 0x5f1ab76377fbcd7e93d5862b,
            limb2: 0x2c477d7ca232e185,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x47dea8332714320a5c0b5cf1,
            limb1: 0x3c7fe9d85aaf15ed6d44dce9,
            limb2: 0x7f6ea6a36a47472,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x70a2f72f5b4abf910bd8a5f7,
            limb1: 0x49ada7fa0c5023a2660c6626,
            limb2: 0x24dfac74cf647bb3,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x2fc938863f359e0a5ff58c04,
            limb1: 0x4cecf27276f050a87f47d93b,
            limb2: 0x1d5098e9b49cabe7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xddbcb244fe58cddbb4440dc1,
            limb1: 0xe3edb64f3c4535a3ca9d8a96,
            limb2: 0x1369beb057d395e3,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x83ae73dd454fa9e5a6bae355,
            limb1: 0x65a3c517e4c0afb9f4bbad6b,
            limb2: 0x10b6307441862309,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3b84f33bc0f277c4892ab5a2,
            limb1: 0x9cff7274fa110bad0d424c3f,
            limb2: 0x220b20b35ea630bb,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xbf1c0ea82dc12722b8db2fdc,
            limb1: 0x1d970d4baf68aa919395bf8c,
            limb2: 0x233f333bdaf1a276,
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
            limb0: 0x24422e9499ee9e0d48f5c08b,
            limb1: 0xe498d89210e6f80b23150bc5,
            limb2: 0x21110a2480bf707d,
        },
        r0a1: u288 {
            limb0: 0xfa4f8346db5fd6f591daf239,
            limb1: 0xcbe7773911186bb73df69f9a,
            limb2: 0x7df808782a77ad5,
        },
        r1a0: u288 {
            limb0: 0xce8a79a249120fc96b896c04,
            limb1: 0x507dddbd7132d021e29771e9,
            limb2: 0x59a81dc3f0110aa,
        },
        r1a1: u288 {
            limb0: 0x93965e6d12d6d6b3b74e4d02,
            limb1: 0x8f2f19bdc63f8d4e67c0b820,
            limb2: 0x206e26b4377ec476,
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
            limb0: 0x442f9bf8a231ee098f873cbc,
            limb1: 0xd3b76d24709a6052746c5ecc,
            limb2: 0xf53444e60722fab,
        },
        r0a1: u288 {
            limb0: 0x6e22474660c0b52146a20b0e,
            limb1: 0xec68ce7d7068eca6598acaf6,
            limb2: 0x2884cdeb5e8a2553,
        },
        r1a0: u288 {
            limb0: 0x99e750eaf30e7c4d6cf39143,
            limb1: 0x67d267f9104e883bb4e9f8a7,
            limb2: 0x2ac9cc96a2308f7f,
        },
        r1a1: u288 {
            limb0: 0xd4db6c202949b563212eb045,
            limb1: 0x29212bf8bb41cb0f2fc0b270,
            limb2: 0xff627bea9b2dbb3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcc63e0178167822034e803e5,
            limb1: 0xdd68406b9518abb1c9ee27e4,
            limb2: 0x57d4ff63228cbd1,
        },
        r0a1: u288 {
            limb0: 0x1f5c9cf0d9de28c8f11641e5,
            limb1: 0xb9682121baac287421b72c89,
            limb2: 0x224c7150097fd110,
        },
        r1a0: u288 {
            limb0: 0x5909c55ee21d2f3c376468dd,
            limb1: 0x26248daf38c12a41abcd11a8,
            limb2: 0x869345ab0bc64fb,
        },
        r1a1: u288 {
            limb0: 0x979f98ed35726885f94824b2,
            limb1: 0x52b4cae5d9fef26387804f21,
            limb2: 0x1e617921d4d67bdd,
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
            limb0: 0x71dc9785e2be9b178cd0967e,
            limb1: 0x529be16712c1816201beb2ff,
            limb2: 0x2d37b9a4b713389c,
        },
        r0a1: u288 {
            limb0: 0xa6f63e5928f4f4fd57d3a8c5,
            limb1: 0xc84b3ebc32b4af8c5c8e555d,
            limb2: 0x225ff1a2f20920d8,
        },
        r1a0: u288 {
            limb0: 0xa9d6be623422a274eb753333,
            limb1: 0xd565adf0ebdfec379e28224c,
            limb2: 0x2c284f57c3beb739,
        },
        r1a1: u288 {
            limb0: 0x7980a38f536ba5c1613bbc69,
            limb1: 0xd1c3bdcdf98a319544ad8bef,
            limb2: 0x6aca84bfbad32d2,
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
            limb0: 0x84a75aaf473eb0ae30a3ab05,
            limb1: 0x75ba552e2d79db6d36dc3c58,
            limb2: 0x30441348033feb78,
        },
        r0a1: u288 {
            limb0: 0x70d484317047bdf18cd87b84,
            limb1: 0x7bf0fb1b522de5ce60c3af5a,
            limb2: 0x2e3849f01599c2c5,
        },
        r1a0: u288 {
            limb0: 0x7940f415bbb89d423d9162ca,
            limb1: 0xeed3a94d24707e7d3fbaaba5,
            limb2: 0xebd285b365e45da,
        },
        r1a1: u288 {
            limb0: 0x5cd068a91407de411b81de28,
            limb1: 0x38c0645d8528576ddd012632,
            limb2: 0xeae8dcfad55ef21,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5e035535dc6b6f38522b689,
            limb1: 0x646f38052afce0d623996cdc,
            limb2: 0x198827cacc5a45b5,
        },
        r0a1: u288 {
            limb0: 0xdbaa826b3e832a08074bd542,
            limb1: 0xa4f4bb91267043c6fb1176ca,
            limb2: 0x23342865e922d9c3,
        },
        r1a0: u288 {
            limb0: 0xbec564c8bd044afe87886586,
            limb1: 0xd31ae120c39ee70cc74da10d,
            limb2: 0x184b4f171340db42,
        },
        r1a1: u288 {
            limb0: 0x14d3d18c3efbbf294c5b7c65,
            limb1: 0xeae7c187800082f1069f9605,
            limb2: 0x41468979800f001,
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
            limb0: 0x61e632104e644ab32e75c2cf,
            limb1: 0x1529ae7edab9a69e91e13e82,
            limb2: 0x448ba6367518c7e,
        },
        r0a1: u288 {
            limb0: 0xe6b68d062d4786b705f56bfe,
            limb1: 0x4a11f67d0116b1f2eab99321,
            limb2: 0x15207e782ff32605,
        },
        r1a0: u288 {
            limb0: 0xddc622b08c6af2e65cf40a47,
            limb1: 0xb516b50681ecf3d182f9a643,
            limb2: 0x1f388b3723dd0710,
        },
        r1a1: u288 {
            limb0: 0x4c04b36497a3ef8415357f24,
            limb1: 0x631d282cc1266b3e27ed6f31,
            limb2: 0x74579501fd7f180,
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
            limb0: 0x5bc505b7411157ec5e63298f,
            limb1: 0x54f9bae00582244d4b0c57f9,
            limb2: 0x1aa45e2761f924ca,
        },
        r0a1: u288 {
            limb0: 0xfcafe8911df389368b011345,
            limb1: 0xfb7063d575f07c963cf8bf75,
            limb2: 0x94634633ec3fc2d,
        },
        r1a0: u288 {
            limb0: 0x346f55f37e809f75a4363955,
            limb1: 0xa99bdb98a7eada87ac4273a6,
            limb2: 0x85d60a8ca6b6400,
        },
        r1a1: u288 {
            limb0: 0x1414639340a2ef0e4e3eff76,
            limb1: 0x9c1659904bb849563ecfb12d,
            limb2: 0x2184eeceb36ffc00,
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
            limb0: 0x199b31521251606a0b5105ef,
            limb1: 0x4f3f91e7107e80f95a543cf9,
            limb2: 0x197b5addf0cd7b69,
        },
        r0a1: u288 {
            limb0: 0x3b652e05fa9f4205124a02c1,
            limb1: 0x2e5f0299f0cc134e9807ae89,
            limb2: 0x1d6124bf534c2f5c,
        },
        r1a0: u288 {
            limb0: 0x48eb058df396777d2e56730b,
            limb1: 0xa84be8442e2c2f65ae9f835a,
            limb2: 0x11a7180cf9284219,
        },
        r1a1: u288 {
            limb0: 0x777c9b106816cc4b3caf678a,
            limb1: 0x2408ef225f99f4108637b4fb,
            limb2: 0xdc93135a21fbb79,
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
            limb0: 0x22a62ea9870a973f11ee95f5,
            limb1: 0x84793e2fb1d8bfea4a8f940,
            limb2: 0x2d881e1d72859f41,
        },
        r0a1: u288 {
            limb0: 0x50d3721cde47f5cd12242e79,
            limb1: 0xbd97a70023e20f600dfb444b,
            limb2: 0xe4275d43aea30ba,
        },
        r1a0: u288 {
            limb0: 0xa2acf0b3247b32e60214d8c5,
            limb1: 0x5b3de34703aee60b49555986,
            limb2: 0x33addce4851ee1,
        },
        r1a1: u288 {
            limb0: 0x44b2aad8ba5354b605505056,
            limb1: 0x60d7ccfd63a422d653764d5,
            limb2: 0x1b1db627df86ccff,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x105a43226ec38e98e6c23518,
            limb1: 0x229ca71e965b80bf8a83a574,
            limb2: 0x13a6772d7b4e0922,
        },
        r0a1: u288 {
            limb0: 0xed2277940435d398f92ea90a,
            limb1: 0x2d7d41415ee2babce7af4aea,
            limb2: 0x25b3e164517573d9,
        },
        r1a0: u288 {
            limb0: 0xb7278a28b9950fcc8140a656,
            limb1: 0xf31d0b8ea78e4f04c30003b9,
            limb2: 0x1d47285f8d9daea4,
        },
        r1a1: u288 {
            limb0: 0xd5b763f072814acd3bba44a3,
            limb1: 0x92e2afc37a2346c690abfff0,
            limb2: 0x19d85fa564198405,
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
            limb0: 0xcfb4c5fd8ca1d81c5145a09e,
            limb1: 0x3a44609c95d72e0c191eaf0e,
            limb2: 0x149563c6a82301a2,
        },
        r0a1: u288 {
            limb0: 0xbc040d5c0654417ddf55cddb,
            limb1: 0x7adb9d0e3b9cebb21c491caf,
            limb2: 0x3324039b7384c,
        },
        r1a0: u288 {
            limb0: 0x297f89a8c2324594d989c66f,
            limb1: 0xc6fafca3083edcba19c56b5e,
            limb2: 0x1bc3a26424f3af11,
        },
        r1a1: u288 {
            limb0: 0x52571f163d29bf7f84dfc946,
            limb1: 0x5c3ad79b8fe86dc120ffe893,
            limb2: 0x26c950947ea5a816,
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
            limb0: 0xe6e525b79231526d4a289228,
            limb1: 0x22dc9b47c1c9f6134169244,
            limb2: 0x205c4ee5af7d692c,
        },
        r0a1: u288 {
            limb0: 0x20bff47ec31adb4f222d9ad3,
            limb1: 0xaba54a2518e869175568798a,
            limb2: 0x12c11f14f6e5c135,
        },
        r1a0: u288 {
            limb0: 0x32da08de5b20a8dacd23a6b1,
            limb1: 0x1efa7ef7f1ce6e85ff0504f7,
            limb2: 0xa12925fef15239d,
        },
        r1a1: u288 {
            limb0: 0xf02ff7a38a84b5f8dfdd79da,
            limb1: 0x50a6948f73174e84ab8596b7,
            limb2: 0x1ad12b716a9e3407,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb93ef877a1bf6978b1d252c9,
            limb1: 0xfdc6bd67461abcca584a07b7,
            limb2: 0x1e9573c233e0b6cc,
        },
        r0a1: u288 {
            limb0: 0x316a9f63030c7e4c4b7376ca,
            limb1: 0x38d96f4c3cd9b3868ff2be4a,
            limb2: 0x16acc398306e5d51,
        },
        r1a0: u288 {
            limb0: 0x32f6c705c978791d447250aa,
            limb1: 0xfa4630c55bf1ee9f60fd05f6,
            limb2: 0x986677dae27768,
        },
        r1a1: u288 {
            limb0: 0xecdb23f0ce8ce311d903d9e,
            limb1: 0x15965ae6818373ec57d1c808,
            limb2: 0x153a2752305d6899,
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
            limb0: 0x8bfbd512df604261f1b96a8f,
            limb1: 0x3f57489970ea84de4b7848cc,
            limb2: 0x11f66b0148e0e276,
        },
        r0a1: u288 {
            limb0: 0xb3c7d899b175b0a9129a6128,
            limb1: 0xef86cb03bfbcd4b741cce84b,
            limb2: 0x28ce0b5220f52f25,
        },
        r1a0: u288 {
            limb0: 0x2756e9842e70ec93fa38ff6c,
            limb1: 0xd9791e6efb7e2cf33717836c,
            limb2: 0x1765190776f03c5e,
        },
        r1a1: u288 {
            limb0: 0x4ae351c84aad12b81cdca04a,
            limb1: 0x38ddffe59d9669eae599ed09,
            limb2: 0x1e08f8006517962f,
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
            limb0: 0x5948e255ff48311ab0cc2e92,
            limb1: 0x276c00f7b18c172305108f89,
            limb2: 0x1acdde43b0fac77a,
        },
        r0a1: u288 {
            limb0: 0x45efa45d05685b257bcee289,
            limb1: 0xf1d34f09146f276a27fa3a77,
            limb2: 0x18c19f7553252bf8,
        },
        r1a0: u288 {
            limb0: 0xbc2c5d5bb1e52ef35b5f43f3,
            limb1: 0x4655c08d499b691b077653b3,
            limb2: 0x27b6990e2dd5353c,
        },
        r1a1: u288 {
            limb0: 0xce56d750b628285ee0e5c67f,
            limb1: 0xc51580d74c37243edc98cb41,
            limb2: 0x7f3c72d9fd2e2e,
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
            limb0: 0xea0106acd6845244b845cc9f,
            limb1: 0x78010ad6f87b8a38f618922f,
            limb2: 0x2d462acd6ff81978,
        },
        r0a1: u288 {
            limb0: 0x1060901209654e6a8eae1a31,
            limb1: 0xaa57b6291ef46620f9dfea10,
            limb2: 0x1b29c780890ecbc,
        },
        r1a0: u288 {
            limb0: 0x60f414692a8e36cffc57b350,
            limb1: 0xbf098faf4989fe7c886ba360,
            limb2: 0x2252af9c2275873a,
        },
        r1a1: u288 {
            limb0: 0xcb8a71645adf41b6e0a0ecc5,
            limb1: 0x26f9a35bd151024ba36f5215,
            limb2: 0x69a01049c306918,
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
            limb0: 0xc244a67d53f2aee49c8f975,
            limb1: 0xba4e9a4071e6f518a8acea13,
            limb2: 0x304e3ab2ebe55943,
        },
        r0a1: u288 {
            limb0: 0x3b88a1a152196cccd3c682ee,
            limb1: 0xa5eefc974598a8e1b7e87a0f,
            limb2: 0x2947b1c7c7ff3818,
        },
        r1a0: u288 {
            limb0: 0x1436c77c3e45071338c7d059,
            limb1: 0x2dfb4c1da08c11c349eacaff,
            limb2: 0x3e5eeccd04ba0d3,
        },
        r1a1: u288 {
            limb0: 0x87d9cad5e59b8eed225b46f9,
            limb1: 0xc8811570912685b4c825e4f4,
            limb2: 0x2022937da15da660,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xee1e863e32b53dc83affe758,
            limb1: 0x2dca2ef479fbc9ba6cc19d3a,
            limb2: 0x27bc746445febf5b,
        },
        r0a1: u288 {
            limb0: 0xf64af01582ae1b9560580b91,
            limb1: 0xbef4ae9d2c2f07aa4b802d52,
            limb2: 0x1dc1024c9b2b0f0d,
        },
        r1a0: u288 {
            limb0: 0x5491f69d0dba6522d671f3b1,
            limb1: 0x4083a62255fdfaac3ae466d9,
            limb2: 0x1dc65776042bf844,
        },
        r1a1: u288 {
            limb0: 0x13da1a013431bd9f845120db,
            limb1: 0xf577464ecce140667784b588,
            limb2: 0xcae2976c301223b,
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
            limb0: 0xfb17e043b5a164d7493d2d7a,
            limb1: 0x2f9e064e0869da4dc583534e,
            limb2: 0x24ac17d027115fd4,
        },
        r0a1: u288 {
            limb0: 0x887784f007836fafba72e8f0,
            limb1: 0x33fa91a016a44bf0053ebeb7,
            limb2: 0x1036a8d4b6abf0c2,
        },
        r1a0: u288 {
            limb0: 0x207b7de762e762287ecfafbf,
            limb1: 0xe1e46aa82c6320d4653358c3,
            limb2: 0x1951d83f3c89e156,
        },
        r1a1: u288 {
            limb0: 0x6f3290439560b842ed904205,
            limb1: 0x8d3ed99e685dcb4e36d1703d,
            limb2: 0x46c60fc808942a4,
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
            limb0: 0x9721e5528c3abc39be844fa5,
            limb1: 0xd576eb80d699aa07a7c62d03,
            limb2: 0x276bffc0b327d131,
        },
        r0a1: u288 {
            limb0: 0xc6ee4756765effc6a756d206,
            limb1: 0x1d90b207c157b5a58ad0f3fa,
            limb2: 0x5dced7a6c250171,
        },
        r1a0: u288 {
            limb0: 0xe5e52e592479309e59047d55,
            limb1: 0x296299e3f532f03db81a2934,
            limb2: 0x5caba17c18a8a07,
        },
        r1a1: u288 {
            limb0: 0xe1fd6e6fc57441488e968baa,
            limb1: 0x78c3673579b64753947224f3,
            limb2: 0x2a282c8a2120ab3f,
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
            limb0: 0xf114fee27e37fb9e41423582,
            limb1: 0xe50c50503276f5ba41ab065f,
            limb2: 0x1d1c720d0be500ed,
        },
        r0a1: u288 {
            limb0: 0x7f9cdfe8d4391c28098efa79,
            limb1: 0x5e3e0dc81addf6138fe43ef8,
            limb2: 0x2e5b93091fb2b301,
        },
        r1a0: u288 {
            limb0: 0x33c64f2cb59d1a915749a56d,
            limb1: 0x1289cab6c5b3bfeaa2261a61,
            limb2: 0x138d9074db44d837,
        },
        r1a1: u288 {
            limb0: 0x2fb1b3ea5065814db7abe5a3,
            limb1: 0xb9312342343b86f128e53397,
            limb2: 0x1c53490fe9fe065c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7d62db960da4d58e53240dc5,
            limb1: 0xec11b6f5714d7465ee6fb55f,
            limb2: 0x267d7d9709808d9d,
        },
        r0a1: u288 {
            limb0: 0xd1069e011de0c19e30d10da3,
            limb1: 0x56ae87e27f76df491d50c391,
            limb2: 0x1efbb7cef9cd14f,
        },
        r1a0: u288 {
            limb0: 0xb1fd9c3969569e1dbe428c44,
            limb1: 0x919e51f2111c139aa4143685,
            limb2: 0x1da3bd532dbc16ea,
        },
        r1a1: u288 {
            limb0: 0xd10b701a1f83e43f6eb0076b,
            limb1: 0xb87971aa17555565b8dca3fe,
            limb2: 0x1a97cdcdf1d51a4c,
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
            limb0: 0x31edcdb0f5c8abcf264dcc53,
            limb1: 0x8cdac16cc0a90aad11e42238,
            limb2: 0x2b3ce0f3ac5c7b10,
        },
        r0a1: u288 {
            limb0: 0x83a771f8c4c375e077e9b1b5,
            limb1: 0xfe19f72c7717531f5a8ebb0b,
            limb2: 0x70975cd03df0f26,
        },
        r1a0: u288 {
            limb0: 0x155b6e4c2ece2417ce565d16,
            limb1: 0xa439ea6e618c6d8067b2d78d,
            limb2: 0x2a15cc1532f42e53,
        },
        r1a1: u288 {
            limb0: 0xac78ad9d98adae8212f02e71,
            limb1: 0xb36d89460a197f72dd4dc9fe,
            limb2: 0x1cf5b65a5488f781,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3ee5a9be7c14b4aad5136df,
            limb1: 0xd02a4813204a5fc03c412330,
            limb2: 0x263510e26f9eb3f8,
        },
        r0a1: u288 {
            limb0: 0xa1108e68c2b1145d742a3772,
            limb1: 0x93ceb87a0cad938677470e2f,
            limb2: 0x7f483e4bae3ff56,
        },
        r1a0: u288 {
            limb0: 0x82df8a4335c22a3bd85bba76,
            limb1: 0xc242fb3664340d82606d8438,
            limb2: 0x2b3c386b1b20c4d5,
        },
        r1a1: u288 {
            limb0: 0xa081b3543ddb6d50a9e7ee5c,
            limb1: 0x20c5b8f71bbbaf60093169c5,
            limb2: 0x142475c2041f1f23,
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
            limb0: 0x92d7aa6031f41aece40cb6f7,
            limb1: 0x2e4c6d72e6e59e45e31a2e97,
            limb2: 0x25590149f9df43d3,
        },
        r0a1: u288 {
            limb0: 0x29992e8d90cd1580efc0378f,
            limb1: 0x374822cbdd7e3a9cdf59c469,
            limb2: 0xf200cb137b36cf3,
        },
        r1a0: u288 {
            limb0: 0x677a72b69f9f0524fa99e08b,
            limb1: 0xb27571889d894002c87705d6,
            limb2: 0x10c2e31063d28c89,
        },
        r1a1: u288 {
            limb0: 0xabc22679e3c1ad62891d1555,
            limb1: 0x8bd87e851853fec0ece6aa6,
            limb2: 0x24519d1554bd282f,
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
            limb0: 0xf4f1738005dc9efbf16a567d,
            limb1: 0xc71d546d6c5aede7981379a3,
            limb2: 0x2716d24c327e5186,
        },
        r0a1: u288 {
            limb0: 0x1ae7a80db36405753ce8c54a,
            limb1: 0xf5e48b48dc330fdc860b681d,
            limb2: 0x304f4882c312dd44,
        },
        r1a0: u288 {
            limb0: 0x4d887aca3d0779d9e03f4822,
            limb1: 0x4cf17fa1e6a11e835ef03d67,
            limb2: 0x1d56c6a90bcc31b8,
        },
        r1a1: u288 {
            limb0: 0xef49b13ec047b38c57f9e648,
            limb1: 0x3ba55ed7d40031ff4475125b,
            limb2: 0xb2d6c301a97b114,
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
            limb0: 0x53ff5c3f5c941f65da8c3ecd,
            limb1: 0xfa76e96cdb6c819f01c32ece,
            limb2: 0x1f259fc5e0dbb5a3,
        },
        r0a1: u288 {
            limb0: 0x98b7121a2a43150f0716744f,
            limb1: 0xda2cfce612817dc345ae653d,
            limb2: 0x1403256f5a92c932,
        },
        r1a0: u288 {
            limb0: 0x3040efeed3be3042877d725a,
            limb1: 0x2431ef620501bcf101aa43d1,
            limb2: 0x4172f683e048a54,
        },
        r1a1: u288 {
            limb0: 0x2c789fddef39f7885b5e7c3,
            limb1: 0x1f1c0c92a0dda96fd7c5c7ae,
            limb2: 0xe66f796f59076e3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xac4c0989e194ff7f8454ee55,
            limb1: 0x37495b3d41f70a7fae7256bf,
            limb2: 0x6ad861f8298c10a,
        },
        r0a1: u288 {
            limb0: 0xed47a35e75c59f6082f41828,
            limb1: 0x65cb2a585073da09ece77cee,
            limb2: 0x2d7ab3d1018fc4c7,
        },
        r1a0: u288 {
            limb0: 0xe9041f7adeff43ba387dea6c,
            limb1: 0xf5f391230dfbfd0a2a9b7806,
            limb2: 0x182fb6d1c776ef35,
        },
        r1a1: u288 {
            limb0: 0x90278ff665a682f355d5c264,
            limb1: 0x61592acaef12e5326e97066c,
            limb2: 0xa66c1c47b58535c,
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
            limb0: 0xed4ab598db1496ff28a85fbd,
            limb1: 0x957d8144912d3514d0b49ad7,
            limb2: 0x101851ff846e2463,
        },
        r0a1: u288 {
            limb0: 0xd17cbf0f1d5dd377cb13e1ce,
            limb1: 0xb1bb6ce1e0e1d25c02d31424,
            limb2: 0x2bb8df890d12f5db,
        },
        r1a0: u288 {
            limb0: 0x7def082b8117cfcd23c2e34b,
            limb1: 0xf8033ea8d945175a6e657eac,
            limb2: 0x1d66b10182ccadfa,
        },
        r1a1: u288 {
            limb0: 0xd4d6ac0acd42aab4db6f87f5,
            limb1: 0x6e4c2408dc5ce85eb7269e70,
            limb2: 0x1c50d9605b123007,
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
            limb0: 0x4f354609aba017ce600d98d7,
            limb1: 0x9716362c7e49e05d49e162b8,
            limb2: 0x2a7793648fac0b4c,
        },
        r0a1: u288 {
            limb0: 0x4417a0adf13a43d424248e8,
            limb1: 0xdf458546e036cd5b93e2910,
            limb2: 0x2bb991ae52c25730,
        },
        r1a0: u288 {
            limb0: 0x6db81d11f12edfbe02687a7b,
            limb1: 0x9ea8b0b62963a7480cb1775a,
            limb2: 0x1d2b3a0f10ef902,
        },
        r1a1: u288 {
            limb0: 0x95ef69f25af3dc5b6932dc5b,
            limb1: 0x52a602cd04eb500148cafb17,
            limb2: 0xa3af8ea490647a5,
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
            limb0: 0xfe8dcc07fcac4af81d4a09d,
            limb1: 0xfece723c8a4adfffccfbfbdb,
            limb2: 0x1137b10d59f84ab4,
        },
        r0a1: u288 {
            limb0: 0x9d696dce0912310e87102cc2,
            limb1: 0xae4e9dbb634e6599e4a14f30,
            limb2: 0x1bc1c2452ead53a5,
        },
        r1a0: u288 {
            limb0: 0x7e278f8c03ce02d0148a0cb3,
            limb1: 0xaa756f272696fa0097109d8f,
            limb2: 0x5d42d19bf864743,
        },
        r1a1: u288 {
            limb0: 0xb568e59ec84af6421238b64b,
            limb1: 0x8ba8515cbadc670b3a0a7c2d,
            limb2: 0x257ba127c442df38,
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
            limb0: 0x800e2184b70f8f1025ddc42,
            limb1: 0x4c311793545104e9c73d8678,
            limb2: 0xfea6d3a6f3c7435,
        },
        r0a1: u288 {
            limb0: 0xa2ac1d612ad967f0db17a276,
            limb1: 0x4420da09fc255650dbb60d80,
            limb2: 0x806f1d10bdfefb0,
        },
        r1a0: u288 {
            limb0: 0x642bef53664c9826f30b9f64,
            limb1: 0xe29e26108c34bc2ab6afbb2a,
            limb2: 0x29ca7a461476a020,
        },
        r1a1: u288 {
            limb0: 0xd1db4f40268a7e16f0ec9d31,
            limb1: 0x29f39777c8b715c2432fa6b8,
            limb2: 0x2c100fa73f92152e,
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
            limb0: 0x11941cdb70bd64cea488434e,
            limb1: 0xbe3fe35d1869b4a65b9d398,
            limb2: 0xbe9323faeb15f79,
        },
        r0a1: u288 {
            limb0: 0xcf5dc0b47a46a751fb3933c1,
            limb1: 0xb001273468449fbe83dad652,
            limb2: 0x21fd19990bf7fdb4,
        },
        r1a0: u288 {
            limb0: 0xb6007995a669af28b8658dc1,
            limb1: 0xa45f7a90b5a8e8276e780096,
            limb2: 0x2d78a31e3c4ace6c,
        },
        r1a1: u288 {
            limb0: 0xc7e3694fac002b837bb12565,
            limb1: 0x8b3ea63af0cbdc69147a119e,
            limb2: 0x1b39b33d574920aa,
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
            limb0: 0x13feb944079903fb7862e22a,
            limb1: 0x6f72122ef96399528f6dfd9,
            limb2: 0x1b13f3867fd28fff,
        },
        r0a1: u288 {
            limb0: 0x3b46aef06d1e128804058944,
            limb1: 0x7d7165e4bd402af8c90759bb,
            limb2: 0x1ed229df5300c80e,
        },
        r1a0: u288 {
            limb0: 0x710a90592e574726d4933f8b,
            limb1: 0xfe31d0e27415c32a6e5ff395,
            limb2: 0x16a19f7758a1262b,
        },
        r1a1: u288 {
            limb0: 0x7bebcad80401fa5056e0301e,
            limb1: 0xcbeb8807ab1086bb8b441db2,
            limb2: 0x12998fb304ad41bb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb875abc3727c3a09823d909,
            limb1: 0xd3a949eff5a41b00604174ba,
            limb2: 0x2c18fcef406730f2,
        },
        r0a1: u288 {
            limb0: 0xe55db1bcd63fc3b5550a501,
            limb1: 0xbb86ee0199c76f63035a299e,
            limb2: 0x113404885bcc26d0,
        },
        r1a0: u288 {
            limb0: 0x557ac6f2db916249b5e4e636,
            limb1: 0xaf3ac528ed8bf8ac04576954,
            limb2: 0x4803bd3a4f12d05,
        },
        r1a1: u288 {
            limb0: 0x3652550d811c5b3ee9a6e84b,
            limb1: 0x59164998fdce13cb9fa3b881,
            limb2: 0x157f2d3d72260797,
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
            limb0: 0x2ec0a93cd673e8fd6c491150,
            limb1: 0xb3f20eed62dcc83fdf66a932,
            limb2: 0xc69df9c2d3628e8,
        },
        r0a1: u288 {
            limb0: 0x3bcbc97bb5e9926232d42714,
            limb1: 0xbe3ae70aba21648895c65c9b,
            limb2: 0x1f03d41f5db68631,
        },
        r1a0: u288 {
            limb0: 0x452b1a2924883ccc982ae6aa,
            limb1: 0xe9cf02eaec4f6f7157d65b5,
            limb2: 0x250b85da283c11eb,
        },
        r1a1: u288 {
            limb0: 0xb6e9f433217bbf7a65758313,
            limb1: 0xd05c73f0b150e57516edfd6d,
            limb2: 0x3464a0284bfee2a,
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
            limb0: 0x824b94ef2daedacf56d150a9,
            limb1: 0x952cde50ac95fff6c6dd755b,
            limb2: 0x2b4942f26dc19f81,
        },
        r0a1: u288 {
            limb0: 0x5644cddfac5c0385886df734,
            limb1: 0xe2d995a233688aaa0002323f,
            limb2: 0x2fa728ecf065a374,
        },
        r1a0: u288 {
            limb0: 0xb57964244aa5692ca75bcb23,
            limb1: 0x853332b763387fd9c653bd27,
            limb2: 0x2a932998801ea933,
        },
        r1a1: u288 {
            limb0: 0x7fb4508712a4f66338da816,
            limb1: 0xb07ffea9b88e66bdf22da319,
            limb2: 0x129234910cc79877,
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
            limb0: 0x6b470454f3b79516d431e4ca,
            limb1: 0xbe68451c36abad39c78760ba,
            limb2: 0x26c68a916a41b1c,
        },
        r0a1: u288 {
            limb0: 0x656bfb8206b687bc95f2a5fa,
            limb1: 0xb9bdb1359f44b4e571c6296b,
            limb2: 0xc5d91ddf5ddc194,
        },
        r1a0: u288 {
            limb0: 0x93a2bed64862d3568d961a0e,
            limb1: 0x8eba899ba11bc54a4a589c98,
            limb2: 0x118cee26e7eb32ad,
        },
        r1a1: u288 {
            limb0: 0xd4dd3bb653023b0cb84954b5,
            limb1: 0xe0eb5c9c7d3ff79ba145d113,
            limb2: 0x2c6250fe633dfb8e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d183e36c0061143aeff53c5,
            limb1: 0x2f58dd87f3860faf2d4f0fd9,
            limb2: 0x12db61564005bb28,
        },
        r0a1: u288 {
            limb0: 0xc3007c1fcb0d1dd7ae3a542d,
            limb1: 0x90b4c77751f7e70f2816748d,
            limb2: 0x244c8d6e2af3ad8f,
        },
        r1a0: u288 {
            limb0: 0xe8011634c1e7a5244c19f56,
            limb1: 0x46ac810f821a40b5af7075b6,
            limb2: 0x2f8902cb32c562db,
        },
        r1a1: u288 {
            limb0: 0x1464d79f35f56888355cd6da,
            limb1: 0x5a46c6e704bdd4830a56fa76,
            limb2: 0xfe90879119734a3,
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
            limb0: 0xeb9099b031e21a53d2987a07,
            limb1: 0xd0600e4b56de882eb4eebd57,
            limb2: 0x2bb3f9b30415fca4,
        },
        r0a1: u288 {
            limb0: 0xfd5d877209fa5d4f35ed13fd,
            limb1: 0xb2a89aed5fc2a4ef3e310395,
            limb2: 0x2bbd68481a6df788,
        },
        r1a0: u288 {
            limb0: 0x34a781c9e23525982d360a8d,
            limb1: 0xaf042356c76d5ed33ebebf91,
            limb2: 0x2571cd1fb452805c,
        },
        r1a1: u288 {
            limb0: 0xeee54c3bd109f5f2af4c6059,
            limb1: 0xb5c35a84d822a096536606bc,
            limb2: 0x26ae4c6b6ef2d6a1,
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
            limb0: 0x81c1eb48b97dfe7ce0f43577,
            limb1: 0x93e5888f1bcf37f88a072051,
            limb2: 0x247b34e97ea2f2e7,
        },
        r0a1: u288 {
            limb0: 0x8d41aa598c27439a493d0b92,
            limb1: 0x810be068dd0b02fa5a1bf43b,
            limb2: 0xbcbc89dd54f0ebf,
        },
        r1a0: u288 {
            limb0: 0xb61d726038894a3cadb90429,
            limb1: 0x666c9d001dae6d2932cac0f,
            limb2: 0x289222c8bca37d79,
        },
        r1a1: u288 {
            limb0: 0x7d938a03f0129678dcc96ab2,
            limb1: 0x655ca3feff3b3822ef65a9d2,
            limb2: 0x293ebcd16bb44dc1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd75ab364be287f4224fedfaa,
            limb1: 0x6149401e497b2a45fc466805,
            limb2: 0xb140460d4244828,
        },
        r0a1: u288 {
            limb0: 0xe3209b5104ec0e01422bb890,
            limb1: 0x89d0bf4c382dea8c4e1e371e,
            limb2: 0x916fcd30de8a570,
        },
        r1a0: u288 {
            limb0: 0xf39a7b4a53e0a60de9cab434,
            limb1: 0xe8c4a2858f43bc9d464dec73,
            limb2: 0x4fa29e61b754837,
        },
        r1a1: u288 {
            limb0: 0xddc5ab769e3e7c3e1fdabfad,
            limb1: 0x81ee74c77dc971b941befa07,
            limb2: 0xba71dfbbd754cc2,
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
            limb0: 0xd7159ca1b6d432c56ecfe0b3,
            limb1: 0xeeea07d0b913151b1396701f,
            limb2: 0x23cc6424f84bdd67,
        },
        r0a1: u288 {
            limb0: 0x9ce4e07568d341f92b4a1bfa,
            limb1: 0xf130f099404f9a6a26820336,
            limb2: 0x294ed4cfe2ce3518,
        },
        r1a0: u288 {
            limb0: 0x14ae25255cfdcf3132c48afe,
            limb1: 0x123bed23b23db4862502e4db,
            limb2: 0x1b985ad0f5d6d30e,
        },
        r1a1: u288 {
            limb0: 0x1502af6203eb0b25935a65c3,
            limb1: 0xafc5c497fa8cb79c7422cfd7,
            limb2: 0x2783eaad36f52615,
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
            limb0: 0xcc513905a5767ddbd0e4bc78,
            limb1: 0xb2ac37999cb3eab145ae5dc2,
            limb2: 0x2de010d21114b44,
        },
        r0a1: u288 {
            limb0: 0x858992bd13df83fc910f36e8,
            limb1: 0x391df019bc63963857cb3e3,
            limb2: 0x2ab43f9a32ec3b3f,
        },
        r1a0: u288 {
            limb0: 0xa746b65d3088742e7d66e49b,
            limb1: 0x95260ec71fe3b841952d3f4c,
            limb2: 0x17c15be96e9b549d,
        },
        r1a1: u288 {
            limb0: 0xae8214580ac1325ed9e2cc5d,
            limb1: 0x22eeb64cc4df3067e500e938,
            limb2: 0x1f510085ee6930ef,
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
            limb0: 0xc9403a01e4d09426a38ddd69,
            limb1: 0xa70b177488da75ae3994eee8,
            limb2: 0x3040d876a50eb5f6,
        },
        r0a1: u288 {
            limb0: 0x5fb81294311c994cad3f1419,
            limb1: 0x826449d3bbe896078d98ad1d,
            limb2: 0x2dce03d542942c28,
        },
        r1a0: u288 {
            limb0: 0xcb1152963c3d8f9dafc41459,
            limb1: 0x8273eab926cf830808735ec8,
            limb2: 0x9599aab91dc2067,
        },
        r1a1: u288 {
            limb0: 0x1842ea120dc30383f3ade01a,
            limb1: 0xfd87cb0b7dd8a3268a2d13e8,
            limb2: 0x33d2d8f83dcaf85,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fc88eefd7cbcd60e76e1b5c,
            limb1: 0x5f82f17c93dac83486d5acc2,
            limb2: 0x1b6420f71549a8a8,
        },
        r0a1: u288 {
            limb0: 0xe2179035033ab27fe8c0aef5,
            limb1: 0xb6dfcf5c95a2aef1f485c21d,
            limb2: 0x30de3e27aa0222d,
        },
        r1a0: u288 {
            limb0: 0xd4585dab3c57792215bbc713,
            limb1: 0x8210a7bed0415ec84aaa40b2,
            limb2: 0x1fd8dada6faa2da0,
        },
        r1a1: u288 {
            limb0: 0x5a7c3251639ef215f848016c,
            limb1: 0x40ad67d2b72d8aa23542e88e,
            limb2: 0x8168bafc00058d1,
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
            limb0: 0x9f6f399d5bf796ac85f0935d,
            limb1: 0x5fbcaa9ff48eb8c4947dbb07,
            limb2: 0x19dbf5ba4378bc87,
        },
        r0a1: u288 {
            limb0: 0xefdbf1c180f936271ff90c14,
            limb1: 0xcea6d6b3f507b1b19f9827c7,
            limb2: 0x1daa8d92b800e190,
        },
        r1a0: u288 {
            limb0: 0x1ddadb70c3f9ef987cf9231e,
            limb1: 0x9e97321909766a550c445896,
            limb2: 0x27ea18e6b2297b21,
        },
        r1a1: u288 {
            limb0: 0x1d8bd6dc387d066249bf0f0d,
            limb1: 0xaf8318a77043ccee809b9c4d,
            limb2: 0x1bd4feab98ec941c,
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
            limb0: 0x3535ffd5f77056a88878c91,
            limb1: 0x321d41cbb403a5647a16d4e9,
            limb2: 0x38be6b73544d157,
        },
        r0a1: u288 {
            limb0: 0x5bdde1654d19f7edcb62fd,
            limb1: 0xec267d76d1be9cdf238cb0e7,
            limb2: 0x21c4576a298d0916,
        },
        r1a0: u288 {
            limb0: 0xc638f8ce9ccada2be02f707e,
            limb1: 0x34bec933734c86a52ef8870b,
            limb2: 0xfc4c90ec1db52a4,
        },
        r1a1: u288 {
            limb0: 0xf79964ff4067223df6022171,
            limb1: 0x2b20968be14851b2628b9b88,
            limb2: 0x340118964fb92a8,
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
            limb0: 0x951fa62dafea7ba6f29c6b0f,
            limb1: 0x1157be3c76bc0f8e6b1c2495,
            limb2: 0x1d3dbdf09b2f99c5,
        },
        r0a1: u288 {
            limb0: 0x3b9a5baf3232a4c64f54768,
            limb1: 0xfd7fa4595d854d0dc918e19a,
            limb2: 0x26574e22d45d548e,
        },
        r1a0: u288 {
            limb0: 0xe5846fdffb2b4a9a30724d89,
            limb1: 0xd0ebe77ee8214f0e10bcd0,
            limb2: 0x1b923df220a9145b,
        },
        r1a1: u288 {
            limb0: 0x4ee1081fb923905d195e979f,
            limb1: 0xa09a76797ae02ea8d73710ca,
            limb2: 0x22a961a9a07bebec,
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
            limb0: 0x9013d78fb983c9022eb41def,
            limb1: 0xf052141be643baebcfeabaf1,
            limb2: 0xa1c076121aae793,
        },
        r0a1: u288 {
            limb0: 0x29600a880b212bf74bddc268,
            limb1: 0x9b2f52b1246f35a55fbace5f,
            limb2: 0x2cd7ce8dd96c05e4,
        },
        r1a0: u288 {
            limb0: 0xf94655662998fc67557fd6e7,
            limb1: 0x3a2c09f8ad571270a57ef2a1,
            limb2: 0x4165a4aa0c49ab,
        },
        r1a1: u288 {
            limb0: 0xe96e9a8d0585653c64848586,
            limb1: 0x812c42f4f881e1050f4b0a93,
            limb2: 0xdcc5435af19640c,
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
            limb0: 0x70357414d4c3838bfbb320e0,
            limb1: 0xae03bbdf6846a496bf4e3b4a,
            limb2: 0xc2157603738bfa8,
        },
        r0a1: u288 {
            limb0: 0xba91537dd08d0af030a2a089,
            limb1: 0x96fdca6c308d069916e35e16,
            limb2: 0x7cc36837ec0d47a,
        },
        r1a0: u288 {
            limb0: 0x12fc08234da602f44e23cb01,
            limb1: 0xbf92644353a4769353c1b6b0,
            limb2: 0x490d4ed19540f46,
        },
        r1a1: u288 {
            limb0: 0x58d611dd561f5d4c2dd95bb5,
            limb1: 0x2193b781d4457271367c08fd,
            limb2: 0x860f1d4a40bb7fd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa8bb9fdb455ca593a8d4fef3,
            limb1: 0x15c055071e03a4abaa0ca487,
            limb2: 0x2364e60b3665690d,
        },
        r0a1: u288 {
            limb0: 0x9e557f0311562ec38c996a9d,
            limb1: 0xeb476e323150995be5f0bffc,
            limb2: 0x1a76427285035fe7,
        },
        r1a0: u288 {
            limb0: 0xb7056fdb2e6c1c6325ee0b99,
            limb1: 0xd29ba5ee48ab1f117f736c03,
            limb2: 0x4e4f04928b90d8c,
        },
        r1a1: u288 {
            limb0: 0x128e872c980d6fc403071231,
            limb1: 0xf3ef6ba41b113ef3d8d23ca9,
            limb2: 0x2581c6a75bff00bf,
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
            limb0: 0x21f3556e090bd28a6af6e648,
            limb1: 0xf46b5b9dbca6620ca7a0369c,
            limb2: 0x2f804720dd8519a7,
        },
        r0a1: u288 {
            limb0: 0x870c110e0724657035a9d418,
            limb1: 0x5d2db11ba3c901fe838667bd,
            limb2: 0x259ed9c4e926d29f,
        },
        r1a0: u288 {
            limb0: 0x77cd3c7ab8e73f859de7fa6d,
            limb1: 0x5482ef0cfe43dd4fdfeb9e9d,
            limb2: 0x2d00f601960f2e4f,
        },
        r1a1: u288 {
            limb0: 0xf414fb50bcdd61ebd64f42e9,
            limb1: 0x5dd76d61dfc154cc5dde7efb,
            limb2: 0x1743e8a6201c4213,
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
            limb0: 0x97811b6e087ef0605f69d191,
            limb1: 0x272204c1aa44753cf744b550,
            limb2: 0x19b2c6a22bbb4de9,
        },
        r0a1: u288 {
            limb0: 0x34566ecbea833cb895003649,
            limb1: 0xa202755fb9cdb55269fd4b22,
            limb2: 0x2f9257fc9ca3a388,
        },
        r1a0: u288 {
            limb0: 0x7467e4352d996065c88d080,
            limb1: 0x38fecf189071e1c65e46bb49,
            limb2: 0x2ffa26e5f619cfce,
        },
        r1a1: u288 {
            limb0: 0x14173ca2df05b1f4e3af0379,
            limb1: 0x65842d07ae0f8169d0b5bfa9,
            limb2: 0xd1d76bffe8665d8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x32071603dd4f69d2121a7bb9,
            limb1: 0x62d5c9db9ce9b9a92c06c35d,
            limb2: 0x16178985875c8e91,
        },
        r0a1: u288 {
            limb0: 0x936c7c9fe111664f58fd69b9,
            limb1: 0xb1e28611b154ae02669451d2,
            limb2: 0x130cf8e28aca049a,
        },
        r1a0: u288 {
            limb0: 0xe8610d5b7eada654993651f3,
            limb1: 0x2fd91f8235b4ea8fdeed116b,
            limb2: 0x21e92f7fca35bc97,
        },
        r1a1: u288 {
            limb0: 0x5a10141584ae3c9d08f3db82,
            limb1: 0x9f4d24751e5f1832f310acfa,
            limb2: 0x24d86e804288b927,
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
            limb0: 0x755c6a7d3801cf09c692bc3,
            limb1: 0x5479c34c042ca40f26e546fb,
            limb2: 0x3ef8ed2054ee4f7,
        },
        r0a1: u288 {
            limb0: 0xec89fe7a1b88f4e89d8f7f90,
            limb1: 0xd3679d666ef10e669893e709,
            limb2: 0x25507122fe0cc003,
        },
        r1a0: u288 {
            limb0: 0x6cf4f46f1016d5af37e5a743,
            limb1: 0x7d86add20ba07f002a3c6a28,
            limb2: 0x287bb2698aefb03e,
        },
        r1a1: u288 {
            limb0: 0x3748569bcafb85aa08cec554,
            limb1: 0x45449a472ab19382b42571d3,
            limb2: 0x2c6b30bd8cdb318c,
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
            limb0: 0x30bf492802e386367dc6cdbb,
            limb1: 0x87462fa02a9b8b4d0dd7ea5b,
            limb2: 0x13a312e1b8bba7b2,
        },
        r0a1: u288 {
            limb0: 0x6ad883f015706f7f88429d33,
            limb1: 0x48e378b4228a65705e9a8682,
            limb2: 0x22a37bd3109529af,
        },
        r1a0: u288 {
            limb0: 0xc5093b57254b8582c58b080f,
            limb1: 0x560dc1511ac9946ec5c956fd,
            limb2: 0x192f7a8847194cde,
        },
        r1a1: u288 {
            limb0: 0xbecc83d2b3e20ee2911b9f40,
            limb1: 0x5af2c61e6d660101af7ebc6c,
            limb2: 0x1b9d910343aa652f,
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
            limb0: 0x3c50925ae9e32601b1300217,
            limb1: 0x36c7723e886fcaa2865eaffd,
            limb2: 0x2177aa3562236c4b,
        },
        r0a1: u288 {
            limb0: 0xcebfa931f9634bb5913382ce,
            limb1: 0x129615703cf020974163182f,
            limb2: 0x2b37911288cbcb25,
        },
        r1a0: u288 {
            limb0: 0xd190e5b24b450b6d6936f9d6,
            limb1: 0x1a827e0c24095f55860c08d,
            limb2: 0x171b218235fa9050,
        },
        r1a1: u288 {
            limb0: 0xc125aeda648fce5874e53ebe,
            limb1: 0x6528663d64a6b66617a674a1,
            limb2: 0x18913243e805f8f6,
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
            limb0: 0x93575cad59b8ec7d60d74037,
            limb1: 0xf4cb4657e7fb7ae1c0dfeeaf,
            limb2: 0x151d5714df49792c,
        },
        r0a1: u288 {
            limb0: 0x48f4ab3c7a16f4812c9cfff0,
            limb1: 0xdabd6073564d49b648339331,
            limb2: 0x4cfca06488037a4,
        },
        r1a0: u288 {
            limb0: 0xcc6b9a8172e77eb3f89411fb,
            limb1: 0x802a7bc372d08637acbf365,
            limb2: 0x11779c9f8b4b5f13,
        },
        r1a1: u288 {
            limb0: 0xa3414e26958e5799b9c7e115,
            limb1: 0xd5551f2e6249c4f44fc12d11,
            limb2: 0x22e1ee0ae48cbfcf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc55d2dfd9ca5d465e3527b02,
            limb1: 0xf61d4e2080f04d982c7a5cbd,
            limb2: 0xd14c9b583792ce5,
        },
        r0a1: u288 {
            limb0: 0x4dc4f8de7b6f69e69e049a89,
            limb1: 0x19d6dbad4edef3db7eec187a,
            limb2: 0x2a7eecc35733c499,
        },
        r1a0: u288 {
            limb0: 0xd4ff158dca6972274c76e86,
            limb1: 0xb2686fa0fb7d089e6d98e1ec,
            limb2: 0xf4b0d6459ca29ff,
        },
        r1a1: u288 {
            limb0: 0xfdcc09da52c1ba83db7a1690,
            limb1: 0xb5718720a25a6118f7dc3516,
            limb2: 0x2d86bcabca5a0cd8,
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
            limb0: 0xa3d4b6e126036ffea2a6f3f9,
            limb1: 0xed7787aa79845002f3e934c9,
            limb2: 0x2852ddc65a2b2c38,
        },
        r0a1: u288 {
            limb0: 0x1d1b642c794023bafe96f979,
            limb1: 0x8a8c76ab0d346c7e4e5c2dd1,
            limb2: 0x99b1bb95642c6a7,
        },
        r1a0: u288 {
            limb0: 0x8f2a14acf6b19121377418fd,
            limb1: 0x8e6a28845db3bf5aabe486f4,
            limb2: 0x1cca4a3ab8792e68,
        },
        r1a1: u288 {
            limb0: 0xe6e033edf9c45f57b319b85d,
            limb1: 0x678806389e553fabda0a14ba,
            limb2: 0xe307ea8fcd5aa8,
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
            limb0: 0x4c7da3ce84c6729ba94f42ba,
            limb1: 0x3a0ea7fe06e356a75c22d66e,
            limb2: 0x12533fe5945a6ad5,
        },
        r0a1: u288 {
            limb0: 0x3d70d4a925afc99852e7c235,
            limb1: 0xafa4e0834d1d047120ea1097,
            limb2: 0x13a1d33cb8b83f9c,
        },
        r1a0: u288 {
            limb0: 0x1e10830dd3a74fd92d59ec65,
            limb1: 0xe3f0caf8cabc8409f73bc5db,
            limb2: 0x25575863b6cf9ae1,
        },
        r1a1: u288 {
            limb0: 0x35756fad3de1b098458b39ca,
            limb1: 0xa8e8feee2c4d41fd3a61f106,
            limb2: 0x2b5434a469681996,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc7832ec5882df68c7896e461,
            limb1: 0xf8beb67bd876f469aa9e96d3,
            limb2: 0x8cdf3e66c384ce9,
        },
        r0a1: u288 {
            limb0: 0x46987b7cac56369e5376e91f,
            limb1: 0xbf8998d876efaadbd293431d,
            limb2: 0x10e3523668082d4f,
        },
        r1a0: u288 {
            limb0: 0xc77214e80e4e67bcb9fda190,
            limb1: 0x7c0b6b77d97261d19f5d673a,
            limb2: 0xd74d357d3cc176a,
        },
        r1a1: u288 {
            limb0: 0x983f1cd79ffb88b511329fca,
            limb1: 0xba0c966ad34800c434f6141d,
            limb2: 0xdf7e4c3085796eb,
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
            limb0: 0x263effa72b2ba448e5744090,
            limb1: 0x8a614d186c7bc39b16b925dc,
            limb2: 0x215785a50b9b8cd2,
        },
        r0a1: u288 {
            limb0: 0xe728f950631ad5404049c49b,
            limb1: 0x594cc011e0ad3216051e1465,
            limb2: 0x879bbf9337fa71a,
        },
        r1a0: u288 {
            limb0: 0x4e76755caaf2efa503788d80,
            limb1: 0x9711d9c424943a76a33eb9dc,
            limb2: 0x2f6bb86bcfa08011,
        },
        r1a1: u288 {
            limb0: 0x5191d86aa9a921f363f62e29,
            limb1: 0x7bf50071fdcb04873be60217,
            limb2: 0x68a7065a85b52b,
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
            limb0: 0xa38b5f52398c2a25e578b8d2,
            limb1: 0xe8fccb052e9445e17373e42c,
            limb2: 0x6c8fc0c1bae94b,
        },
        r0a1: u288 {
            limb0: 0x23737a46c823fe826d10bb86,
            limb1: 0x7ff95dddeb478ca29a3758f7,
            limb2: 0x1f0ec11e9c9835a5,
        },
        r1a0: u288 {
            limb0: 0xddf430c057bafdf79a81c62e,
            limb1: 0x6497818cdfa0d56349772e62,
            limb2: 0x12a761c9a69ac78c,
        },
        r1a1: u288 {
            limb0: 0x3987fa5343793e51ffd87b7a,
            limb1: 0x22f33d28a3e2468ef5e1a0e4,
            limb2: 0xeb6b723aa3842b3,
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
            limb0: 0x2b376b62551b507fe14cb886,
            limb1: 0x496ca01280e0ff196465a659,
            limb2: 0x29d15b917ce6b297,
        },
        r0a1: u288 {
            limb0: 0x8c7e3f87c99caf209bb7b30d,
            limb1: 0xee8383ebd3d9be785d19cb25,
            limb2: 0xae1a11b770e6e8,
        },
        r1a0: u288 {
            limb0: 0x519d7472506711238778d28f,
            limb1: 0x9e0e96eb6d57d68901cba56a,
            limb2: 0x1ec4970378e98324,
        },
        r1a1: u288 {
            limb0: 0x546509c9ed8b2cdbc0dc2ea8,
            limb1: 0x51b59bc8ecf5dd59663a6af5,
            limb2: 0x23fc2c9be78c7674,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xee79c41db03cdf79da3d6e73,
            limb1: 0x9557777747f13b81f49da9e4,
            limb2: 0x1109224ff27bc21,
        },
        r0a1: u288 {
            limb0: 0x865433e7c3cdb491290576d3,
            limb1: 0xdef48685f5be2c72c20c6ae1,
            limb2: 0x1d0fad7c278db227,
        },
        r1a0: u288 {
            limb0: 0xda917b0ad733cd1d87590946,
            limb1: 0x9ac7ec6d4894bc8eda0c24da,
            limb2: 0x28208741f6817110,
        },
        r1a1: u288 {
            limb0: 0xbbbcab13e8a8ad0b64e338f5,
            limb1: 0x35d65078ef91b47e3541685d,
            limb2: 0x7447c1e292703b,
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
            limb0: 0x2058ba00eab204b84552d26d,
            limb1: 0x629ab037af51fc7b56393207,
            limb2: 0x9ed30313850214d,
        },
        r0a1: u288 {
            limb0: 0x7bac310ad05d6536888d986a,
            limb1: 0xf1df4832a0693c1f1aa0cf4b,
            limb2: 0xde92a9d529f2c0d,
        },
        r1a0: u288 {
            limb0: 0xd6b61855530c42df214cbecc,
            limb1: 0x913856b1c031f5c11515028b,
            limb2: 0x48e48acaa491cc9,
        },
        r1a1: u288 {
            limb0: 0x9a8f345c31a124458268280b,
            limb1: 0x9ac87bccf1213b2e5bf52a0b,
            limb2: 0x66586a390414519,
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
            limb0: 0xd62d7bbe58a1f881cfa3eed,
            limb1: 0x36b7b27fd434793e41f68db2,
            limb2: 0x21fdecdee95245aa,
        },
        r0a1: u288 {
            limb0: 0x200b60d304fdd9b88e046b0f,
            limb1: 0x81956ecb28e9034e2ab3bc18,
            limb2: 0xc62254b0b51a976,
        },
        r1a0: u288 {
            limb0: 0xb352e54ca066ffe67cd16142,
            limb1: 0xf0d1c5ece2501ec504a52ed3,
            limb2: 0x2bf70470dcb04e71,
        },
        r1a1: u288 {
            limb0: 0x4d00d828788dc1612fdcec29,
            limb1: 0xcf4dc9128fe038417bd6b6e7,
            limb2: 0x1ee52f1047e1911b,
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
            limb0: 0x33a15aa13484eec48754c133,
            limb1: 0x9dd651b961b40181bbbc39d0,
            limb2: 0x19cb69aa4d4a0860,
        },
        r0a1: u288 {
            limb0: 0xbe97187c1e1ba2d2ab127f00,
            limb1: 0x2f48a32e26c1c8a16fae4148,
            limb2: 0x70578bd66344997,
        },
        r1a0: u288 {
            limb0: 0x660d7e5f5f3a5ba612f4d795,
            limb1: 0x1d9bae6e8d4e80e914a4ccf0,
            limb2: 0x899751c871c72a,
        },
        r1a1: u288 {
            limb0: 0xb00750a79ce2ddad8b9a83d8,
            limb1: 0x66a042793b36bfac40dde087,
            limb2: 0x29a75144d941e69b,
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
            limb0: 0xea1deeb029f9074f23b98f23,
            limb1: 0xb01cce6f94dc1143dd434fcb,
            limb2: 0x18f9f97c2e92db18,
        },
        r0a1: u288 {
            limb0: 0xed124dabf935c5d9e04c387b,
            limb1: 0xd36242f63aceb000b3317ff1,
            limb2: 0x45346c7dfa9f06d,
        },
        r1a0: u288 {
            limb0: 0x91c0b15be0e1c38fd47e0cab,
            limb1: 0x7591035b28a9805f13fa7ab,
            limb2: 0x2b20d95435609dd4,
        },
        r1a1: u288 {
            limb0: 0x69682bc8dfb3bdbc3d9f6d2f,
            limb1: 0x15d4de78e6c2c19fc7f77122,
            limb2: 0x2b5b622153a3eee8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x68d9a4e16c237859ebc6be07,
            limb1: 0x5a76c8dae4e55478c480d678,
            limb2: 0x1d492dd782f41a56,
        },
        r0a1: u288 {
            limb0: 0x11d5b215f7cc81b0a196fbc7,
            limb1: 0xdf6746c29571919fe4a6cfc3,
            limb2: 0x11eb57d501bf653c,
        },
        r1a0: u288 {
            limb0: 0xc0e5090a97cf9304df83d2ae,
            limb1: 0x29c56842d66474338e37f59c,
            limb2: 0x13249d87a9535bea,
        },
        r1a1: u288 {
            limb0: 0x9d83d4651f0b0f0ed539fd99,
            limb1: 0xe3b6f18abbcba1c28c05a7aa,
            limb2: 0x1352bfd5ac74e07f,
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
            limb0: 0xf604223c7f025cef72b7920f,
            limb1: 0x43e75a4b9a282e192fa1b41,
            limb2: 0x203b1625f5184361,
        },
        r0a1: u288 {
            limb0: 0x297cd02f06bcfde5c548a0a,
            limb1: 0x41be8a64010854a27774d485,
            limb2: 0x29f1932984df09d7,
        },
        r1a0: u288 {
            limb0: 0xc62ce93b38627f2b7ef3bec9,
            limb1: 0xb15569a898570db996f46735,
            limb2: 0x16193b45f54851bf,
        },
        r1a1: u288 {
            limb0: 0x88e73a6e156a62f5c920f69,
            limb1: 0x45ccaec38fe91abf17828079,
            limb2: 0x2be9f891726d3e2c,
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
            limb0: 0x37b1d38f44d3a0bce5d14a97,
            limb1: 0x529d9c8b14e098399ed740bf,
            limb2: 0x2b7c975a9202efa5,
        },
        r0a1: u288 {
            limb0: 0x890a00b60a7dbf809b6bf93c,
            limb1: 0x7681fc093a7f8a0b9335cf36,
            limb2: 0x12b433dd15ce1921,
        },
        r1a0: u288 {
            limb0: 0x4716d92c3a4d4e684754ee66,
            limb1: 0x6c76ad71fdec7df3074f9e3b,
            limb2: 0x14d99c9b7da6ed43,
        },
        r1a1: u288 {
            limb0: 0xff51f0c1427ca72cd8d582bd,
            limb1: 0x6504a981af75d871fe854026,
            limb2: 0x187f52e8c7c10ab6,
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
            limb0: 0xab1a721bf99a3771458d2e50,
            limb1: 0x6d0c8c562f75d96760f7c35,
            limb2: 0x2b5454a17f41a4b0,
        },
        r0a1: u288 {
            limb0: 0x2130acdd6c33aa06c1dfc1f,
            limb1: 0x550b1d180e373d177f5fd46d,
            limb2: 0x1972dee663a7fd86,
        },
        r1a0: u288 {
            limb0: 0xf211f5f65a0be5541519f0dd,
            limb1: 0x8a6a9209486a68cdfc3ff221,
            limb2: 0x1dace4e20c653bf2,
        },
        r1a1: u288 {
            limb0: 0x641c3ef5d208593c4df369c,
            limb1: 0xf0b261e120800e4145e94a56,
            limb2: 0x15b48af432234876,
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
            limb0: 0x102594d635c2412c8d510186,
            limb1: 0x26edfad005e43eeed2f6e618,
            limb2: 0x170d95da1b40d019,
        },
        r0a1: u288 {
            limb0: 0x379141af87e78570d64f55e4,
            limb1: 0x4ba660e1abafa7a0acdc5a8d,
            limb2: 0x19fabf754df60bdd,
        },
        r1a0: u288 {
            limb0: 0x6b0a74d93dde3b4d2daccac9,
            limb1: 0xd3e2fc834ead17d9a0d52d2f,
            limb2: 0x2cf8944cd493c165,
        },
        r1a1: u288 {
            limb0: 0x10fd2e84a8d7d4f298d65950,
            limb1: 0x8bd00317de02c0f46bd2a342,
            limb2: 0x30d2ebca39fb859,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5f2244ca9da8801b501f59fe,
            limb1: 0xa1ef779f52cc6261f92d766f,
            limb2: 0x20fc4ea86609e033,
        },
        r0a1: u288 {
            limb0: 0xc1f68fc0cc9404a851067dff,
            limb1: 0xff04e8dad358527b8dfeab29,
            limb2: 0x11e97d04497c45b1,
        },
        r1a0: u288 {
            limb0: 0x11fca91ee64bde65c2db53ec,
            limb1: 0xf52b4063a97f6577f0ab5bed,
            limb2: 0x2f94aea5fe6190fb,
        },
        r1a1: u288 {
            limb0: 0x88e9b8088b9f1b226320ca80,
            limb1: 0xc6c4d1f7f45485d857133203,
            limb2: 0x18022d0279fe9eac,
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
            limb0: 0x66cfdbf2d18e87933a7dfb8f,
            limb1: 0x57abdb4e8312ecc61bc9155f,
            limb2: 0x28b4680c4953f3c5,
        },
        r0a1: u288 {
            limb0: 0xae5664f90b0416930a92c45e,
            limb1: 0x437e0b63e3e4596069c9c2a2,
            limb2: 0x25e47a3f00f6c7,
        },
        r1a0: u288 {
            limb0: 0x9c758322c32a62cb318230d1,
            limb1: 0x25ec54052e93f5df8fde7218,
            limb2: 0x2b04a61d8ec76d3f,
        },
        r1a1: u288 {
            limb0: 0xda3acf55a99db14c608ca53b,
            limb1: 0xbc53a8e73bb75ba5037bb42f,
            limb2: 0x127f107b1b45e2f6,
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
            limb0: 0xe253a392cd0bfd453247990a,
            limb1: 0x2ccfad04efac75cb4a73a7fc,
            limb2: 0x2828c052e4dbff66,
        },
        r0a1: u288 {
            limb0: 0x669e694f3347a56ceb69b5e0,
            limb1: 0xad1c3381266f3d4a2f38c57c,
            limb2: 0x19e5d0f27e3bfc06,
        },
        r1a0: u288 {
            limb0: 0x7a6032beda65fee9832de102,
            limb1: 0xf75a559a8ec0173753138747,
            limb2: 0xdd50062b0968b90,
        },
        r1a1: u288 {
            limb0: 0x66f11b066188f17dd9286c9,
            limb1: 0x3d2c9de98e0b2a41a1a3b43c,
            limb2: 0x2d577e90f60f571a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdbf99ca52696a30409f5a064,
            limb1: 0x5525b5eca7755e4bafafac5e,
            limb2: 0x233ddc662f2014fa,
        },
        r0a1: u288 {
            limb0: 0xf52570b67af1ac204f91380e,
            limb1: 0x9a0dcaf876bfebd727eb2e4,
            limb2: 0x28d129fad76527ca,
        },
        r1a0: u288 {
            limb0: 0xbb43ccb9b8d5f08c7cb63fdd,
            limb1: 0xf8f3515231d5e8bf2e9d3c99,
            limb2: 0xfc0a314c6441121,
        },
        r1a1: u288 {
            limb0: 0xbbf2cfcccb1b5b6548d5b43e,
            limb1: 0xdc0bd88b5ca5eba1e2b0e993,
            limb2: 0x2e48275ef3fd9c0b,
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
            limb0: 0x1aeb2dd4fdfaa19021e0c322,
            limb1: 0xe36becd03164f8768cf54c7b,
            limb2: 0x27c9b6abdcb68284,
        },
        r0a1: u288 {
            limb0: 0x3e37a9b9d968e958c8f5634a,
            limb1: 0x23c4d052cc0acec523db1cc0,
            limb2: 0x21c8836c66e7b141,
        },
        r1a0: u288 {
            limb0: 0x2729492c48e21ba77e82cebb,
            limb1: 0xd867bed07e82beaae3bfc512,
            limb2: 0x2a3375b0774f6e3d,
        },
        r1a1: u288 {
            limb0: 0x358f6ae79c90b7a660229272,
            limb1: 0x58aa915ebf4de2ffcfd4e4a3,
            limb2: 0x239c232309efb4e4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb54db93e53d969bed8d51022,
            limb1: 0xb774783dd2098013b5f4a0f4,
            limb2: 0x2f7405ffb71aa5a6,
        },
        r0a1: u288 {
            limb0: 0x29d6080f67c802d02506dcad,
            limb1: 0x71b394228ecdb4211bd15677,
            limb2: 0x26edeb17015097e9,
        },
        r1a0: u288 {
            limb0: 0xd4f4a83b6f0721aa2f883e8,
            limb1: 0xc05b26425b328f40b666ebf2,
            limb2: 0x18e3ac6e26d0f2c1,
        },
        r1a1: u288 {
            limb0: 0x6fd2129091be09354af5f672,
            limb1: 0x8ff112ea56db17c2cc3b3aac,
            limb2: 0x2e54615058307e4f,
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
            limb0: 0x9c5f76a547dc412e0d4187dd,
            limb1: 0x1f7dfe1b8582a74c8ba1524b,
            limb2: 0x1c1ba93195be0611,
        },
        r0a1: u288 {
            limb0: 0x2b078df153e6a459e8d2602,
            limb1: 0x9ef36d54b11c993b151c915f,
            limb2: 0x2ca0b62ab454b216,
        },
        r1a0: u288 {
            limb0: 0x7a387f185ece0985e49d74ea,
            limb1: 0x7a3e7699ac922c2fa66c3698,
            limb2: 0x1cb46b894a780aa3,
        },
        r1a1: u288 {
            limb0: 0x26140b2e2b5e17b154795a9,
            limb1: 0x7ebaff484642d00ca92a1ba9,
            limb2: 0x20486b9a4c739222,
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
            limb0: 0x60fec30bdea1293422a08be3,
            limb1: 0x914d70dbfa4d37402b42ff3e,
            limb2: 0x278514af2437bf20,
        },
        r0a1: u288 {
            limb0: 0xd89875af9f0f07523a7f5c14,
            limb1: 0x6ea2a03296a7cfc687ba8414,
            limb2: 0xeb10c3ea0d40383,
        },
        r1a0: u288 {
            limb0: 0xb5c15877825cff61ab659582,
            limb1: 0x22546665ccb7e661e9b5de5e,
            limb2: 0x55ac969a7c31f96,
        },
        r1a1: u288 {
            limb0: 0x6398d1ab68209d9cefc409bb,
            limb1: 0xb52684639f258035fde8e737,
            limb2: 0xcf52e7d1070197a,
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
            limb0: 0xfdb3d4baabeb77bfd118d70b,
            limb1: 0x325660ad5cd102f8be957653,
            limb2: 0x1aeb7613fc1e3244,
        },
        r0a1: u288 {
            limb0: 0x7fc2694a5189f844d5b196ae,
            limb1: 0xd9580bcad94a4baa5657ddf4,
            limb2: 0xd39916e89a2bdd5,
        },
        r1a0: u288 {
            limb0: 0xc955fa3782f224ce541f4500,
            limb1: 0xd69333a2e906e5a985069541,
            limb2: 0x2c07b2b4c4cdffa,
        },
        r1a1: u288 {
            limb0: 0xa086e05a787ce32b5146d110,
            limb1: 0xd9130ddeeb11d8202fd66e9c,
            limb2: 0x226a24f8dcce0503,
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
            limb0: 0x4375026280d0dff3e7b46255,
            limb1: 0xb5c9dfb613aac66b30d35828,
            limb2: 0x1406f799d53bc0da,
        },
        r0a1: u288 {
            limb0: 0xbb6e04425869bad655d4fc08,
            limb1: 0x452250304915cf0c95056743,
            limb2: 0x1d0b41f3e082215e,
        },
        r1a0: u288 {
            limb0: 0xee62dc3560ee5c246c8306ec,
            limb1: 0xc5f835ca15a837d1cdd1697d,
            limb2: 0x2d3f263361cd86af,
        },
        r1a1: u288 {
            limb0: 0x8ab5f5d01053632b97256fe3,
            limb1: 0x8ad85901aae1c1c7e05b40c8,
            limb2: 0x2b810a5250fadd33,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5ce2c8eb641e67026d1ef2ee,
            limb1: 0x21b227da0df1b6563cf6d926,
            limb2: 0xc789f219b8b329,
        },
        r0a1: u288 {
            limb0: 0x4730dfe9f62e8557abd30d3d,
            limb1: 0xbcd5f8729f03aefbd87283dd,
            limb2: 0x62b8b54c556eff9,
        },
        r1a0: u288 {
            limb0: 0x50bf4a178285d92b46f3f55c,
            limb1: 0x23fe179882d9d18216b64fc4,
            limb2: 0x13f4250a4034f921,
        },
        r1a1: u288 {
            limb0: 0x21d5be43d9f26fbbe1f03c99,
            limb1: 0xba446bb52f49f35821b7b43c,
            limb2: 0x14919c60f5c89bb5,
        },
    },
];

