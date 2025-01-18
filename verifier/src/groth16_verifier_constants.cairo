use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0xf8e2d179d34b25b17c540b0f,
            limb1: 0xb85269f365707e5b53143554,
            limb2: 0xb4b5fd8efc869d3,
        },
        w1: u288 {
            limb0: 0x55373369c7f8c931f544941e,
            limb1: 0xb043f1faa9c1164f5bdb838d,
            limb2: 0x7922c0b2adaeb3,
        },
        w2: u288 {
            limb0: 0x41325931a0d4984c84bdba84,
            limb1: 0xe35be5ade843dba5031fa24d,
            limb2: 0x23affcc4a8b05880,
        },
        w3: u288 {
            limb0: 0x78b1da3f55fec9427b9aff20,
            limb1: 0xd905326243e36a73dc1c9973,
            limb2: 0x3724e0945141e80,
        },
        w4: u288 {
            limb0: 0x737558d7af3a43388ec8d38e,
            limb1: 0xed77abefc30acb67193dbccc,
            limb2: 0xe096c3794a5c235,
        },
        w5: u288 {
            limb0: 0xb76064e4dc8fe963a4ce5bde,
            limb1: 0xa19c1307969547a6e576907f,
            limb2: 0x2fb275ee0829e279,
        },
        w6: u288 {
            limb0: 0x62697c0e8bc3819c8f89cd93,
            limb1: 0x21cc01583f0939f4e1f50c40,
            limb2: 0x16fafc0e1f4fb550,
        },
        w7: u288 {
            limb0: 0xc3f0eb2d118ba90cfee6ac48,
            limb1: 0x316d4d55dbb767519581fc67,
            limb2: 0x28d8c8469680ad50,
        },
        w8: u288 {
            limb0: 0xa85a6fa77e3bbe473f20c90b,
            limb1: 0xe191f5f9480e3e4d8b0e43a9,
            limb2: 0x1d311e9bfd8b5bf3,
        },
        w9: u288 {
            limb0: 0x9cce15bad59c4b456561695a,
            limb1: 0x52464896a9273c473b5ca4fb,
            limb2: 0x7ffba62161dd7d6,
        },
        w10: u288 {
            limb0: 0xa68d0e3d20dcba1cf158130b,
            limb1: 0x735812b1af8ba634a66aeef8,
            limb2: 0x22c52ffc879aa0b3,
        },
        w11: u288 {
            limb0: 0x588f9bb8c173874ffc72d0d0,
            limb1: 0x8da2b09c8e1dbc26037be90c,
            limb2: 0x112a65613ba89bd0,
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
            limb0: 0x4041ac31f9df6854a44f6f18,
            limb1: 0x44b280b283ed26fb03a1a673,
            limb2: 0x9873d4e073d43e5,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x72d3f0b38aa583ee454ad6c0,
            limb1: 0x8b039b87ac199c4617460659,
            limb2: 0x7a8990f1cce5367,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xa04372f2d53efc85985ba0f8,
            limb1: 0xf289eb19ac203628c5705818,
            limb2: 0x1a5a48be7dc31828,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x595aaea648551d8eb3692a81,
            limb1: 0x6f92aa0d2224a7f693f81bf8,
            limb2: 0x2c314949175d0f42,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 7] = [
    G1Point {
        x: u384 {
            limb0: 0x57463b33b17032b409ea60c9,
            limb1: 0xfda83f36d8678fdbcf6926f7,
            limb2: 0x2484affc48583f0f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xa90aa69c575b39cb0f5d3626,
            limb1: 0xd98b7978806a471fba10a497,
            limb2: 0x16bc1c46286a232e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x9b3533897b021485a195cfc4,
            limb1: 0xbf8fa3bcbd4f44d41145d373,
            limb2: 0x6217a6096035b30,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe5094808de88070c98f354e4,
            limb1: 0x1774d3353987eb8990da4053,
            limb2: 0x2de18a5723818104,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x1e6733bf493670ac79e3681e,
            limb1: 0xab13c99e1de32ea8908f5e8e,
            limb2: 0xedccc98039f3cd4,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xfe9c767aa846a05261451e06,
            limb1: 0x8e2c638cd39eb2b16404ad5a,
            limb2: 0x24c0a289396590ac,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x59f731ef73dbb2e7329ee8da,
            limb1: 0x5c69db632d31896360acd5d,
            limb2: 0x12667beaea345800,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x68b2e94cfb6df40074164f81,
            limb1: 0xb9d77c4b6cab63d655452db5,
            limb2: 0x24d9f9706eabdd67,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x25859e1b01e0f995196f1ec4,
            limb1: 0x393828d00d6089ab7ba9235d,
            limb2: 0x59e5f1d30b91b,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1b0fdebd8d4f7450096d300f,
            limb1: 0x7093d72d7367ce14668982b4,
            limb2: 0x4e2f379c4a4c4aa,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3efdeeb9df1d8ce31861b4aa,
            limb1: 0xa04550ba7b8fda277cf8cce,
            limb2: 0x44335db3d6bde6c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xfa71c4f6bd8b9d7755b02aca,
            limb1: 0xa4ca2b8f738dfc04658429d3,
            limb2: 0x199b69a5cf15f0d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xabe370a38f2cb670b42077dd,
            limb1: 0xfa8569719fd889a8ff258f35,
            limb2: 0x1c51108895ffa06b,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xed79daa793873da06743f9ba,
            limb1: 0x63b08b83b8d53a775a1e3542,
            limb2: 0x26e163b0471c8882,
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
            limb0: 0xd89b44e18869aac0322f32a9,
            limb1: 0xef0a93a05948583cbb7c2ec6,
            limb2: 0x2aaf80a0b4071844,
        },
        r0a1: u288 {
            limb0: 0x4748df2794692c0f9ca64dc0,
            limb1: 0x8aa76aeb3ac0b14df5af78d2,
            limb2: 0x1a9f007a9add7268,
        },
        r1a0: u288 {
            limb0: 0xc8ece5b5134cda139f16a694,
            limb1: 0x92b165d2ba86368311d27200,
            limb2: 0xbbc8086330aa12,
        },
        r1a1: u288 {
            limb0: 0x479b0e3d2d8c880e7a34b350,
            limb1: 0x667c56614d23ff4568630dc8,
            limb2: 0xba398aa1dded1ad,
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
            limb0: 0x8fd685abb3b6e156a64dca9e,
            limb1: 0xc945b21628390020dc053bca,
            limb2: 0x5b4cdd22d2a87e4,
        },
        r0a1: u288 {
            limb0: 0x2128eb65a7b760073bd6af87,
            limb1: 0x2da8dacb46c0a70fa1d1f1bf,
            limb2: 0x15c54df846542dc1,
        },
        r1a0: u288 {
            limb0: 0x9f84e4d828d3b203396656b3,
            limb1: 0x259edfe3c6fb21da85aef890,
            limb2: 0x2fa8866a7e00f617,
        },
        r1a1: u288 {
            limb0: 0x20d6bc500e9404085e4849f7,
            limb1: 0x51d3ef55345d59182f1e5cc9,
            limb2: 0x24c0b5c8c352ce7c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1be3955c60eb1ca311ddff91,
            limb1: 0x5e6050b993d5c8124fb7548e,
            limb2: 0x289ad9ff4e7f566d,
        },
        r0a1: u288 {
            limb0: 0x51ddbaf3cf655c11a14986b3,
            limb1: 0xd59c5710f695072bf84b90a9,
            limb2: 0x10c055cb7d8ecaca,
        },
        r1a0: u288 {
            limb0: 0xb28415ef29a75c92b3697f3b,
            limb1: 0x912195b7b538b0e3d3cbeb90,
            limb2: 0x1c07f6187e9e1c6b,
        },
        r1a1: u288 {
            limb0: 0x7781d2c820aed7c5cb8f5dc4,
            limb1: 0x956c38653fb61f0d6dd68bc7,
            limb2: 0x185feff2479fccf1,
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
            limb0: 0xcc6c7ae19ddb69f27c5048c8,
            limb1: 0x34ab455297dac9e18d681363,
            limb2: 0x682dee6d6790a54,
        },
        r0a1: u288 {
            limb0: 0x6218c5275c7f4bfd0aece2f8,
            limb1: 0x99dd6543b67fafe67a361061,
            limb2: 0x6bb81d910622c11,
        },
        r1a0: u288 {
            limb0: 0xdba4cf215a423f7f03833cf8,
            limb1: 0xeecc12efc7f45e7e7d6de7ed,
            limb2: 0x1d0cff41c3d6ff10,
        },
        r1a1: u288 {
            limb0: 0x91415bca2d24515f93143330,
            limb1: 0x2a143ccd0505e735ee4d19bc,
            limb2: 0x2cb674cadc7b9738,
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
            limb0: 0x60ec6e0f85ddf3597652bb8c,
            limb1: 0x188e519775141c8a1de85ff6,
            limb2: 0x2ecfdb94051e3e42,
        },
        r0a1: u288 {
            limb0: 0x8cde7c714946567a9fc9687e,
            limb1: 0x3f02889f1edbcdb6fe4290b6,
            limb2: 0x2afbf5cbbee82ab6,
        },
        r1a0: u288 {
            limb0: 0xbb07aeb37cbe6586bbf7152,
            limb1: 0xce452abdfb5eea7b423106e2,
            limb2: 0x4f9b7e7e8c870e1,
        },
        r1a1: u288 {
            limb0: 0x6eab699f48dcdd2f2b3a57f,
            limb1: 0xc994249ac3622ed00e68fe3c,
            limb2: 0xbc4c92caae75119,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb7026d5459f9fb191826dfdd,
            limb1: 0x575b04a0dc62be2282f2bd85,
            limb2: 0x82dc8c8913bd09f,
        },
        r0a1: u288 {
            limb0: 0x5349a6cda67761d9c540814,
            limb1: 0x6459c73d68bbb053e4e46b9d,
            limb2: 0x1f0c76a4408835f,
        },
        r1a0: u288 {
            limb0: 0x52783b9a94a622c9b5072739,
            limb1: 0xc4b587dd53ebe3eb7c7d8da7,
            limb2: 0x16f20c59fc552078,
        },
        r1a1: u288 {
            limb0: 0xd1c3687b886cad9d9877e627,
            limb1: 0x3fdc39bb0897c77a5b8d79f8,
            limb2: 0x160d9846ce2f8f9a,
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
            limb0: 0x331e82db34742b33ef76bb33,
            limb1: 0x3337503a830401889ee08b13,
            limb2: 0x2c67c53f5e288793,
        },
        r0a1: u288 {
            limb0: 0x4012148544369c90d573ff57,
            limb1: 0x8622b1b8c41cb89b75e3b1ea,
            limb2: 0x11e84a264d2a0168,
        },
        r1a0: u288 {
            limb0: 0x17b6ef02f2f1d2673d103760,
            limb1: 0x3fcfcae5e71cd554ce69c29b,
            limb2: 0x21ffdfa48147f79b,
        },
        r1a1: u288 {
            limb0: 0x8e2c50d33f8b70d0b90baaea,
            limb1: 0xb4a5de3dfa689b7919ad7708,
            limb2: 0x1fb953a2356a1a37,
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
            limb0: 0xfbffbb1dad4bb9ffd35085b6,
            limb1: 0x6f82585cb0d7783ba52b2af,
            limb2: 0x1fdb602aceef852b,
        },
        r0a1: u288 {
            limb0: 0x5bd0809d3757322168c69bcc,
            limb1: 0xe73c907049fd59850705ec24,
            limb2: 0x2f5b6dc2a3a36bca,
        },
        r1a0: u288 {
            limb0: 0xe9373ab8a851494000d9eb85,
            limb1: 0x5888eace51fe6d9610756a7d,
            limb2: 0x167377760f8eaaee,
        },
        r1a1: u288 {
            limb0: 0x7ab90b98b5b1db835a5f8ccb,
            limb1: 0x4ef22b44ad628cb3c1905ab4,
            limb2: 0x2252605febbe830f,
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
            limb0: 0x4cc7af669aa10a5094f4299e,
            limb1: 0x3cbe0f52738b27398e1a2789,
            limb2: 0x39316db903517cd,
        },
        r0a1: u288 {
            limb0: 0x66ccb4667346fb800ac46e48,
            limb1: 0xf21055d509717396d37d5282,
            limb2: 0xee33428f0c522d0,
        },
        r1a0: u288 {
            limb0: 0xbffd5f30db26f8f6ba7d9730,
            limb1: 0xc2696cdd60b8cf0a3977e6fa,
            limb2: 0x1d5f201efd79123a,
        },
        r1a1: u288 {
            limb0: 0x1bc5e99c2b5605178627ec4f,
            limb1: 0xf6862d69d8cf2fe5f463963,
            limb2: 0xbb36aefb68f6e9d,
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
            limb0: 0xd7968ab6da5764f99d334dab,
            limb1: 0x92d44741cabe86ccbd9d2b0e,
            limb2: 0x10679aa9f6acbba5,
        },
        r0a1: u288 {
            limb0: 0x9d8b72c83b55c968b20a05c9,
            limb1: 0x5bc0de43368275b4cf63e252,
            limb2: 0x164613f4bd129251,
        },
        r1a0: u288 {
            limb0: 0x30ae6ce6ac032f0aceae908d,
            limb1: 0x7c8e4361d984ab43e2828750,
            limb2: 0xf2a81cbe7db8249,
        },
        r1a1: u288 {
            limb0: 0x87892e9cd305c7c0bf31e92c,
            limb1: 0xe0b711792e21cf509af45495,
            limb2: 0x2dc598cf20ccb242,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f6331eb6afceedfa0da7b05,
            limb1: 0xfa5047c61f43a44f25923e46,
            limb2: 0x24d06f560c550b5e,
        },
        r0a1: u288 {
            limb0: 0xc158db096741b4f63d62bd25,
            limb1: 0xd0d6f62a837f19ae4db967a1,
            limb2: 0x1d0c03990a021601,
        },
        r1a0: u288 {
            limb0: 0xccc2c1647fa6aaeb352fbb86,
            limb1: 0x47405bff3f5c3ea36a28117a,
            limb2: 0x2917ab74cf2f46cb,
        },
        r1a1: u288 {
            limb0: 0xb0d213feaf2298593e133a11,
            limb1: 0x7b8679d8819112561e91601d,
            limb2: 0x9967b8bab2704b7,
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
            limb0: 0xec476a9a8b4b978cfc036962,
            limb1: 0x22c3692e58f98e37a6409a1c,
            limb2: 0x11abdf9a17a9c7d,
        },
        r0a1: u288 {
            limb0: 0x77a4ccf2c320ab8c63327344,
            limb1: 0x2fdf4666ff5a11986b797cff,
            limb2: 0xc4e85e8c7a1867d,
        },
        r1a0: u288 {
            limb0: 0x242ff3841619089ab3f91e95,
            limb1: 0x234192d0fe26d84997752438,
            limb2: 0x2fce0581b9403f53,
        },
        r1a1: u288 {
            limb0: 0x3fc73a8f8848c9a77c42c926,
            limb1: 0x5aa86d3873c3f76613ec7894,
            limb2: 0xefd9367890acf75,
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
            limb0: 0x88af754b7229c1042943a37d,
            limb1: 0x1adfc852e0d1ccdf8ad96f43,
            limb2: 0xc88a7fb00b9f24f,
        },
        r0a1: u288 {
            limb0: 0xb8e7fa0c25ff04d8db437dc,
            limb1: 0x414b0edbd4176886a529b147,
            limb2: 0x2f5b7423a45ce35,
        },
        r1a0: u288 {
            limb0: 0x13185f334d16a766bb80f1e0,
            limb1: 0x227a17b78aad6618d6fb8944,
            limb2: 0x1d1ce28a60c9de6a,
        },
        r1a1: u288 {
            limb0: 0x8e8eb386f1035203124293c3,
            limb1: 0xfe5266a214edf44c0c9f8da6,
            limb2: 0x2465e0d6b6cb1d3f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x656d129e3ecb695dfb876065,
            limb1: 0x3764b08f1ac920e833818940,
            limb2: 0x17444a43602e8669,
        },
        r0a1: u288 {
            limb0: 0xe796ccacb3154db8a071e214,
            limb1: 0xe185926e84d2b624b39c7c0f,
            limb2: 0x234f4a445a2446a2,
        },
        r1a0: u288 {
            limb0: 0x5474ffd559b3b1c52ff742b2,
            limb1: 0x4177e539be4bf0a46080f9e7,
            limb2: 0x2b4ef9ddea420ea9,
        },
        r1a1: u288 {
            limb0: 0x7e948d56fe2db1174c584889,
            limb1: 0xafac4e7cf0931801e21eaae3,
            limb2: 0x145eac780c6ef241,
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
            limb0: 0x1e752bd29c10b96572eaf79c,
            limb1: 0x97fcdc92c5bc369ab65beb43,
            limb2: 0x1032ff733867d80d,
        },
        r0a1: u288 {
            limb0: 0xe19c8d7f36c3c9fac3d49913,
            limb1: 0x90680e2f29097c5c0674aeb,
            limb2: 0x28251b415d7cc61a,
        },
        r1a0: u288 {
            limb0: 0xa0816297507d2414d2461748,
            limb1: 0xe93e4265e592097ebc88c442,
            limb2: 0x1c8f149d2a322b39,
        },
        r1a1: u288 {
            limb0: 0x10d61320492191c9f58905c,
            limb1: 0xca7d02c45b6ee0f18e704bf5,
            limb2: 0x88262696b4ba1ce,
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
            limb0: 0xfb21671e33d1924ae140ce32,
            limb1: 0xcbf2eac04333cea13f4c2b60,
            limb2: 0x1ac57bdf70d37069,
        },
        r0a1: u288 {
            limb0: 0xcf3750aa4b80b4de5f5f4be8,
            limb1: 0x8016e7859404c1a31555d883,
            limb2: 0x1743f1e740c26ab4,
        },
        r1a0: u288 {
            limb0: 0xc9441801f29d47c339d8f0c7,
            limb1: 0xe25e45d77d86abe9ca72ac5b,
            limb2: 0x15b3977234bd8f72,
        },
        r1a1: u288 {
            limb0: 0x73421aa29fd61b9f30175adc,
            limb1: 0xed49851823acd2010f81467b,
            limb2: 0xf2c899b38ad381f,
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
            limb0: 0x998405223f69763597ffd0d0,
            limb1: 0xf437c073ad294536dcb6f3fe,
            limb2: 0x122082ff7c14f3c8,
        },
        r0a1: u288 {
            limb0: 0x841fcf5e8a5a74570ba552b8,
            limb1: 0xaae402c11439437e3559657a,
            limb2: 0x1ca69af2f439ca91,
        },
        r1a0: u288 {
            limb0: 0x7dc8b04f7be80cae9a6c9203,
            limb1: 0xa2cbfa3e851778330a9a6045,
            limb2: 0x126a1eb79253547a,
        },
        r1a1: u288 {
            limb0: 0x97b41c72f9302a31fd596d2,
            limb1: 0xfdd0016e717bdd287d8c8098,
            limb2: 0x2d4dd3cc87a3786a,
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
            limb0: 0x5912642d51a8c1b2d956f7c3,
            limb1: 0xf102ac5e7fe86ffccf0c5c55,
            limb2: 0x25682dbcdb44d03a,
        },
        r0a1: u288 {
            limb0: 0x3cd0d59c044058db95aa29e,
            limb1: 0xced6313e4b9499345db7321e,
            limb2: 0x17c1367ae2d1edad,
        },
        r1a0: u288 {
            limb0: 0x52610873702f3602d724ef3f,
            limb1: 0xb9706342304fbb267d1828c6,
            limb2: 0x148b6061326b99f1,
        },
        r1a1: u288 {
            limb0: 0x81c83db0b05b48173acf97d8,
            limb1: 0x37705aa3739c8b540ad92b29,
            limb2: 0x1c351a1ebea86ca6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5f2719da07d515c1fa2a71df,
            limb1: 0x75168075f7f4514628b55232,
            limb2: 0x2361fa9f22f93f3d,
        },
        r0a1: u288 {
            limb0: 0x1ee34aed834ea04b0328a862,
            limb1: 0x128ad933d6221cb6ade66bde,
            limb2: 0x8446558c02e82e0,
        },
        r1a0: u288 {
            limb0: 0xf275c11f53f25072971de4d3,
            limb1: 0x2a7cd3b63f8caf098396dbdb,
            limb2: 0x1b7df9cdb0e7fa62,
        },
        r1a1: u288 {
            limb0: 0x55803c32f7d71b89db98740,
            limb1: 0x39a7515b94a9e73d7e330cf0,
            limb2: 0x12fcb20c64772e62,
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
            limb0: 0x2e7f0eb02846271b17b0c93c,
            limb1: 0xac7c37125a4e72889a5bf7f2,
            limb2: 0x55a2bfe802d4415,
        },
        r0a1: u288 {
            limb0: 0x692c2667f1d5504271955541,
            limb1: 0xb175862faf2ecf8aad406861,
            limb2: 0x34213b9e5b995b2,
        },
        r1a0: u288 {
            limb0: 0xa68b08f6f79287ebe1ae8708,
            limb1: 0x9e85d5d373f43f0037d53976,
            limb2: 0xafae9c23ff81f55,
        },
        r1a1: u288 {
            limb0: 0xf8370e1d4ba09fb068949766,
            limb1: 0x318de1754e294a4e1b9ce4ce,
            limb2: 0x8a7385e91898ce9,
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
            limb0: 0x4d7aa2e7296c9269bc8b4085,
            limb1: 0xf45b313931509ca1677e23fc,
            limb2: 0x580a7470e6a5cad,
        },
        r0a1: u288 {
            limb0: 0xa86548cf1da476d846b5959f,
            limb1: 0xa75720b3f91f680985e4d0d1,
            limb2: 0x1269b29da0e7a054,
        },
        r1a0: u288 {
            limb0: 0x7b9f80b36858ff47c5ae7b46,
            limb1: 0x57de7c44c4bf9d28b14743da,
            limb2: 0x2a7d7670958aea0c,
        },
        r1a1: u288 {
            limb0: 0x2c80b84df5de7db5d8778eaf,
            limb1: 0xb8fdcb37d14c4006b2bf650a,
            limb2: 0x1217e7088dcbd412,
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
            limb0: 0x9dfe70f52686a3435f213a2b,
            limb1: 0x3bb2f8f0e5ac8866548ebbc7,
            limb2: 0x82dfaa56e5dbd49,
        },
        r0a1: u288 {
            limb0: 0xf24778c289c128b7a7c338f6,
            limb1: 0xa48b8efec40976a5e5d92493,
            limb2: 0x1fce0058a3f00890,
        },
        r1a0: u288 {
            limb0: 0x6ee27899370574dcb158120b,
            limb1: 0xf4996bb104066c7612f332cb,
            limb2: 0x26fa603e910ea7a5,
        },
        r1a1: u288 {
            limb0: 0x7daf07524046356530000051,
            limb1: 0x4b6c5a3600d1c73e12106a34,
            limb2: 0xb92257e9e6f163e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb084d21a366c036215172b,
            limb1: 0x3f9e528bf21de2fa0f5b8819,
            limb2: 0x202073c0a88d69e1,
        },
        r0a1: u288 {
            limb0: 0x59fa7c0b3ac3ed902e682a80,
            limb1: 0x5ff0b091ba04fc0ef216208e,
            limb2: 0x14e4cb3df89ac541,
        },
        r1a0: u288 {
            limb0: 0x607dcefb5255b8da37857104,
            limb1: 0x50ae8ecdb7cd3594bd311197,
            limb2: 0xc221c06a543ef2d,
        },
        r1a1: u288 {
            limb0: 0x459a7def5f31eb5689026323,
            limb1: 0xdfbf7a74ee9d4da56ab87dc7,
            limb2: 0x11d3a35e145bee8e,
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
            limb0: 0xa05c3146dc240317c2e4018d,
            limb1: 0x57621e06820019b521b094f1,
            limb2: 0x2107d2181352a908,
        },
        r0a1: u288 {
            limb0: 0xaf21db0afa295326201fc6de,
            limb1: 0x49b9e29004c5239881f30ffb,
            limb2: 0x2e2547755d06c16e,
        },
        r1a0: u288 {
            limb0: 0x69980d92914711b0fb0bcec7,
            limb1: 0x6ace02584bceacf75f28d1e8,
            limb2: 0x109fd7b09b3ee448,
        },
        r1a1: u288 {
            limb0: 0x4814b41aca663cc3e0748eeb,
            limb1: 0x2f15086c38f5ef62a474a26e,
            limb2: 0x2de31556f3874a70,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x120988c07f6a5cfa1c3653e5,
            limb1: 0xe81c5d69fe4df2c0be150443,
            limb2: 0xe8340175b4e6237,
        },
        r0a1: u288 {
            limb0: 0xc353319f6df2f7e94da43533,
            limb1: 0x7b9d31581926133bbb259ea7,
            limb2: 0x27989b45df5c1615,
        },
        r1a0: u288 {
            limb0: 0x389264051a548f403760a87d,
            limb1: 0xc44f6ee209cfcdb82d61d81e,
            limb2: 0x17864df735bd5a9b,
        },
        r1a1: u288 {
            limb0: 0x7356b4ef779498b14bfc3f8f,
            limb1: 0xce4765dc88ea3e54a9cab912,
            limb2: 0x120a3b92e8ea21d9,
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
            limb0: 0xd0b4ff25df1d883d5f6bdbf2,
            limb1: 0x322748f5a45bb74abc519439,
            limb2: 0x185b79e4058d8e,
        },
        r0a1: u288 {
            limb0: 0xfc5c9fdfd6a7f06a02fd18ef,
            limb1: 0xd7934d566a8dc791e3239de4,
            limb2: 0x2b2ad930e3bf769c,
        },
        r1a0: u288 {
            limb0: 0x92586fbfd52f4146e6fa58aa,
            limb1: 0xe0c4b72d2dc8e6d0ac90c06,
            limb2: 0x698b370642a31cd,
        },
        r1a1: u288 {
            limb0: 0x871df0dfaf1f314db0b2df26,
            limb1: 0x79e5874a18469f796dcaab0a,
            limb2: 0x1ce6743c86e1e95c,
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
            limb0: 0x93e8820d5c51ec890f24f126,
            limb1: 0x1b096e628ed13d46ad859181,
            limb2: 0xabaa5493f9edc14,
        },
        r0a1: u288 {
            limb0: 0x1c931afb35154dee8e7515d0,
            limb1: 0x4e1d6c48249163cd74932c36,
            limb2: 0x232fe2a021520c7b,
        },
        r1a0: u288 {
            limb0: 0x7dc4ef94b76778edba9a73cd,
            limb1: 0xa7765923f96693f007ad2f44,
            limb2: 0xcffd0ac961e1460,
        },
        r1a1: u288 {
            limb0: 0x344d1ed7911d179f1d79c96e,
            limb1: 0x437cb71aa627a8079a2f3863,
            limb2: 0x28d33ed4167496f2,
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
            limb0: 0xe57a79144a46f1eeb899eba0,
            limb1: 0x34a53c3c7c40e8d5fb3a63b2,
            limb2: 0x27a07f137ab0cd35,
        },
        r0a1: u288 {
            limb0: 0x43ef5443642cf7fd2400e88e,
            limb1: 0x9791a5fba5a20d23c43ccb61,
            limb2: 0x27e70a3c25ebd78e,
        },
        r1a0: u288 {
            limb0: 0xfb84a902dcfd0d9c0947efc3,
            limb1: 0xd3a15cca46399853dc5ae4db,
            limb2: 0x24aaa311388a53c9,
        },
        r1a1: u288 {
            limb0: 0xd465b986e866639b1323f4fa,
            limb1: 0x6e3fe757253bccd5f9a47fb5,
            limb2: 0x24d646ad9145798f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47a0e954bc402afd2e2f55a2,
            limb1: 0xa755a83ad5a472cdd8d75ecd,
            limb2: 0x197d09510f4d0a29,
        },
        r0a1: u288 {
            limb0: 0xb7774337f36176bfd47b69c7,
            limb1: 0x38a66d2ec11cc848b517cf26,
            limb2: 0x69660dc283608e9,
        },
        r1a0: u288 {
            limb0: 0x8983746792bd768329a72821,
            limb1: 0x263738f2e0b3f5024c26a82f,
            limb2: 0xa2ad911b2f9bb69,
        },
        r1a1: u288 {
            limb0: 0xe1dd3bd327000a4776910f1,
            limb1: 0x19d351a74d120b200f008d7f,
            limb2: 0x2a36ae47d1ffc32d,
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
            limb0: 0xc4ede929f6019f3757814a25,
            limb1: 0xc029f7d82a08b3f05712e16,
            limb2: 0x12689d3762b80862,
        },
        r0a1: u288 {
            limb0: 0xda4ce6e50dcfdfce1d07aa2f,
            limb1: 0xca2b6e38e1188ebcb44262cb,
            limb2: 0x1e5f7883a2d64e57,
        },
        r1a0: u288 {
            limb0: 0x4176f6d0011525c7aeff46ef,
            limb1: 0x8c319ccc5fe6a3d1c3cc86f,
            limb2: 0x24ceed54646aa064,
        },
        r1a1: u288 {
            limb0: 0x4c921fbeb2d5b4aaabdcb4b2,
            limb1: 0x3ed726f1eae5af751d8535cd,
            limb2: 0xca56db6eb51b89e,
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
            limb0: 0x972a0e6787475f153c7e6737,
            limb1: 0x2cbc1fbee10601fbb2e31d25,
            limb2: 0x989da9129b074af,
        },
        r0a1: u288 {
            limb0: 0x5877dd062415cd47c0d15b1e,
            limb1: 0x4d4df706a8cb7e7da8739f3b,
            limb2: 0x2937436d8783d95a,
        },
        r1a0: u288 {
            limb0: 0xc088ea4f5d2fbc2579645803,
            limb1: 0xb870b124cfc1b0c64001361d,
            limb2: 0x12233009bbc45319,
        },
        r1a1: u288 {
            limb0: 0x85d40b44982db1c99df192b2,
            limb1: 0xfda0df7d9cd9672c2a20b173,
            limb2: 0x7e379ae45f88ad0,
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
            limb0: 0xfbccf588680c7d7ea900cecf,
            limb1: 0x3751e384ac5891f096b89d02,
            limb2: 0x23d9fbcb90a640fa,
        },
        r0a1: u288 {
            limb0: 0xacbadb86f437b084287a61c8,
            limb1: 0x44dce9aae17886c731256e1e,
            limb2: 0x1fe9ea9725a4adde,
        },
        r1a0: u288 {
            limb0: 0xad895d325f4807519db4372e,
            limb1: 0x19d3648bef865bc95e5ae12d,
            limb2: 0xa64a25ce2a4bd5,
        },
        r1a1: u288 {
            limb0: 0xbc141f9a4b12d644afe7b933,
            limb1: 0x1c03537ca923d6e2fc6c9cfc,
            limb2: 0xdaf2b66b2659f63,
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
            limb0: 0x6aadd8f3fc46f7075b95c9df,
            limb1: 0x950d271a4725b9b14a1e088e,
            limb2: 0x172d3ee51746ae02,
        },
        r0a1: u288 {
            limb0: 0xd72ba5f89c16134efdd7ed48,
            limb1: 0x8cac3f638b535596db55e0a9,
            limb2: 0x1c7d76c2e9b2ffde,
        },
        r1a0: u288 {
            limb0: 0x7c7c29b5b8d5640e91e5297c,
            limb1: 0xcefd04465e9add4fed04b6c7,
            limb2: 0x1a994ae03f327abb,
        },
        r1a1: u288 {
            limb0: 0x789efd5c18d65b7a91c51bc3,
            limb1: 0x2aa67f84c0de53fcbba3dd22,
            limb2: 0x2f1688441b9dee5d,
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
            limb0: 0x4383c37c09070387b8f2a0da,
            limb1: 0x5c611fc2f3ff98ab1608d40c,
            limb2: 0x27aa9a496f7c30f5,
        },
        r0a1: u288 {
            limb0: 0x81e1f15900573c1567e4b555,
            limb1: 0x45f01d76fac52d051d0b7acf,
            limb2: 0x4cb5901d7fcdbef,
        },
        r1a0: u288 {
            limb0: 0x7f50a8d99406dff6fbd47507,
            limb1: 0xf7e68c783519a851c03b2e96,
            limb2: 0x2b068db2deafbc3a,
        },
        r1a1: u288 {
            limb0: 0x92b24fdcc40086d0a8ba73b,
            limb1: 0xe1c56aeb9d0918fe7fbdd3ba,
            limb2: 0x83be244578fff9f,
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
            limb0: 0xebab20366fe94f7e89cfbdc0,
            limb1: 0x631173991436f73a39c819b8,
            limb2: 0x29b748b7e389eb14,
        },
        r0a1: u288 {
            limb0: 0xbf500ec0ad0bd6bbf932beee,
            limb1: 0x21b481e260732f963c4897a2,
            limb2: 0x8d5e4a872093d78,
        },
        r1a0: u288 {
            limb0: 0xd6fb76aecc72438b7ac0ad95,
            limb1: 0x44312c5cbb834bdf8ab637c2,
            limb2: 0x55317e328515a68,
        },
        r1a1: u288 {
            limb0: 0x9a9d27f028bb688eb5509474,
            limb1: 0x42241e4fa9e471f9f0b3c56f,
            limb2: 0x20fb1b0b3633e520,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x491b0f588b5f6dc1c41125ce,
            limb1: 0x62e9e1514adca197094d0aef,
            limb2: 0x9c2adf0cfa00f6,
        },
        r0a1: u288 {
            limb0: 0xe4d76557454836db6ac5b126,
            limb1: 0xd0a1cafedde7490968d62297,
            limb2: 0x1fd9b0728da6613a,
        },
        r1a0: u288 {
            limb0: 0x11607e27bf33f7bdc143d9c6,
            limb1: 0x281bb56bbcd6283917f6080,
            limb2: 0x10354e7044e4338c,
        },
        r1a1: u288 {
            limb0: 0xbb098de26aa7d84f654b04f5,
            limb1: 0x7a330ba687d84757341564ea,
            limb2: 0x1d41aa3b0ad45c10,
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
            limb0: 0x6e0ebfcf3d5465a8d2b6d2ac,
            limb1: 0x857c75fa6c75ca3e81bf1ae9,
            limb2: 0x2c59a4bfc1652382,
        },
        r0a1: u288 {
            limb0: 0x2aecbfecdaefa87361d525a3,
            limb1: 0xc8584eb0b9feb741075a217,
            limb2: 0x4ccb0d46df78dd8,
        },
        r1a0: u288 {
            limb0: 0x92fd69812687d3ca00f5a10e,
            limb1: 0x98b81a5a65fb01b215a1366d,
            limb2: 0x21785427f6f41f73,
        },
        r1a1: u288 {
            limb0: 0xe106f4d154cebbaceb293ae2,
            limb1: 0x7bad94c1b268e6ad816fbfb8,
            limb2: 0x1eb416ad93b1efeb,
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
            limb0: 0xa849b9b36a7dab8ba572f79c,
            limb1: 0x58c8ea5f418243bf2e9be2c4,
            limb2: 0x92fc82460d6c5fa,
        },
        r0a1: u288 {
            limb0: 0xabfbf641dddade3f6884c0e8,
            limb1: 0x57545e0c63e57423934d70d4,
            limb2: 0x475f18bbe1dd6c1,
        },
        r1a0: u288 {
            limb0: 0x726d6febaeaf957104381418,
            limb1: 0x5ec72bb8704308ebbdb850be,
            limb2: 0x1dcfc362d94904ae,
        },
        r1a1: u288 {
            limb0: 0x7e7836cefe1d10955df4c086,
            limb1: 0x7c9268ca531e5cad1f644d3c,
            limb2: 0x19e35c99c800934a,
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
            limb0: 0xd2cccb191431e2e8a18be7c8,
            limb1: 0x51472147140020d97e6f14b,
            limb2: 0x2d983c9883773b02,
        },
        r0a1: u288 {
            limb0: 0x91dc059d6b628f120ffbe01e,
            limb1: 0xfdf573cf385f151a91c1d320,
            limb2: 0x2f0f5d24cbf66a8f,
        },
        r1a0: u288 {
            limb0: 0x558eaeb4b507ce8d29ad7877,
            limb1: 0x346ff8b3c948971022b5f1d5,
            limb2: 0x989fa12e1ab4f82,
        },
        r1a1: u288 {
            limb0: 0xddfef848caeff46d0d7cac8e,
            limb1: 0xb3480029796aae930a39b02f,
            limb2: 0x2a7f51e99b31f528,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xde8b43cde2e0c85bf49720cf,
            limb1: 0xf92fd4944bd5d64545052b3a,
            limb2: 0x20e68e995500d766,
        },
        r0a1: u288 {
            limb0: 0xe5fb431ebc499dcf4540e1b6,
            limb1: 0x68c3f69033d7e0b3f33b719e,
            limb2: 0x2990e8dc830a2970,
        },
        r1a0: u288 {
            limb0: 0xe0eeb65a76c27f23c7175cf0,
            limb1: 0x18bc5defa37374b0fe67b00,
            limb2: 0x912257ea9cce0d,
        },
        r1a1: u288 {
            limb0: 0x83d0100ff55520434647d57d,
            limb1: 0x2f48e43fc68eec03747cb0b2,
            limb2: 0x1f9027d3b6e1b0d4,
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
            limb0: 0x1647d059a7b8a10ce8cf0baf,
            limb1: 0x328ceab214b3ba81738ec12a,
            limb2: 0x5ab02cb13adf70a,
        },
        r0a1: u288 {
            limb0: 0x4a42e407cab0aa5aaa36cd60,
            limb1: 0xdeb2aba92cbad514502d803c,
            limb2: 0x285f10e52c83ac78,
        },
        r1a0: u288 {
            limb0: 0x4c9e83c1744f13b6218ed3d2,
            limb1: 0x6dbed879d87fe2445176d100,
            limb2: 0x160af8a031abb10a,
        },
        r1a1: u288 {
            limb0: 0x79efbee2c6158f1d102c1dd9,
            limb1: 0xd7dee8106a6c2fbb907a5f59,
            limb2: 0xce4a2f31017b2fe,
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
            limb0: 0x4835abb92170d33b2ea0ab4,
            limb1: 0x54ec2bfd1fbf5030f22c178a,
            limb2: 0xdc5aef8d6068ce0,
        },
        r0a1: u288 {
            limb0: 0x197c01c3252b57360f014e4f,
            limb1: 0xc890556d8d89256ef5466a78,
            limb2: 0xc224a2511f21bf5,
        },
        r1a0: u288 {
            limb0: 0x68dad91bab84d8783ac977d3,
            limb1: 0x685a8ab4bda7eaea1b564151,
            limb2: 0x1741eabafb698cce,
        },
        r1a1: u288 {
            limb0: 0x83168513a61b235da3844d1a,
            limb1: 0xaa2f2e38aefc573f91b97f68,
            limb2: 0x1ddb211cf1714c05,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb38faff60898471b67b4997e,
            limb1: 0x3fe3dfe1e887829cfa5b6,
            limb2: 0x1c16c90df804c7a9,
        },
        r0a1: u288 {
            limb0: 0x862f03f478dbf35e83393f60,
            limb1: 0xb025714237c46f8696110255,
            limb2: 0x1e7b5686fbd644e5,
        },
        r1a0: u288 {
            limb0: 0xf56f9a88c1c1a36aaa22fed2,
            limb1: 0x6c95c16a2fd1ae368d422677,
            limb2: 0xedef0dd9a62bd46,
        },
        r1a1: u288 {
            limb0: 0x3948748755cdda35036bf40f,
            limb1: 0xf41e65cf24c258732b79dc1a,
            limb2: 0x1f5d21b9a904b211,
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
            limb0: 0xbcc23933f87f921e6427adf,
            limb1: 0x186da03cc1f389a6dd082633,
            limb2: 0x1c0241bb6d78dd6,
        },
        r0a1: u288 {
            limb0: 0x9804bd57b4eecf37b9bbadf4,
            limb1: 0x87325177baf2352a86d5dd75,
            limb2: 0x1e7ae9d51613c337,
        },
        r1a0: u288 {
            limb0: 0x6bf8b494908acbc21d70ddc0,
            limb1: 0xaaf30ad8e236a78789c41aa6,
            limb2: 0x8c9dbcae46b5b9c,
        },
        r1a1: u288 {
            limb0: 0xbbaae2d4273aadd63f7a27f8,
            limb1: 0x28536de7d719115cbb216050,
            limb2: 0x2ed480eb8b776d,
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
            limb0: 0x25c919c11736a388ef302fa0,
            limb1: 0x9227f2a8afa474891abf4316,
            limb2: 0x2ce0c9676889534a,
        },
        r0a1: u288 {
            limb0: 0x44c2e6bebc04aec836ed9130,
            limb1: 0x11cd95db52306d8bd40ee922,
            limb2: 0x2f979fc8180b0a7d,
        },
        r1a0: u288 {
            limb0: 0xd78e4b9906ec1c981a63c26b,
            limb1: 0x2e1c6e2bac0b5ff87bda65fe,
            limb2: 0x1be231f011f5f195,
        },
        r1a1: u288 {
            limb0: 0x66cdb73c6609aa49a0216560,
            limb1: 0x4c039238f5aba1dfbad2e67,
            limb2: 0x17734df00eb7815a,
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
            limb0: 0x66d22cd3bfcb5c6a40be63ff,
            limb1: 0x6b664d94097fb70463209ab3,
            limb2: 0x1974143e8f269510,
        },
        r0a1: u288 {
            limb0: 0xbd6aff5632d675f9603392a5,
            limb1: 0xdccd93b060779fe6c4e680cf,
            limb2: 0x746e3fac31045b7,
        },
        r1a0: u288 {
            limb0: 0xd4d56d1457a31cdb388f68ae,
            limb1: 0xae15d3aef8e945922377cef3,
            limb2: 0x17d6130527cd759b,
        },
        r1a1: u288 {
            limb0: 0x7f29cbcc9e889a5e76adc85a,
            limb1: 0x7e285c6f57d1c045d844c33a,
            limb2: 0x20dd95ec7e48e695,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2bb840d428c72ce39a4d34f,
            limb1: 0x731d1073a5de375b4708a4db,
            limb2: 0x6c3f3d47fdc11f2,
        },
        r0a1: u288 {
            limb0: 0x8f24a03f25c5e9dff8991ca5,
            limb1: 0xb9120f550041851d96b83ded,
            limb2: 0x12166feb0c0f144e,
        },
        r1a0: u288 {
            limb0: 0xc85774a7c85d652fb3a6ea98,
            limb1: 0x3085a087dc388ab4c04ccd4d,
            limb2: 0x11f4eceac6aa1aa5,
        },
        r1a1: u288 {
            limb0: 0x96b62fbe49412bb59f84e576,
            limb1: 0x377a91224817a89394d0a760,
            limb2: 0x3514e6d749180c4,
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
            limb0: 0x807eb21107309f80ab8f081c,
            limb1: 0x341fa565db6e8aeaaa62c971,
            limb2: 0x2c4a1bcbcb2be1cc,
        },
        r0a1: u288 {
            limb0: 0x600cbbfebaba0c280951cd7c,
            limb1: 0x5f7f80322baad1a8c008e9a3,
            limb2: 0x187d583d5a4ae93c,
        },
        r1a0: u288 {
            limb0: 0xe0f4e280c98651275470fba5,
            limb1: 0x79e4f1258d338bb63ca2015b,
            limb2: 0x198d6c7d477cef8e,
        },
        r1a1: u288 {
            limb0: 0x9058f5ec8c18318a2b60ea6f,
            limb1: 0x98b52b20ab1bbdd19affb7c8,
            limb2: 0x157ddd7bffb49480,
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
            limb0: 0x66a26eede0066aab2191c5c2,
            limb1: 0x19395b85935a47fb8f173e64,
            limb2: 0x369047e1135a219,
        },
        r0a1: u288 {
            limb0: 0xd2f9f3182d1f1281d3391a08,
            limb1: 0xb301a9f7c6cf0179e7bacd00,
            limb2: 0x23504263bcf8faf7,
        },
        r1a0: u288 {
            limb0: 0x2b45aadfbb014a2f292a0f2b,
            limb1: 0xda877e5eba7121f479079f1b,
            limb2: 0x2a551b45c5199f31,
        },
        r1a1: u288 {
            limb0: 0x8db7a5d15b99d40459c30b3,
            limb1: 0x2548e9a5bfa61e5e892594b5,
            limb2: 0xf879917fc612b3e,
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
            limb0: 0x2076af75f312a2790ecee08a,
            limb1: 0xab57cddf0f6b57d98c4937da,
            limb2: 0x1de1b1a9997984ed,
        },
        r0a1: u288 {
            limb0: 0x8449037a9910f305bcdae210,
            limb1: 0xa310c75523e6131bdd71939c,
            limb2: 0x6f83d2e67c3da07,
        },
        r1a0: u288 {
            limb0: 0x2db0fe3085a6f5a3e00a2380,
            limb1: 0x1c6b754c75d2f33463fa6abf,
            limb2: 0x1c86163ded4fa4f8,
        },
        r1a1: u288 {
            limb0: 0x869a1d1c34a893870cb22c84,
            limb1: 0xb3697ea9889586ef6e221828,
            limb2: 0x1063c499c539a12b,
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
            limb0: 0xe8612d4de4b11c1c696213f0,
            limb1: 0x1b134cf8e536858ad89dc4e0,
            limb2: 0x12fa11e13e21c206,
        },
        r0a1: u288 {
            limb0: 0xed2840ea81763abc7e0fdafb,
            limb1: 0x7d0abbcf8ac5dde240c2189b,
            limb2: 0x1aa8458a8dcf1e09,
        },
        r1a0: u288 {
            limb0: 0x8fc9fa0d11faebc47b9898a9,
            limb1: 0x807c1b79b590fbde7707be70,
            limb2: 0x7f23907dbde25cb,
        },
        r1a1: u288 {
            limb0: 0x59afabf11fa4da15c34b73dd,
            limb1: 0x1a11f117a301c5064023306c,
            limb2: 0xcdcbb5222ec084,
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
            limb0: 0x5d42ad3893c07d1be1beb707,
            limb1: 0xb9b8549e57a254b51c9c041,
            limb2: 0x2302ce1f97d4c87e,
        },
        r0a1: u288 {
            limb0: 0xb78249ac7790ca80f47d1574,
            limb1: 0xd81dffe2f2e7e334ae7ca85,
            limb2: 0x2ffad6b2283cc98d,
        },
        r1a0: u288 {
            limb0: 0x65533fb0e7582f52437462aa,
            limb1: 0x13a2af77e0d41be2d357441d,
            limb2: 0xff1dec30db77983,
        },
        r1a1: u288 {
            limb0: 0x6c9612dfe3f4d77aab636382,
            limb1: 0xe6febb0b6fab45ba23e1ed4a,
            limb2: 0x33e9f1f655256d8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x34eb224a7fad91016ff55645,
            limb1: 0x6cd117dc867bb89ae3379469,
            limb2: 0x28a7a258b991ae08,
        },
        r0a1: u288 {
            limb0: 0xce5613fa4dd8ec5fd5721efc,
            limb1: 0x953f3c49a0a0d5f90ba2b165,
            limb2: 0x268369911c3c84d8,
        },
        r1a0: u288 {
            limb0: 0xdce546beac2d5da9a7ee304c,
            limb1: 0xfd57690eda7830cc5525b1c4,
            limb2: 0x18ac633acdbc98dc,
        },
        r1a1: u288 {
            limb0: 0xf83c334c804dd0a3bbfe4db4,
            limb1: 0x765b74268faa09ef2faca816,
            limb2: 0xeba1492628aa289,
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
            limb0: 0x4a781c5e217ef4fce93ef7ce,
            limb1: 0x99325f633bc36aa8aa011324,
            limb2: 0x15a2915b8c0bdabc,
        },
        r0a1: u288 {
            limb0: 0x56aa142cafd79cedc39ddc67,
            limb1: 0x5aff2925fd71b59efff03cb9,
            limb2: 0x17b3e6d558c56c54,
        },
        r1a0: u288 {
            limb0: 0x2944106b33efe77ce3dfca63,
            limb1: 0xef59302e9033f0cfcc5a2086,
            limb2: 0x13654e6a43cf9a58,
        },
        r1a1: u288 {
            limb0: 0xb0b0c34251bda5faa99bfa63,
            limb1: 0x7eb3943376a488a8ce0a7f74,
            limb2: 0x7c4e0798090766,
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
            limb0: 0xf1c9eb23d4634a528db5a304,
            limb1: 0x14d8def8ec1d2309fab8cb94,
            limb2: 0x1aa8414490a9e8a3,
        },
        r0a1: u288 {
            limb0: 0x5211b74770311108fc3b80ba,
            limb1: 0x6017f8026a03b69ec1a4342e,
            limb2: 0x1a5675ffb79543ca,
        },
        r1a0: u288 {
            limb0: 0x92d1757e986d77c1f393d532,
            limb1: 0xf9fc09a8859f8c4fb8610189,
            limb2: 0xc140562f4fb22b9,
        },
        r1a1: u288 {
            limb0: 0x6c6c341c7a460f36215c368,
            limb1: 0xee169f4a55432a3136e9c45a,
            limb2: 0xe6447d8b1ddf794,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4cfecf689259dc052f0d59b9,
            limb1: 0xf854c26e34d5d217f5441442,
            limb2: 0x124219fffd2b1da0,
        },
        r0a1: u288 {
            limb0: 0xecf4602ac833565bf847d4cb,
            limb1: 0x4b6838d23b09f0f9fc51f3af,
            limb2: 0x75c46f7e42897d6,
        },
        r1a0: u288 {
            limb0: 0x6a584e77c7d193ba54668782,
            limb1: 0x347adcdb568831803cd3258e,
            limb2: 0x11005e819b95dbd5,
        },
        r1a1: u288 {
            limb0: 0xe6d72b74ce3d3855cde5e2d9,
            limb1: 0x7cfd2c87daf6102ec26b77b9,
            limb2: 0xf772032a52637a1,
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
            limb0: 0x218edae31cc4e4fb8462f907,
            limb1: 0x5421521952e4a97abe50c461,
            limb2: 0x2d935545c40feff4,
        },
        r0a1: u288 {
            limb0: 0x9ee5f3e01a9f685536f5ab4b,
            limb1: 0x26bbc938f8938db03ed90db3,
            limb2: 0x89703550c125734,
        },
        r1a0: u288 {
            limb0: 0xfdb862c889eb2742fb231b5c,
            limb1: 0xe53692e0b482a599d8db490a,
            limb2: 0x2ef7799f8b244421,
        },
        r1a1: u288 {
            limb0: 0xeafeb0198fc7e8e7f26dcd44,
            limb1: 0x41e9d47cea23f65aa5b50006,
            limb2: 0x281a0987cdeaebef,
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
            limb0: 0x5b058af26189e436d385ce8,
            limb1: 0x3da6b602bb3e56c1251e58ab,
            limb2: 0x1aa62dd1c2ddef17,
        },
        r0a1: u288 {
            limb0: 0x6c290b28091e9c3d0c101338,
            limb1: 0xb28ff18596489cf6fb42b3b0,
            limb2: 0x94019a84c7953bf,
        },
        r1a0: u288 {
            limb0: 0x695a29346628d4329d6a5b02,
            limb1: 0xffd3d9a658b1208546dc9968,
            limb2: 0x32d05c5acdea885,
        },
        r1a1: u288 {
            limb0: 0x63bccd2c99afb4f1526fcf30,
            limb1: 0x2b41aa78018ce5479955a742,
            limb2: 0x1606fca6f678a219,
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
            limb0: 0xedcc917b561db026126e0dbc,
            limb1: 0xf9a080d8836f03e5edf9ac89,
            limb2: 0x23f1dc6fc7ef2594,
        },
        r0a1: u288 {
            limb0: 0x1ffa91c78821b184369e2101,
            limb1: 0x38dccf12ba71dedeb0c67f88,
            limb2: 0x22c0d627c74a68ab,
        },
        r1a0: u288 {
            limb0: 0xdb9d7805d175a955662ed298,
            limb1: 0x97321b25b150abf854123e6,
            limb2: 0xf5f32c0da90c20e,
        },
        r1a1: u288 {
            limb0: 0xf3ecd4bf25ef1eb6c501061e,
            limb1: 0xfca8f039102d7efd2cdda83,
            limb2: 0x156e4832abec6c6c,
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
            limb0: 0xc30a1207baee895b732858aa,
            limb1: 0x256509aec51391e484483200,
            limb2: 0x2e256c115273565c,
        },
        r0a1: u288 {
            limb0: 0x9a939670eb8c4df83267cb9d,
            limb1: 0x6e156deae3a9e0e6caa8b1cc,
            limb2: 0x127ac538fa50aaa,
        },
        r1a0: u288 {
            limb0: 0xbb59ce641b6dc804f9145a32,
            limb1: 0x7cbbe68b3290683d6385f612,
            limb2: 0x9fdb55059507f7,
        },
        r1a1: u288 {
            limb0: 0xfbc9efa136f4a55d5f80115c,
            limb1: 0x9b4ba87db0531291365e3a86,
            limb2: 0x219ed582fa680d09,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xebb43a883a708bd293e41993,
            limb1: 0xe9d925ce209601e88eec2212,
            limb2: 0xd2ac756794c14cb,
        },
        r0a1: u288 {
            limb0: 0x8ce694c9ca950133a5291684,
            limb1: 0xea9cc4e9049d2bd804e4dcf0,
            limb2: 0x26c47ded3bc6696b,
        },
        r1a0: u288 {
            limb0: 0x58b3615c5e3c3cd8e4572250,
            limb1: 0x290ccd034bd854215fe1a5c0,
            limb2: 0x2646eda47cec685d,
        },
        r1a1: u288 {
            limb0: 0x1bb841d21e9dd98a6850d0b0,
            limb1: 0x2cce26345443216771b91da3,
            limb2: 0x280b278d49ba08b4,
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
            limb0: 0x3fde8f2af5b2b991940cbc82,
            limb1: 0x2b7fc685bfd8cb159d446b0c,
            limb2: 0x1388aaee9448abf4,
        },
        r0a1: u288 {
            limb0: 0x4f349f9ab2140a358b5b1630,
            limb1: 0xf6783ed8ecf260ce8b3e5952,
            limb2: 0x2402e075aead01f7,
        },
        r1a0: u288 {
            limb0: 0x78ac5b442f83db27ce2d9f59,
            limb1: 0xdf817453047678eaae7c8831,
            limb2: 0x1781ea11635809ea,
        },
        r1a1: u288 {
            limb0: 0x608c277d53f8ba476714513a,
            limb1: 0x923d84984579f62f2c7d9080,
            limb2: 0x898fe20bf26bfc0,
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
            limb0: 0xcdca816be7fc3bb39f87e9a9,
            limb1: 0xd8d22a2c57f6be1ef43f8054,
            limb2: 0x1830946a2b02fd98,
        },
        r0a1: u288 {
            limb0: 0xa6072d6ac6a0e5a23d319e5f,
            limb1: 0x803c967684e0c78052847b9e,
            limb2: 0x275da433f3967535,
        },
        r1a0: u288 {
            limb0: 0x1203a19738b2a39b9cf93e62,
            limb1: 0x1b8b0963672badf05019fb3,
            limb2: 0x20266ca277d072bc,
        },
        r1a1: u288 {
            limb0: 0xaec390bfcc19829aecc791cc,
            limb1: 0x98720fed9cbc416703d4be4f,
            limb2: 0xde1f3945bef0614,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5f7878f345ad855350cd55c1,
            limb1: 0x9c7f19a5f0c948a659281394,
            limb2: 0x1c3be61cdd45e1e0,
        },
        r0a1: u288 {
            limb0: 0xab9eb8a68646e3798ecf171b,
            limb1: 0x8181c9568aad2830ad6a1690,
            limb2: 0x15d2e4f8bfcb694f,
        },
        r1a0: u288 {
            limb0: 0x68c934dbe72c657441463c36,
            limb1: 0x69f3022e254a4addc5a65678,
            limb2: 0x21a1d065075a4bea,
        },
        r1a1: u288 {
            limb0: 0xf76108b3a176df1c53b8eaaf,
            limb1: 0xa2936874f079c15c7d22a01f,
            limb2: 0x2370e43770a9f8e8,
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
            limb0: 0x215f0b82e60c8944c67c145b,
            limb1: 0xd97d95380bc48bd9e146f0f3,
            limb2: 0x2f5565679c987a04,
        },
        r0a1: u288 {
            limb0: 0xad84d12eda657bb0f56ba910,
            limb1: 0x709613de3ea21484811f2e43,
            limb2: 0xcc2d9e917e7c6fc,
        },
        r1a0: u288 {
            limb0: 0xacb74706ba31652c13e7963a,
            limb1: 0xdb0364a586258d3b63f5324e,
            limb2: 0x1e25c7786c8fd428,
        },
        r1a1: u288 {
            limb0: 0x9a10cc144728cb9455575a55,
            limb1: 0x15e03b25f70f23f99e89105e,
            limb2: 0xe44f693e3f6fa3b,
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
            limb0: 0x2191dc637475ce627a189110,
            limb1: 0xae46d2c29384dde8b1229a7e,
            limb2: 0xa4fc1c7c09b941c,
        },
        r0a1: u288 {
            limb0: 0xbbf0447bdac7cc95f4ebcd60,
            limb1: 0x150cdf97c70a99ec4f03bbfa,
            limb2: 0x7a58802f32bd1a7,
        },
        r1a0: u288 {
            limb0: 0x2e5d795dd9dca5ec39a9c97c,
            limb1: 0xb57988cb550f85a2e91ede45,
            limb2: 0x1451f44d2054ca8c,
        },
        r1a1: u288 {
            limb0: 0x74c42fede688c5c8136a5ce7,
            limb1: 0x35f8c4cf0084aa8573ee946,
            limb2: 0x14e13ab90a6a53ee,
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
            limb0: 0x287dae5e75a1d811ec7be98e,
            limb1: 0x1619d8fc2a10451cad1c54ac,
            limb2: 0x229061e99a0ef20d,
        },
        r0a1: u288 {
            limb0: 0x4a3174c538422572909a90f,
            limb1: 0x38e30af967efb3df1a36d54a,
            limb2: 0x198550350782564f,
        },
        r1a0: u288 {
            limb0: 0x1503c404ef8ee6cf7560ddfa,
            limb1: 0x8e86269c63d7cef5d3e4692e,
            limb2: 0x16d84d4c54ead22c,
        },
        r1a1: u288 {
            limb0: 0xac49fcf89375ef88441dfd89,
            limb1: 0xeeb1b508dd19b60741cd3ce5,
            limb2: 0x1bc0847612915e16,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xff36481f30a42abf913b182e,
            limb1: 0xa113f4e0d8f4a9d81812133,
            limb2: 0x16681718c4e86bea,
        },
        r0a1: u288 {
            limb0: 0xc4b9434d2209395ad130dc4d,
            limb1: 0xbf797e7d2d3dcdc1c38070cf,
            limb2: 0xdb635211f17c525,
        },
        r1a0: u288 {
            limb0: 0xe4fbd502cd064ea7682af3a9,
            limb1: 0xc3ee661500eb79b6fb52ff69,
            limb2: 0xb6eb324636c81fb,
        },
        r1a1: u288 {
            limb0: 0x36228bdc5d15cffc7a9761f6,
            limb1: 0x3f3a3e96a07659672df5639c,
            limb2: 0x2b36a843647e8a4b,
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
            limb0: 0x94449d64b993ccaab9b6bb07,
            limb1: 0x9f91ecc8e431dcab1b2b39a5,
            limb2: 0x2d5d5a2640665711,
        },
        r0a1: u288 {
            limb0: 0x59ab12b400b8f3d3d87d4bb,
            limb1: 0x759516b21b706b986064294,
            limb2: 0x2949d0564dcb831e,
        },
        r1a0: u288 {
            limb0: 0x407b4ca39d9e475379e6225f,
            limb1: 0xf1732b62b3b75ee1a7350a1b,
            limb2: 0x25aa4a577c6229df,
        },
        r1a1: u288 {
            limb0: 0xfca0555574ee1e01a082b1b0,
            limb1: 0xa0548aa053e83a6e4cb1eb3d,
            limb2: 0x1f0cd8186b989b2f,
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
            limb0: 0xd07615e291ba920a8420ac1b,
            limb1: 0x4dc6e5e7948cf9e31f197580,
            limb2: 0x1ac2c373f0b374ad,
        },
        r0a1: u288 {
            limb0: 0xd439590832ef410f1ad51fa9,
            limb1: 0xd2443f6d8a25e18b3e62614e,
            limb2: 0x1492ab426087b70c,
        },
        r1a0: u288 {
            limb0: 0xc8d3044a791e9862fe24b09c,
            limb1: 0x4b30cf5547ddec29d5ba9629,
            limb2: 0x87c8730b273da72,
        },
        r1a1: u288 {
            limb0: 0x9e8b3408be5e1faabc88ec3b,
            limb1: 0x9e0d44b4b3bcef473f5ee4de,
            limb2: 0x25f48cfec056a0cd,
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
            limb0: 0xb44105a92af67fa230ab7ce,
            limb1: 0x4273077fa0b7957f7e322779,
            limb2: 0x1b95450b861aa58,
        },
        r0a1: u288 {
            limb0: 0xa161020730ab5ec09d37b79b,
            limb1: 0x5c23837e147d1b4a59ab0168,
            limb2: 0x2c726ff643fb1671,
        },
        r1a0: u288 {
            limb0: 0x54bc89cf9863bef7b9a17a2,
            limb1: 0x85c6680d1a1b315ad770d77a,
            limb2: 0x1e6fdbd8a85dc929,
        },
        r1a1: u288 {
            limb0: 0x7a38dc529f0b5755f10d8997,
            limb1: 0x78243ae3043a3bc75008636e,
            limb2: 0x12dac28d503f5669,
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
            limb0: 0xece9826fba35e5f535c6f640,
            limb1: 0x924cf300a5575b692622a11e,
            limb2: 0x12a913de58335c95,
        },
        r0a1: u288 {
            limb0: 0x63e729c1cf4f0bed149b687b,
            limb1: 0x62ea6bb1bd58b808f7cadca4,
            limb2: 0x8929263198f6df6,
        },
        r1a0: u288 {
            limb0: 0xd5487abe4ef7e978ed246144,
            limb1: 0x7efa3527d336965e84ba7256,
            limb2: 0x2a331596c2df2fb0,
        },
        r1a1: u288 {
            limb0: 0x9069c81252f91b812f1f9715,
            limb1: 0x6e0659fb3309a47cb539de93,
            limb2: 0x2c2903b23acaaade,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa29cad05f70f9d6193ca4e5f,
            limb1: 0x6dd303c6971e51b134d43646,
            limb2: 0x9ff87501470d7c2,
        },
        r0a1: u288 {
            limb0: 0xce405ef80e49ae7f5c7e7151,
            limb1: 0x7794f2d33047d9ab2f6aaf73,
            limb2: 0x40f1551bafaaf31,
        },
        r1a0: u288 {
            limb0: 0x19a5fa4d08452e936e25a71b,
            limb1: 0x220cbb99f079c6c5e52bd999,
            limb2: 0x1a5e76e8ffca4d79,
        },
        r1a1: u288 {
            limb0: 0x2f8c478ef1870f87f8fa828b,
            limb1: 0xfd14ffda808a7ce75f7ac79a,
            limb2: 0x2127bbaebf146133,
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
            limb0: 0xbc477d1b75e72850142ce9d2,
            limb1: 0xfb13c6e1d8363f1b3e796bee,
            limb2: 0x2382e9dc841541a4,
        },
        r0a1: u288 {
            limb0: 0x3f29863e923f138c282d689a,
            limb1: 0xbddb9c9677de91ffae23e69b,
            limb2: 0x2e5cde06893ae554,
        },
        r1a0: u288 {
            limb0: 0x953259821eaab397e2daf9d3,
            limb1: 0x526b02c2941cd815e1b4da66,
            limb2: 0x1d7ac02bdef445b9,
        },
        r1a1: u288 {
            limb0: 0xada2a88e9462bbec349295ab,
            limb1: 0x4f09494b21cc52408634dd9b,
            limb2: 0x2b1990121fc54afd,
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
            limb0: 0xd9252cafae5537d195ec13a,
            limb1: 0xe1e2d6de952bee39698a0bb1,
            limb2: 0x94dae1ff1ea2431,
        },
        r0a1: u288 {
            limb0: 0xb48be5d65971e04544e180ba,
            limb1: 0x919bbc509f0a8aece1f28b3b,
            limb2: 0x24ddf7bd16cd3277,
        },
        r1a0: u288 {
            limb0: 0xafcecb9903f0956df0533b5,
            limb1: 0x4246c88dac48e7b7e7778b97,
            limb2: 0x2662b755e850007b,
        },
        r1a1: u288 {
            limb0: 0xeaa27ded0cf67c49e8a3ef47,
            limb1: 0xbc73ed8c88c5c70bd5c18216,
            limb2: 0x1b875268503c0422,
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
            limb0: 0x56062745f2088b89906ebe25,
            limb1: 0xc62dcc652bb82021aff13905,
            limb2: 0x24ddb64290695f11,
        },
        r0a1: u288 {
            limb0: 0x8ccbecc84b87159b2517daba,
            limb1: 0x32e613a725ba1a9ad3fc1768,
            limb2: 0x2ff9612b8e33af56,
        },
        r1a0: u288 {
            limb0: 0x40e98c83768dd43f8bcbe0d,
            limb1: 0xe40bac538856477cbc5092b8,
            limb2: 0x4aecb4114c4f29e,
        },
        r1a1: u288 {
            limb0: 0xb87b403e26b101e830d765aa,
            limb1: 0xf63a11e04a6ae4653537dc6a,
            limb2: 0x2c089bdcecbe17a1,
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
            limb0: 0xd7f78b956c7366cd5cbdddf7,
            limb1: 0x3cbe4a997cf6c94585710710,
            limb2: 0x1862fea85af10f72,
        },
        r0a1: u288 {
            limb0: 0x880993b565e25cb219ae3e79,
            limb1: 0x3c153192824ae3b9b778383e,
            limb2: 0x1fa9a28a385a5e56,
        },
        r1a0: u288 {
            limb0: 0x35e960e7e51491281a12354d,
            limb1: 0x57148383f36c3791fda7bc91,
            limb2: 0x2e19f14368971712,
        },
        r1a1: u288 {
            limb0: 0xc9e01d04014f9e2a49be4ec5,
            limb1: 0xf9e5d1d4770ef7bf7ded85d7,
            limb2: 0x26679072af8a5bcd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7c3714716212d557e4507198,
            limb1: 0x61e42b296e3e74b18a1fb521,
            limb2: 0x197264fd0da5f7a,
        },
        r0a1: u288 {
            limb0: 0x9b408f7f771c4d51ae9ffed5,
            limb1: 0x3f2d117ddfd1d77e6d2c4367,
            limb2: 0x296c28de1da5c715,
        },
        r1a0: u288 {
            limb0: 0x24966fe9bc17898b2a973953,
            limb1: 0x7f45ce731176d86c0f272f30,
            limb2: 0x2e91e357b011826e,
        },
        r1a1: u288 {
            limb0: 0x5f4060f4c56ae5c5793c8ea2,
            limb1: 0x167cbb63ddca702bcfa2e50e,
            limb2: 0x1e7be67d8a71e72,
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
            limb0: 0xa9294596687b3b40297498c7,
            limb1: 0xae32b775cf4b8afb205a11bd,
            limb2: 0x1794a726c156bb10,
        },
        r0a1: u288 {
            limb0: 0x30e428bcc51c39511897dbbd,
            limb1: 0x946a206a632ca5a930df2cbf,
            limb2: 0x8d8e3c46f5cda78,
        },
        r1a0: u288 {
            limb0: 0x204ac576d8d6df97f277ea94,
            limb1: 0x2fd28b245d5215dc6fd5a5a7,
            limb2: 0x245c343d65515495,
        },
        r1a1: u288 {
            limb0: 0x924c757782c577a7d88a5ee7,
            limb1: 0x6cc0113792f8cc71fdfeb0a3,
            limb2: 0x2d2c9825781e5f82,
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
            limb0: 0xf5b730c17741a890b411fbe8,
            limb1: 0xc19803d3bbb3e04dbc3f8a6,
            limb2: 0x15334ad00c45d95a,
        },
        r0a1: u288 {
            limb0: 0xc7bba5bb657ba7b78c40fb36,
            limb1: 0xebe1ee3de1f3e3086974c521,
            limb2: 0x21c7ae7e57f9de19,
        },
        r1a0: u288 {
            limb0: 0xa299785b15fb18f4b011b7e1,
            limb1: 0xf1b084a611c3354e64ed70f7,
            limb2: 0x14351427a06172da,
        },
        r1a1: u288 {
            limb0: 0x6082add6ffc37c2a98ef457d,
            limb1: 0xffcde94b0852bff3897945c6,
            limb2: 0xf6db9552547ec3c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd75137cfa386b2d90b231a9f,
            limb1: 0x87ef26ec51f567e5e8737eee,
            limb2: 0x2aee3e9790099bda,
        },
        r0a1: u288 {
            limb0: 0xd4d0f6d418dcbcfe62aacb79,
            limb1: 0x9acfadf008682a55421fd48a,
            limb2: 0x1b077e1ec19abad1,
        },
        r1a0: u288 {
            limb0: 0xc6f9821e304048bfc6035247,
            limb1: 0x981c0d23d214a0ccf9c53d66,
            limb2: 0x1c63a8908ac99fd6,
        },
        r1a1: u288 {
            limb0: 0xa5394ebcf48c19516bd60f3a,
            limb1: 0x6de7c9742b686902a02e4bd8,
            limb2: 0x656b4ed570884c9,
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
            limb0: 0xbcf6f8f2684fceb69107644d,
            limb1: 0xb1a46a5c69767b6225ba1203,
            limb2: 0x46ae359fa0d1b2d,
        },
        r0a1: u288 {
            limb0: 0xb9b5c9b3b8a2b1a34b1c29e,
            limb1: 0x622f4d03a44b5ae686fddfe1,
            limb2: 0x24814b987c467a34,
        },
        r1a0: u288 {
            limb0: 0x152b6020f9c85f3521fd1153,
            limb1: 0xf686d786fee7590e0f5fee63,
            limb2: 0x78ad4a4c775626,
        },
        r1a1: u288 {
            limb0: 0xc8d51f3899bf98bcaad01e77,
            limb1: 0xf8f51cdb7b15094eab1dadb0,
            limb2: 0x852fc346f9eb568,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83a268929bd220dccec06414,
            limb1: 0x65019dfeecc67e236b60f1e7,
            limb2: 0x1652249632c89e83,
        },
        r0a1: u288 {
            limb0: 0x70e72abcb6ce076e1b0d9aeb,
            limb1: 0xb6ffa601f4462c659303ac96,
            limb2: 0x1e12d7c4d282619d,
        },
        r1a0: u288 {
            limb0: 0x5738eb82aff6696c60af2ab1,
            limb1: 0x22577d6035c0b58378fa7946,
            limb2: 0x1d9919b4ba737618,
        },
        r1a1: u288 {
            limb0: 0xf4abdc2a64dc9a4823fe3c51,
            limb1: 0xa53901e75a371da44ccd5804,
            limb2: 0x2f142b253e954050,
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
            limb0: 0xa5ac128c57221d9320b8d6e4,
            limb1: 0x916cb2ee830a3b194c1fd1b1,
            limb2: 0x1d9390ecf1bedb4c,
        },
        r0a1: u288 {
            limb0: 0x756bc2bc1c0059bac78d8b65,
            limb1: 0xd75348d930b04232bf430708,
            limb2: 0x1f39d40f9e8aeafb,
        },
        r1a0: u288 {
            limb0: 0x25d0f38eb3de3829ae2dc8f9,
            limb1: 0x14be891b5cf6d33fab6d845d,
            limb2: 0x1b84ec647dd60161,
        },
        r1a1: u288 {
            limb0: 0xa777be8803faa44affa04071,
            limb1: 0x98c572cec308678b03965269,
            limb2: 0x4c7055e8ae56601,
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
            limb0: 0xa5ed251b699da65e4ddadffb,
            limb1: 0xfd3347c9521ff74e062bcfd4,
            limb2: 0x1578e8ff9b012617,
        },
        r0a1: u288 {
            limb0: 0xae38c0dfbebd553b98ee27bf,
            limb1: 0x5dd4c2b9f89cab4e218992db,
            limb2: 0xe395e9bc7a94270,
        },
        r1a0: u288 {
            limb0: 0x6e0307e9ca84ad9b9e9327d,
            limb1: 0x7d082682c85d72b3c0ca5676,
            limb2: 0x1f60e223456e7116,
        },
        r1a1: u288 {
            limb0: 0xabdbfdfd64d3995345187efd,
            limb1: 0x3dfcfc76bbf2246c36cdc99a,
            limb2: 0x12b2ed8e34885bdf,
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
            limb0: 0x172f286b5912c31b7ce881c2,
            limb1: 0x58ceee256a5216635dddcb56,
            limb2: 0x19072ad53644ac32,
        },
        r0a1: u288 {
            limb0: 0xaa5a488b33c97d53cf411389,
            limb1: 0x364c1e4f3a4d9695cc8d72d,
            limb2: 0x7a07a17d53ef22a,
        },
        r1a0: u288 {
            limb0: 0xf65657c9b1a8478f5dcd8d7,
            limb1: 0xa64631b2f83d3a31ae7482f4,
            limb2: 0x2babc1aded314ae2,
        },
        r1a1: u288 {
            limb0: 0x4deeb61bbaee0d28677b0e0e,
            limb1: 0x32e6589dba7ea2bd69282347,
            limb2: 0x1344b694e513a38b,
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
            limb0: 0x252f98f87c8237644d732e98,
            limb1: 0x8a9e1887389fd523745cf54d,
            limb2: 0x14cba8cb1fae6480,
        },
        r0a1: u288 {
            limb0: 0x71d4cf653b3d5abe9279159a,
            limb1: 0xe48307d9f7aed3de563e6e57,
            limb2: 0x2ebd6cccfd180f60,
        },
        r1a0: u288 {
            limb0: 0xca6b7a67759f9836b410f139,
            limb1: 0xcc10e7300cb128842c3e459,
            limb2: 0xf4557cd205197a9,
        },
        r1a1: u288 {
            limb0: 0xeb9c32b82a3119d1df495ff0,
            limb1: 0x3003ce8bbdb3556533b31f10,
            limb2: 0x21f672b87e9d25b4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xde61f0dedfb31bafe3dfe11e,
            limb1: 0x9beadec9a706975cb4395799,
            limb2: 0x1000f5b825a8d78e,
        },
        r0a1: u288 {
            limb0: 0x24c198145916d155ca58fbeb,
            limb1: 0x9121fab98b3dcece7e694a70,
            limb2: 0x409a51591663ada,
        },
        r1a0: u288 {
            limb0: 0x7597eb4a106758b5937cb233,
            limb1: 0x444d6c9972b34c6474bfb88a,
            limb2: 0x2dac27c067c17494,
        },
        r1a1: u288 {
            limb0: 0x9ca737b4d816be0b5f3ffdea,
            limb1: 0x520c59ca8cb2902929b68d3f,
            limb2: 0x22acd198a7a62557,
        },
    },
];

