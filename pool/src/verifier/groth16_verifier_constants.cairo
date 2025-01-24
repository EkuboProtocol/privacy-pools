use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x902593afed727bcfba82ba7f,
            limb1: 0x768bf18a3cfeb1c6ab80b091,
            limb2: 0xddc20d6088d3c97,
        },
        w1: u288 {
            limb0: 0x4b6203583ba1cf96c270bf9f,
            limb1: 0x97f60aaca7362d48032bda4c,
            limb2: 0x2a99cec4911b1bde,
        },
        w2: u288 {
            limb0: 0x78587365e76dbfc629085b57,
            limb1: 0xb8f2de9e724d5a03cd21e615,
            limb2: 0x26ddac02ca9a252e,
        },
        w3: u288 {
            limb0: 0x5d813b3c061cf09b333682bb,
            limb1: 0xce79dfea6fff587c2b58b65f,
            limb2: 0x1741ae4d2389e382,
        },
        w4: u288 {
            limb0: 0xe63adff019f85b304b91e818,
            limb1: 0x20e9cc87a7d2703d4613a758,
            limb2: 0x17f5cff9f9f36ca,
        },
        w5: u288 {
            limb0: 0x682ba4b3e96844be94567272,
            limb1: 0xc541a1b2e19aa6bb48771ea9,
            limb2: 0x21d5eae90e8310f0,
        },
        w6: u288 {
            limb0: 0x3127294804f6fea7e99e8419,
            limb1: 0xf50374cb3273526c9ead14c7,
            limb2: 0x2f43326d72249427,
        },
        w7: u288 {
            limb0: 0x5696f47b0e4633d0547bb260,
            limb1: 0x16f8d5314c9f2da98e45dbce,
            limb2: 0x780bd6f37d9e34a,
        },
        w8: u288 {
            limb0: 0x17f730f1233c3d1a72409cea,
            limb1: 0xfd94d3e3cfa547ba267b6f17,
            limb2: 0x2d96c690ad8f3571,
        },
        w9: u288 {
            limb0: 0x9f92c3db78b6f8931e453d85,
            limb1: 0xd7b730437c12084adac9a3b,
            limb2: 0x24bbaa21ebd671ca,
        },
        w10: u288 {
            limb0: 0xfe9d92c6ec6ae3365f1eca83,
            limb1: 0xeeaae67362c3f7da8e88e61e,
            limb2: 0x6543caba16faabd,
        },
        w11: u288 {
            limb0: 0xcd58f5545b903df965066f4f,
            limb1: 0x902eaa3afa47705940aecca4,
            limb2: 0xc3c986ef243ca25,
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
            limb0: 0x729a3a2526cec2fec8be8144,
            limb1: 0x39b2faf0cd0f5a14dbfcfd1c,
            limb2: 0xedce7b9b52d20c2,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x2bdfce95c3285c0a941210c,
            limb1: 0xa8e04991568c0df1e9ecfa82,
            limb2: 0x21a8c3b36c4f92a9,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x9d7a8b3e860f6949eaa08509,
            limb1: 0xee9781c633dd3d21bd447384,
            limb2: 0x90c64d4a82d520f,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0xa007b532e8fbca9d7868170e,
            limb1: 0xde66f0ee0a00679ebb5e6a86,
            limb2: 0x12e26b32f2661e47,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x2bab15cb180647868c47ef24,
            limb1: 0x3487a71c030d07cd1ff075b3,
            limb2: 0x1c04993db3916bd,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x9e5d25202f20003f71163573,
            limb1: 0xa2895b01cafea13b2ed91239,
            limb2: 0x23485063ef3b39f7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x1bf187bc280a22a1777300d5,
            limb1: 0x3000d8b6ef7ef5616e16ef20,
            limb2: 0x1028d177c896bab0,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xeadd0877a5f211e4d6e09338,
            limb1: 0x28cb62dd2c895ce8261a71e9,
            limb2: 0xda310b001422e4e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xe77670db7451e8a99da7d05b,
            limb1: 0x1a7bf3b4b0f6f17677373fef,
            limb2: 0xe69df1280522915,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x68e50847e092904064f42688,
            limb1: 0x30ec13aa5a12c800d961747e,
            limb2: 0x22297a414c5e2e4,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xfe07f6fbaca012c1bb7aa713,
            limb1: 0x379158bdbbef50aa00c3e74c,
            limb2: 0x2ec974867938be5f,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xb21f32a8731c544652defb34,
            limb1: 0x6084c66cf0a1e1b03c1be58,
            limb2: 0x15a11fbe1d2d2091,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x21c3e9e974c99e1ce0d59f55,
            limb1: 0xe20e689070b894a7ae094f21,
            limb2: 0x2d6416cbb4428595,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe266c7ea3d9e325e6f976242,
            limb1: 0xeba391a150aa9eb06a1f9df1,
            limb2: 0x1a2d53a1e8d93f82,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x24236ffc3cf140a2e2bf1a84,
            limb1: 0xe4752c50985d41cda5c46756,
            limb2: 0x295d43661952e6f4,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x302404b5a0f0bd158eb00cf5,
            limb1: 0x7650b3c1410f8925ce5339a3,
            limb2: 0xafd6903349dd94,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xc2fcffc6acb537e8f602ac1b,
            limb1: 0x22ac03a69f0d7e0436372e17,
            limb2: 0x2cacf1913c35024b,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xf131e38b01845b82580e74fe,
            limb1: 0x5c5619d85298afdd15bbd4ef,
            limb2: 0x13ef6a100d2cc49e,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x95f71e3c88254e1a8230bcd9,
            limb1: 0xbb0e40d2c08a5809faba6d84,
            limb2: 0xc68636fe1512e9c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xa987b6067d118709497c5645,
            limb1: 0x9bedfc5c532e7295af1ffc41,
            limb2: 0x17714f3d9dc104d3,
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
            limb0: 0x277e0834fd39012fd5e33377,
            limb1: 0xba8ac07cb7a10f5729417bc2,
            limb2: 0x6f095eb53c1cd5e,
        },
        r0a1: u288 {
            limb0: 0xd67f15f98c93bd1f6968a61e,
            limb1: 0x59c41b228d797f73459e7ab9,
            limb2: 0x26018f116ab30636,
        },
        r1a0: u288 {
            limb0: 0x72871ffce85ce590477d2e0e,
            limb1: 0x8c98c9208fa7c36ce52266fc,
            limb2: 0xfd4a842fa24c26c,
        },
        r1a1: u288 {
            limb0: 0xe752de420318e61bcf8192b5,
            limb1: 0x5a415923731128b11c63d32b,
            limb2: 0x207845915db7cbc8,
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
            limb0: 0x40f3c2583ee78ae70299c9d0,
            limb1: 0xfdc58539c9e049066e3feecf,
            limb2: 0x2973b8878d6fd2ca,
        },
        r0a1: u288 {
            limb0: 0x91f2b493af8ccef76f145729,
            limb1: 0x5e8c2a93f407d8ea51e2efd7,
            limb2: 0xa62bf61767e99f3,
        },
        r1a0: u288 {
            limb0: 0xf5eaaa9053c3a68690ffcf39,
            limb1: 0x2bb77c95f1d994f0b25f0394,
            limb2: 0x208fa62fe70cddbd,
        },
        r1a1: u288 {
            limb0: 0x811eec4b3907a5fb08fb6a92,
            limb1: 0x5e0eec930e702fac7b1d9765,
            limb2: 0xfec08e18379d461,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd70f6c225280fa5b3f2e0528,
            limb1: 0x3aa2372c8c94237e0a20f91,
            limb2: 0x798f2d3b543fc47,
        },
        r0a1: u288 {
            limb0: 0x49b0786bf3e6a3ad3b548bc7,
            limb1: 0x91addea68273399f90d876fc,
            limb2: 0x155cb8f820faf393,
        },
        r1a0: u288 {
            limb0: 0xd7d32b68f99fc58cf48b554d,
            limb1: 0xd763209331175ab3ce50761e,
            limb2: 0x13fead0ca217d052,
        },
        r1a1: u288 {
            limb0: 0x8498a03cc9103fd71373d8c7,
            limb1: 0xec007ff7e97cdacd137d0393,
            limb2: 0x243c28eb68f4e658,
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
            limb0: 0xcdf883b13f487b783b24a1dd,
            limb1: 0xa894ab6cae01eaade07462bc,
            limb2: 0x12be376ede113904,
        },
        r0a1: u288 {
            limb0: 0x5bf9944fac10857e0791f3c5,
            limb1: 0xa821692f26d793781a37bbf3,
            limb2: 0x2e09bef1abfaa2b1,
        },
        r1a0: u288 {
            limb0: 0xd92d74c99f2923e27a4c1d97,
            limb1: 0x12dc9f70da7bd7c22adf4006,
            limb2: 0x28e899acfbd42c4a,
        },
        r1a1: u288 {
            limb0: 0xc5339b59458928315a4a5831,
            limb1: 0x3bba9f90ee061ae5fd592c7a,
            limb2: 0x9d2934517372bab,
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
            limb0: 0x9f09a72c292e353b0a9cf481,
            limb1: 0x28cc602e78c3e8a98c84058a,
            limb2: 0x762436c2310e619,
        },
        r0a1: u288 {
            limb0: 0x3f4c4eacb8f1016bfca05c30,
            limb1: 0x1529bb6a3df3d72103eb09c1,
            limb2: 0x1c0e6b3630a9d6fa,
        },
        r1a0: u288 {
            limb0: 0x7dbadd912ca9b2ac0d9379e8,
            limb1: 0xdaee28b3290e645f8a089c47,
            limb2: 0x2182895fd9478ea4,
        },
        r1a1: u288 {
            limb0: 0xb034f090c6591fb4ca92547d,
            limb1: 0xbca214920f2dbc886583bd03,
            limb2: 0x16fc5cc71e729b3b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7d1045d93ec578aa655f1b47,
            limb1: 0x898f111f5f7019fc3316a4b1,
            limb2: 0x9a07969ad528972,
        },
        r0a1: u288 {
            limb0: 0x367da684942445e2595ce439,
            limb1: 0xa1ed241f5ca686dbfe88ab50,
            limb2: 0xb8fe926c6834f0,
        },
        r1a0: u288 {
            limb0: 0x6857585d675037cd38bfbe19,
            limb1: 0xd42dc5580532fdb27a138d66,
            limb2: 0x1d317fbab0c93336,
        },
        r1a1: u288 {
            limb0: 0x783db3bd4c7591b620606598,
            limb1: 0x2a14c310ceaa5bf49e831449,
            limb2: 0x3c6a9fdc2f28874,
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
            limb0: 0xcf04c345c24898d0a419a437,
            limb1: 0xdcd9e9f62d6ed20793692f0d,
            limb2: 0x2fbd45e8aff35fab,
        },
        r0a1: u288 {
            limb0: 0xc3eae61e4d3d61aca3fea1dc,
            limb1: 0x54120b0fb2c4501d226a77e7,
            limb2: 0x3df74da57e90a5a,
        },
        r1a0: u288 {
            limb0: 0xabcf82845084d070d3590841,
            limb1: 0xa80031656bd1fc12d4425618,
            limb2: 0x1f0a00292b934f9,
        },
        r1a1: u288 {
            limb0: 0x72c16c3d1dec46cfe1625bb8,
            limb1: 0xbb22ae9637e750c4e84c071a,
            limb2: 0x86906f0438dde01,
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
            limb0: 0x6d00d14a2531040a0bd9d438,
            limb1: 0x8cd73b1c6e3bc26eaed78b1b,
            limb2: 0x2df81e9d277bdb53,
        },
        r0a1: u288 {
            limb0: 0x15e127565d899bc6b873c52f,
            limb1: 0x303440938864824735843ee0,
            limb2: 0x89eadae25d01c73,
        },
        r1a0: u288 {
            limb0: 0xfcd2410b12e321ef1b38d700,
            limb1: 0xdabe1bb5974448097074a647,
            limb2: 0x12c3637d80c60e71,
        },
        r1a1: u288 {
            limb0: 0x1b02209eb71fbef035455c4,
            limb1: 0x2872fe0a6697cb261a462ae9,
            limb2: 0x542091d4dec2c49,
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
            limb0: 0x55a2065a5fb64ec2c26d68f3,
            limb1: 0x4c8a9aad3b9b9e373b54bff5,
            limb2: 0x20bc8c9f439b324e,
        },
        r0a1: u288 {
            limb0: 0x37b5a2d8b5313fb9f9dcc7b,
            limb1: 0x8b8a581174354c3ae2c14b29,
            limb2: 0x206eb12ca31139f6,
        },
        r1a0: u288 {
            limb0: 0xc922ac2d3ccccdaf67acfe0c,
            limb1: 0x3be3def93e7d67f5f99d3148,
            limb2: 0x2007647b8e70d773,
        },
        r1a1: u288 {
            limb0: 0x4eea68e648b9edd354970769,
            limb1: 0x75b58996f9d42140dd30e05b,
            limb2: 0x244d2ca61df0a070,
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
            limb0: 0x817cd59e0bba0da3dddfc082,
            limb1: 0xea3242e0934693bc51d8f79e,
            limb2: 0x15404477fa1d5e67,
        },
        r0a1: u288 {
            limb0: 0x19312abc1248adae6dc9f5d1,
            limb1: 0x15c18b315bd7100d0ad669aa,
            limb2: 0x168cedd723f34a31,
        },
        r1a0: u288 {
            limb0: 0xbd1dc2cee73a61af5ae7ef2a,
            limb1: 0x669f4e76f2a8739c0f2e0981,
            limb2: 0xfa2d749b19f4dc4,
        },
        r1a1: u288 {
            limb0: 0x60b8ccc564d9c72ad011704a,
            limb1: 0xc4b83a8ea021aa9b9256393f,
            limb2: 0x1fb3e50708f0d1e5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf32de55102c4fc2c628a0da6,
            limb1: 0x4e208a3082f98bedc49c1733,
            limb2: 0x90d9441b3381298,
        },
        r0a1: u288 {
            limb0: 0x8ce5204c275e9272b716635b,
            limb1: 0x982944d6e7d30cd6292ee450,
            limb2: 0x1f46b0f0942d9f0a,
        },
        r1a0: u288 {
            limb0: 0xc2c1112a27fd6fcd1fad9084,
            limb1: 0x1d0d8619397bea746bc86bc9,
            limb2: 0xfce28a79088f8e,
        },
        r1a1: u288 {
            limb0: 0x4145485a8b70bf7cd0893750,
            limb1: 0x8a859487610112f792a858ef,
            limb2: 0x9756390043fc563,
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
            limb0: 0x20c044fbee3602fa20f83e10,
            limb1: 0x9b4449fc7087d50a6edea9f8,
            limb2: 0x17828e33e9398395,
        },
        r0a1: u288 {
            limb0: 0xdb67046da9f8d18fca122ae,
            limb1: 0x1bd44bd72beb60544cb6680c,
            limb2: 0xfeb996ba46c3088,
        },
        r1a0: u288 {
            limb0: 0xd5ab5e6ed51b9dbeb63b91c7,
            limb1: 0xe6d7985fb95caf1c6d29919d,
            limb2: 0x1a0497d3418fbd64,
        },
        r1a1: u288 {
            limb0: 0xb7fee643c5c6ad013ddc3d5c,
            limb1: 0xa01e0725c7ea0c9e9c42fb36,
            limb2: 0xab1b623c21c8e22,
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
            limb0: 0x51a5f9de7fde40504ea052fc,
            limb1: 0x9817a203b524143015a8fb26,
            limb2: 0x1d29890b5d418911,
        },
        r0a1: u288 {
            limb0: 0x12346be5d5e5f5a323ba9f2a,
            limb1: 0x58c78c10ff09e481f1e92cd0,
            limb2: 0x86ac4375a6fde63,
        },
        r1a0: u288 {
            limb0: 0x9965ccc40e1e0536accc2e81,
            limb1: 0xd47578a1efe25cdde329f965,
            limb2: 0x1d3e216770218cd2,
        },
        r1a1: u288 {
            limb0: 0xc5282657ab33550fa4bf640c,
            limb1: 0xe23a33da01b5f0844e66b8d1,
            limb2: 0x1d472d0102ccfe9f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc8625402ee32594639b4a399,
            limb1: 0xc90eda3c6c0015516af2912d,
            limb2: 0x2099ffca29119ed0,
        },
        r0a1: u288 {
            limb0: 0xb8c7fab4f897695516b072e8,
            limb1: 0x3062cfe5a4eefd7d90396738,
            limb2: 0x1bfa6310a19f5301,
        },
        r1a0: u288 {
            limb0: 0x438d566fe3ed0922be9f0826,
            limb1: 0x20c59c6ab4eb8cdc309b611f,
            limb2: 0x1f11142281c79cb0,
        },
        r1a1: u288 {
            limb0: 0x3c1d488554042689d5322e9,
            limb1: 0xc394e4d7768cf398c60a0e9b,
            limb2: 0x24fff8e961f6a112,
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
            limb0: 0x981c1afd45c6ead7a5d013fe,
            limb1: 0xf5e18ccd83613750703c1c5f,
            limb2: 0x11c81839cadfc756,
        },
        r0a1: u288 {
            limb0: 0x80b6d60ea3db874d8663c575,
            limb1: 0x668c1f1a02e52a3a87126921,
            limb2: 0x1ef68737a751d9a9,
        },
        r1a0: u288 {
            limb0: 0xfe91e013b9fbfcbfd7482cfa,
            limb1: 0x615bb87cda6f44b2b9d2aba1,
            limb2: 0x2bbc993e28a7e02a,
        },
        r1a1: u288 {
            limb0: 0xcd3dc9f65553c25be5881644,
            limb1: 0x726bd17fbe906177ac6c30b7,
            limb2: 0x29c1e8638d959431,
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
            limb0: 0x9dea1af2d0c32c31cc9ba48f,
            limb1: 0x9a6c9a3e7869a08912d3bb8,
            limb2: 0x1059a4cd0b4fcdfb,
        },
        r0a1: u288 {
            limb0: 0x65b235053b527006e0aa1521,
            limb1: 0xdc979459b89556c433890663,
            limb2: 0x1082adf2318a27a3,
        },
        r1a0: u288 {
            limb0: 0x319ad341e503fc7cea41fdb8,
            limb1: 0xbdf0659f5e216f556f69f898,
            limb2: 0x247ab10e8a5f636b,
        },
        r1a1: u288 {
            limb0: 0xe67e0b1d88cd51241ee4fb85,
            limb1: 0x9138306933f3dd7089ea5cd7,
            limb2: 0x7b2117c82540896,
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
            limb0: 0x8bbd831d0971bb6dcc68ba97,
            limb1: 0x985f270718d78146ae8ada44,
            limb2: 0x21ea6d5957e6e1ba,
        },
        r0a1: u288 {
            limb0: 0x9f504d6a8dd727e2a4140c8f,
            limb1: 0xea2187dde3be993b3f695503,
            limb2: 0x1c0eac4ec2158250,
        },
        r1a0: u288 {
            limb0: 0xe49a119d380999a09df83eb2,
            limb1: 0x7a7634b2cc6af9034bb0d3ea,
            limb2: 0x278b3489160edd0a,
        },
        r1a1: u288 {
            limb0: 0xd3b51c9f17091f9ef38fac95,
            limb1: 0x593cb241ff0858bcca0198d2,
            limb2: 0x24c97bd12ec300d5,
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
            limb0: 0x90beaea7882b9d703d05e56a,
            limb1: 0x8d8146c63d71be13d87d03c,
            limb2: 0x1ba679ae071deefe,
        },
        r0a1: u288 {
            limb0: 0xbbbf23b87d140f2d00201941,
            limb1: 0xfbf162603822d055a33c38b5,
            limb2: 0x1e19ca8f807a5e40,
        },
        r1a0: u288 {
            limb0: 0xde1ebf4ebaf40603b03646d4,
            limb1: 0x23dde9fc2b7dd0203c495a95,
            limb2: 0x117c67027c05e0bd,
        },
        r1a1: u288 {
            limb0: 0xc5d1e11ca3bb85468821de92,
            limb1: 0xb1c5eb087f2b29c564f1d679,
            limb2: 0xb161a73ffc1fe18,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3e75d84a7595d9948721c0c1,
            limb1: 0x372c3998cfcc79341cccc9ef,
            limb2: 0x1f24de4ac7e34918,
        },
        r0a1: u288 {
            limb0: 0x41d76936334d5da863176fd2,
            limb1: 0x79e86cda6d027be43fdbf8f7,
            limb2: 0x16e2e1261c72fc1d,
        },
        r1a0: u288 {
            limb0: 0x65a9c31af14521b264f1675f,
            limb1: 0x79f7744f1ff212846a1e7321,
            limb2: 0x1dd25832991eaf3a,
        },
        r1a1: u288 {
            limb0: 0xe637f52d0b9208d5b035a710,
            limb1: 0x53c6ab6df99b8d04b49ccb10,
            limb2: 0x1728fdc68475b878,
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
            limb0: 0x8feccf3bd6692b5c5e7a30ef,
            limb1: 0xca03600da265e99a37410040,
            limb2: 0x1bc664deaf330bc5,
        },
        r0a1: u288 {
            limb0: 0xe920e1447d28fa6881bc4ea4,
            limb1: 0x6440db65022c3933bd620212,
            limb2: 0xeb07ca9c51a8eb,
        },
        r1a0: u288 {
            limb0: 0x88efb56ab2cfd0c22f76dbf0,
            limb1: 0x552d8f19658f7edbc70d9524,
            limb2: 0x5c4ee931a0d1c35,
        },
        r1a1: u288 {
            limb0: 0x418988aaa5a9231adc14e1a3,
            limb1: 0xb0dbd07ce183672ba935d5b3,
            limb2: 0x1fe6f342055aed6f,
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
            limb0: 0x8d4c616241426f3203177dca,
            limb1: 0xf95663091f7b58661838c713,
            limb2: 0x1f94ea64045d0858,
        },
        r0a1: u288 {
            limb0: 0x670354f4f7cf95465a5b533b,
            limb1: 0xca056be7f21fb483457a592f,
            limb2: 0x2273f8ecdfe2ea60,
        },
        r1a0: u288 {
            limb0: 0x1d625a1bddf065881ecd5f44,
            limb1: 0x16bc50453c7a0c8d58907d25,
            limb2: 0x198901da7867f67d,
        },
        r1a1: u288 {
            limb0: 0xf7979ea7398c8393027579c4,
            limb1: 0xa9ac291ac285e07f55427c21,
            limb2: 0x1cb6c46eaa2540e,
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
            limb0: 0xc660fa0fde85f0244274015f,
            limb1: 0xc51b16332f237d2544e435dd,
            limb2: 0xf1926d11d9e5406,
        },
        r0a1: u288 {
            limb0: 0x90ca4277ebc62ef3a19dbcc4,
            limb1: 0xe445fe946f86b58d84552942,
            limb2: 0x2652ae8b7b76f118,
        },
        r1a0: u288 {
            limb0: 0x2d4417fec56e84bd31193515,
            limb1: 0xf76c9121682092cd3081bc82,
            limb2: 0x1b8dff0d842f275,
        },
        r1a1: u288 {
            limb0: 0xa571b172d4f221e93d9ff17a,
            limb1: 0xb626cf965d99279294151120,
            limb2: 0x1e6d316a83639a3e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x911c57548d82cc1f7811d54c,
            limb1: 0x7ca201da323500bba6afde45,
            limb2: 0x2520b58938c584e0,
        },
        r0a1: u288 {
            limb0: 0xe28059fe88e3060c84dd2fe3,
            limb1: 0xc8511418d3d244ea699f80d4,
            limb2: 0x192a9a3a3f044efa,
        },
        r1a0: u288 {
            limb0: 0xfaa709714e431d2013555603,
            limb1: 0xb5c19053644521981abb104b,
            limb2: 0x14e23340db2e8038,
        },
        r1a1: u288 {
            limb0: 0xde10c25bba4e91cf544e1823,
            limb1: 0x5c6a66cd9c965546f11354db,
            limb2: 0x1eb4fb05c46038dc,
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
            limb0: 0x98fda082887135fb79f871ef,
            limb1: 0xf9c7d8ffbf21c935309cf01,
            limb2: 0x9eb2417743f6984,
        },
        r0a1: u288 {
            limb0: 0x666aa80b76f1faf23bdec023,
            limb1: 0x7841523b8e903b2159c118c9,
            limb2: 0x1ebac30253435d97,
        },
        r1a0: u288 {
            limb0: 0x93c53b22c01ad2d5267d233f,
            limb1: 0x10b80de138df38645acdfc5e,
            limb2: 0x402d0c45e9d18cf,
        },
        r1a1: u288 {
            limb0: 0xb8c1349c0d5aca6df268beaf,
            limb1: 0x62dea9de33e2f3f9c35d1f2b,
            limb2: 0xf842b9dfd3c5cd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8ef67b70c21ac1920df9f271,
            limb1: 0x6de86c7751f3af84a19d489b,
            limb2: 0x29ff5df8c2bab215,
        },
        r0a1: u288 {
            limb0: 0x5bd8203dd63a7ee2edd4730c,
            limb1: 0x4441711b1b1bcc5c2cd08156,
            limb2: 0x2b1441431607eaab,
        },
        r1a0: u288 {
            limb0: 0xf601c293ad2481a0d1001114,
            limb1: 0xb2d598a51183fbd8648d7ff1,
            limb2: 0x258feffee6ee41f0,
        },
        r1a1: u288 {
            limb0: 0x20d13a7485b123c5936055f6,
            limb1: 0x16814f66803fb6c062408ab1,
            limb2: 0x20b1cdcc2e560ece,
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
            limb0: 0xdaf8176e1bfbd87499ffa0e5,
            limb1: 0xb65f0b14ff429dfec0ce2201,
            limb2: 0x1440760bfad1ffb,
        },
        r0a1: u288 {
            limb0: 0xb83f081c32f0258e79e8c730,
            limb1: 0xfa6de3664f4825571a2b3c46,
            limb2: 0x2ac55709aecdd141,
        },
        r1a0: u288 {
            limb0: 0x2fee1eab90e3cd18308cb6f8,
            limb1: 0xc0ae09463d26787296e57f43,
            limb2: 0x1b9deea06a868e93,
        },
        r1a1: u288 {
            limb0: 0x9b679fb409c688adb04734e9,
            limb1: 0xa45ef3c2c3c37fb6a5ccb9ab,
            limb2: 0x1f3c419e008fb607,
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
            limb0: 0x1404832942727eb1501acbc1,
            limb1: 0x7234e9dce26fcfef6edc280e,
            limb2: 0x2a19e7bc6e28a8c,
        },
        r0a1: u288 {
            limb0: 0xd8ea7eef58badc8e11eca01b,
            limb1: 0x41aacda106c6a4ed88e3b79e,
            limb2: 0x27652854d569b6da,
        },
        r1a0: u288 {
            limb0: 0x9a8f4d2ec3c5c2ec6920d881,
            limb1: 0x2334f12d941a6d27e85b2359,
            limb2: 0x3e49b3a959cf733,
        },
        r1a1: u288 {
            limb0: 0xb6003c5d3cd4ae0d39349b7e,
            limb1: 0xee97219616a9df59740fa917,
            limb2: 0x285174c4a00b666b,
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
            limb0: 0x6c209834ef6296e1f14a0d26,
            limb1: 0x9fb6d6d5886761a75d70103e,
            limb2: 0x948ade3565d7b3d,
        },
        r0a1: u288 {
            limb0: 0xc9da4c48a554c4f4231f6a6b,
            limb1: 0x4fe4baff8f7d1a86da312473,
            limb2: 0x1ba9a82a90c6ba6,
        },
        r1a0: u288 {
            limb0: 0x5112f12e726de3995a0aff30,
            limb1: 0xe56276807bcd83610ee4efd8,
            limb2: 0x3f8438282902a44,
        },
        r1a1: u288 {
            limb0: 0x552b839d0e186484b319ea77,
            limb1: 0x9babdaee5a0a99cc987946f8,
            limb2: 0x2bd87c7cb8d909c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xee79b049a10cde5511b399c0,
            limb1: 0xfcb7667736b96a7ecb9f159f,
            limb2: 0x2af7239f3098d3d9,
        },
        r0a1: u288 {
            limb0: 0xd967a882d17543d692277fdf,
            limb1: 0x1a2caf5dcf782251a1f6282d,
            limb2: 0x982fe9180441700,
        },
        r1a0: u288 {
            limb0: 0xd4e6b1b84ee05a98a68766bc,
            limb1: 0xb9b5b95a8f906cf82e14195e,
            limb2: 0xcc1d6e862ef3d3c,
        },
        r1a1: u288 {
            limb0: 0x77e1a5d25cd9cebeca689729,
            limb1: 0xcd527a7cfbcff3a62a321011,
            limb2: 0x2b228940ec3a1a5f,
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
            limb0: 0xe5218754378683a18375216f,
            limb1: 0x659dd9f6ad5d893af3e521d8,
            limb2: 0x1460295ec87ab9b7,
        },
        r0a1: u288 {
            limb0: 0xa04c2583202e105c885ce179,
            limb1: 0x98329b7a204b9b7c30cd60e5,
            limb2: 0x2990a85a3ccde43d,
        },
        r1a0: u288 {
            limb0: 0x2b7ecea74446159ab09fb77a,
            limb1: 0x872f91c12d6b3b43e0abb9f5,
            limb2: 0x115c997cfd43f065,
        },
        r1a1: u288 {
            limb0: 0xa2752c645edbcff530d149a2,
            limb1: 0xdd313baf513cf9943745f589,
            limb2: 0x110aabd451ffb834,
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
            limb0: 0x559a0e18fb5970a4f9b08316,
            limb1: 0x4b6c71c28b261e1dfaab849c,
            limb2: 0x1e337dc5c3d00460,
        },
        r0a1: u288 {
            limb0: 0xd6f701a0a0c65157d14d9e0e,
            limb1: 0x71910417a874c014758571c3,
            limb2: 0xcdcd1d6c29c4525,
        },
        r1a0: u288 {
            limb0: 0xe0a1e3e7be9591e71c88,
            limb1: 0xc00bc0f367624d856cb3701c,
            limb2: 0x1cbab31f03c749c5,
        },
        r1a1: u288 {
            limb0: 0xdf1443742a81ed03bccd1711,
            limb1: 0xdcb5e6ff096189d6f92456a,
            limb2: 0x2eaa756c367af166,
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
            limb0: 0x6d883a29a9cb646152ba2e6a,
            limb1: 0x799288c6a2d40660d46daa57,
            limb2: 0xb7f4ed258dff154,
        },
        r0a1: u288 {
            limb0: 0x2fd008d4fe2340a9d4b9daae,
            limb1: 0x9ad02fd3d5c5914858f2ccf4,
            limb2: 0x1fac7dd729754c35,
        },
        r1a0: u288 {
            limb0: 0x631e7406c3ad61294fae611e,
            limb1: 0xcf7b9f227a31fcabdb67572,
            limb2: 0x2e506b69d09b7008,
        },
        r1a1: u288 {
            limb0: 0xde4f0a7a7677a71ac0e18f2,
            limb1: 0x629e6e3e5fac617c1d17e867,
            limb2: 0x18be7e268d9b5b17,
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
            limb0: 0x338bfd16cab04d4f2e6bd625,
            limb1: 0xb88f7b63c30c095eb5e12b35,
            limb2: 0xf60bc5f217c6c69,
        },
        r0a1: u288 {
            limb0: 0x8ce19fa301788a5cb4839c4b,
            limb1: 0x7437e8653698b09466144b2e,
            limb2: 0x200e747d2ecab3da,
        },
        r1a0: u288 {
            limb0: 0xfd5526b442cb380220c0e313,
            limb1: 0xabf79314b41f53e53e94e924,
            limb2: 0x17c83963d3dcba73,
        },
        r1a1: u288 {
            limb0: 0x5f1e37f95322ed4f25746f04,
            limb1: 0x58c0c0712f9f2dcb5d83677f,
            limb2: 0x1ebd75f087d79001,
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
            limb0: 0x1db4a4daf4263cf3abf1b6b4,
            limb1: 0x6181358a66fd43fe0dce041d,
            limb2: 0x976134edfd73000,
        },
        r0a1: u288 {
            limb0: 0xf360c16c56163b17cdda974a,
            limb1: 0xbb3631ff05f5bf3a4090aa93,
            limb2: 0x92a876b8ffa531f,
        },
        r1a0: u288 {
            limb0: 0x3aea26947bd6b8f23f57160e,
            limb1: 0xd90f509d18f43119d5cefc45,
            limb2: 0x1b2588d7de06138a,
        },
        r1a1: u288 {
            limb0: 0x663c5cb0e1e3a9bde11034f7,
            limb1: 0x56a9a072fa42ea668ddc6f75,
            limb2: 0x15c0e76bfcc2336b,
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
            limb0: 0x8d91abe915a1ddfd5e3c1036,
            limb1: 0xa7c62a8cb420aae80fa0eee8,
            limb2: 0x470af3423bfc3ef,
        },
        r0a1: u288 {
            limb0: 0xf33b62959e48afdd6e43418,
            limb1: 0x9b28f18eb0967cd86bcaa3e0,
            limb2: 0x6587a3db573c20e,
        },
        r1a0: u288 {
            limb0: 0x6001d572e443636347bb3eb0,
            limb1: 0xf721b8b0752655ffddce6925,
            limb2: 0x15551d2c3c04c67c,
        },
        r1a1: u288 {
            limb0: 0x943de12d9fb636fe251ef9fd,
            limb1: 0xe4e5e541992dd993707ee386,
            limb2: 0x1f2b1a9d2daba2fa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcdb9a37847bda96234801873,
            limb1: 0x2ade5e742eb12ff9579bdf1a,
            limb2: 0x28ac61f33e6fab43,
        },
        r0a1: u288 {
            limb0: 0x8110ad111ae88fc029b9cced,
            limb1: 0xcc4e0ebb46f3d88f3771fcc,
            limb2: 0x1287c5c6f85e8b7a,
        },
        r1a0: u288 {
            limb0: 0x6c1eedec25b608a99ee45bb1,
            limb1: 0x63568f437a7a6ce5d65949cc,
            limb2: 0x2ece0d1c67b5e8e3,
        },
        r1a1: u288 {
            limb0: 0x57e2316d6b28382da2af8582,
            limb1: 0xa5cdc7bb3fdf6d0baabc7969,
            limb2: 0x23b58e671767212c,
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
            limb0: 0x62e0c1eea3f8ba66a10c127,
            limb1: 0xa5b38daf6968e86c5d0dd142,
            limb2: 0x14341d7610524924,
        },
        r0a1: u288 {
            limb0: 0xa1a8f33fe02f27817eab768b,
            limb1: 0x8154098eb1cdc6f629d6ba09,
            limb2: 0xa5292c424201698,
        },
        r1a0: u288 {
            limb0: 0x5ff462b2874fb1059d72b1c7,
            limb1: 0xa1d25267d95438c2920cf39d,
            limb2: 0x50d2eccb5d68867,
        },
        r1a1: u288 {
            limb0: 0x43cbab35c975acc044e8b204,
            limb1: 0x5d6d5a2f08c8291790125cd8,
            limb2: 0x278aeba027df6d8,
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
            limb0: 0xf7de29807ee8d575c033217,
            limb1: 0x20921139e2ad4642c573935a,
            limb2: 0x84216206a6c918,
        },
        r0a1: u288 {
            limb0: 0x82ca17205909021a59070654,
            limb1: 0x50c60458de2c2a50c0383328,
            limb2: 0x12d0905d120f7293,
        },
        r1a0: u288 {
            limb0: 0x24669f9a657a95b1582c9bbc,
            limb1: 0xadb8f10857679655a066c68a,
            limb2: 0x2cab9473715f05b7,
        },
        r1a1: u288 {
            limb0: 0x30ccf07edfbecff36d786f86,
            limb1: 0x2d9adccacc3e4314362099f3,
            limb2: 0x2f411e1b7ceb1ee6,
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
            limb0: 0xe53e772f1413461d1d364034,
            limb1: 0xaac901dc9109287d5bb2b140,
            limb2: 0xbfa86bbbdf163ed,
        },
        r0a1: u288 {
            limb0: 0x7edeaa863b6f53aa36d35e0b,
            limb1: 0x6c762d4b8cb982135e87b38c,
            limb2: 0xeba1bc988d7509b,
        },
        r1a0: u288 {
            limb0: 0x2a241e200580f0089402bc36,
            limb1: 0x627a2fb5f9e99fd263a96eb2,
            limb2: 0x23088f73e0bfb70b,
        },
        r1a1: u288 {
            limb0: 0x2582465675e2000bb65dfefa,
            limb1: 0x63b0aa1679c3e4ad69444c72,
            limb2: 0x2f8801cf384eae80,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb6912d10fd1ee641d3c6fc3b,
            limb1: 0xe02d5fcaab58767d9415a7c6,
            limb2: 0xf163e96a4308fbe,
        },
        r0a1: u288 {
            limb0: 0x6ad8a94ea6e8ceb3b82ea3bf,
            limb1: 0xcdfd1155458fcd2e80a6207,
            limb2: 0x5719811a7b7997b,
        },
        r1a0: u288 {
            limb0: 0xd3e65f58c43425160225df7b,
            limb1: 0x42d69d77dcbc1cb39e297fee,
            limb2: 0x12e6963c505d2ddb,
        },
        r1a1: u288 {
            limb0: 0xa1e94600f3177cb0377708e7,
            limb1: 0x896d516d4277154d16f0a33b,
            limb2: 0x22d2c7cf2ef0dc4b,
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
            limb0: 0x264c92752d19158de19ee714,
            limb1: 0xd4d66f361cc15aa906add964,
            limb2: 0x2e01c53c2acb49ba,
        },
        r0a1: u288 {
            limb0: 0x23699b1e75baadb4e79ed5b9,
            limb1: 0xc0aee9c7d4d8b65d4b2362b3,
            limb2: 0x2a63bd08828a008e,
        },
        r1a0: u288 {
            limb0: 0x90859f8d34a8db9f508ec8e7,
            limb1: 0x8de202a69e9a42d2a03ba2ca,
            limb2: 0x11df8c462e899b07,
        },
        r1a1: u288 {
            limb0: 0x69f19edd0f1e674081a59e43,
            limb1: 0xce8ef1b9180e2df27f948659,
            limb2: 0x29c713e44beaef17,
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
            limb0: 0xa7bbfc304ce55f9ff4ca5eea,
            limb1: 0x48f6a31907638f2895b00cec,
            limb2: 0x2473208d863952e9,
        },
        r0a1: u288 {
            limb0: 0x26961e61ad377633c2f4eecb,
            limb1: 0xf2e4d14962130d45aff8c29f,
            limb2: 0xe01f0eebac134fe,
        },
        r1a0: u288 {
            limb0: 0x863b3b8b0ddb4027ca217adb,
            limb1: 0x1f423ab06d31e335939675e4,
            limb2: 0xe24fe3376c895c9,
        },
        r1a1: u288 {
            limb0: 0x4ed905b459582a9a54cbc435,
            limb1: 0xabb2eea3c751e763fc5736c6,
            limb2: 0xb8f24f179b7ad1c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9aed302d5249ab6d3ad6c6be,
            limb1: 0xc5968e7940730fe6472eaea4,
            limb2: 0x14e0cda2a7225193,
        },
        r0a1: u288 {
            limb0: 0x5ab654c327b68c422ae9adcb,
            limb1: 0xaca0d4624ea11160a74386f7,
            limb2: 0x1f5d249819974467,
        },
        r1a0: u288 {
            limb0: 0xdb8678527bec22e1ff2c7c8e,
            limb1: 0xdafc9aa408d43eea9e5b64b9,
            limb2: 0xc8b27956916c535,
        },
        r1a1: u288 {
            limb0: 0x19e8d811aff4863ef3fe8053,
            limb1: 0x3893acd637ac47074aaa8506,
            limb2: 0x28237061968ed8d2,
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
            limb0: 0x9f1d05a456722e5112bc07e1,
            limb1: 0x15989ee523d916981ce559e8,
            limb2: 0x1d4dbaaec37ef5c8,
        },
        r0a1: u288 {
            limb0: 0x9bde67ee8801117c66590b11,
            limb1: 0x25e43452d1f67ce8d8eb032c,
            limb2: 0x2f10f8e086e63a85,
        },
        r1a0: u288 {
            limb0: 0x10f466ebf23f86b198e6a00,
            limb1: 0x6c28f82508b38e85421f930b,
            limb2: 0x8dd0c2f34bb7b38,
        },
        r1a1: u288 {
            limb0: 0x4233d262b8b30aca1afe015a,
            limb1: 0x678398fd9b556780280d2ad2,
            limb2: 0x23de0f941cc040db,
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
            limb0: 0x4fda8e90ef5179e786e599c6,
            limb1: 0x2db4c618ba548be098955ee3,
            limb2: 0x2e1f73a533fd71db,
        },
        r0a1: u288 {
            limb0: 0x2fa8f0f026a1aec548243650,
            limb1: 0x5cbfc72df9ab4c7e9ffa3618,
            limb2: 0x13eedbcb50ba4880,
        },
        r1a0: u288 {
            limb0: 0x3d6323831c9171fff55b2294,
            limb1: 0xe2e0a7a389664470c24a8449,
            limb2: 0x2c043cfb3535558f,
        },
        r1a1: u288 {
            limb0: 0xe2a3ca3260c1501d857fab1d,
            limb1: 0x9771bc9cebb831b0294c5cee,
            limb2: 0xd83b3ca81d5b56d,
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
            limb0: 0xf47b35b525c0b6fdb06b95dc,
            limb1: 0x1f3bdb362a4cb673c25e7929,
            limb2: 0x30380edf527f6d99,
        },
        r0a1: u288 {
            limb0: 0x38348f6afd5152b1d2ee66e3,
            limb1: 0xad7c5b4f5fb04cfd2063aeba,
            limb2: 0x1a1d348d9a6505e6,
        },
        r1a0: u288 {
            limb0: 0xca41fa810780a9a7c52a61dc,
            limb1: 0x623134142d1d14481467929a,
            limb2: 0x1bc07ec0d06ce63a,
        },
        r1a1: u288 {
            limb0: 0x4006c1e3974c1c0cb8425836,
            limb1: 0xa1d4449a81878fe153ed7459,
            limb2: 0x215aa911508f0bec,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x13ea74b97cfdd8fe247c7bd9,
            limb1: 0xa6bdc5450d2c6fb1f0d45d4a,
            limb2: 0x1eb720c559f38fa7,
        },
        r0a1: u288 {
            limb0: 0x1a99ca7f412a7c17b7cfbe1b,
            limb1: 0xdb7aab7bf555fb6ce882cf39,
            limb2: 0x1bfd694ed81199b9,
        },
        r1a0: u288 {
            limb0: 0xde40b46ef1e74243617af90a,
            limb1: 0xa8ffd35f7dd967e2c6ed5d4c,
            limb2: 0x22ab96d81433fb01,
        },
        r1a1: u288 {
            limb0: 0x8c9fa4aeb1fb7868217b8ff9,
            limb1: 0x9088427e4022e8b515917d1f,
            limb2: 0x137bfb9fcd33926a,
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
            limb0: 0x2fba74c557dd342a8706eb0c,
            limb1: 0xde9e8ea3badbe64585662b5d,
            limb2: 0x1da0bc415ac4faaa,
        },
        r0a1: u288 {
            limb0: 0x51f4cf29b342d13d924b4b62,
            limb1: 0x6f1196b3bfd2ff5ed086f80b,
            limb2: 0x2479c28125081a32,
        },
        r1a0: u288 {
            limb0: 0x5b20b0807bd65995edba4516,
            limb1: 0x576230b315d143cd8102761f,
            limb2: 0x1793547ec411ee7,
        },
        r1a1: u288 {
            limb0: 0x5ba432a76b1ae0d0f8199479,
            limb1: 0x14fcc7abc387395017bc2069,
            limb2: 0xf62d0d5cff1ddc4,
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
            limb0: 0x52a26c8b156b420284fedc67,
            limb1: 0x5c00d19f1db7604c0a76e5d,
            limb2: 0x1d62141a1f8180cf,
        },
        r0a1: u288 {
            limb0: 0xea03a36efd305ed32ece5a4d,
            limb1: 0xa801f364d0748df87c6ee25a,
            limb2: 0xc16295d7135504b,
        },
        r1a0: u288 {
            limb0: 0x8319cf2ae1d3280438932672,
            limb1: 0x59b68d134b6222f9810d3995,
            limb2: 0x2a32996736b63e57,
        },
        r1a1: u288 {
            limb0: 0xf7f75377247a86f9befcdd65,
            limb1: 0x893aed6ac47b4affd34a9fb,
            limb2: 0x2057e2a1b9ad8606,
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
            limb0: 0x115ada13648328c1d7aab4c2,
            limb1: 0x616a68eccbc6e62b433c2b9a,
            limb2: 0x3c5afbf348ba9bc,
        },
        r0a1: u288 {
            limb0: 0xc32682056b880d7a8948f6a0,
            limb1: 0x12ec26cd684152b5be8c5261,
            limb2: 0x463ce8905fc1daa,
        },
        r1a0: u288 {
            limb0: 0xc1eedf77d1c05dceff7d8a8d,
            limb1: 0xa7d3c80e2a864fdf0214c39b,
            limb2: 0x2a4257fee4a06978,
        },
        r1a1: u288 {
            limb0: 0xe26508360dd6698778e6a24a,
            limb1: 0x6f9e7bdbe265d5d042126459,
            limb2: 0xa9481478adbe44b,
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
            limb0: 0xf228901213789996f614eca3,
            limb1: 0xbf0ee60fc15e2965f9898032,
            limb2: 0x804580cb1e23e04,
        },
        r0a1: u288 {
            limb0: 0x76d28b2e60a3e8d8fc49158b,
            limb1: 0x7e6df0bb59859812f9646f01,
            limb2: 0x2ce49c0d687bfccb,
        },
        r1a0: u288 {
            limb0: 0x71c5c841c7693679ed165a08,
            limb1: 0xaa13954b2a34ba10b1e6d30e,
            limb2: 0x1f83f9b0489f41e9,
        },
        r1a1: u288 {
            limb0: 0xc54dd1ed87718c075a860451,
            limb1: 0x571725e5abc233e5d1d9ea23,
            limb2: 0x21ae6e69eea0df3f,
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
            limb0: 0x30bc45350f89b46c036d2ba5,
            limb1: 0xe6fd48f300d65f02602e5b1b,
            limb2: 0xd1afe69bec82c31,
        },
        r0a1: u288 {
            limb0: 0xef5d9322e7e70e241a719234,
            limb1: 0x3133db678922c7113aa50b97,
            limb2: 0x15329678ec23698a,
        },
        r1a0: u288 {
            limb0: 0x21083fce127b2eefe3ba89ee,
            limb1: 0xe8885c0a803613f1e8579008,
            limb2: 0x12e418113bc73f70,
        },
        r1a1: u288 {
            limb0: 0x461c95fd9ebade52cce3d410,
            limb1: 0xfaf780a135760757fe910ebe,
            limb2: 0x92760d0d469fd80,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f9c7b688ad82a0d13aff9d3,
            limb1: 0xc4c62e6ffaabf2916e7628b,
            limb2: 0x1d60e273c99c5222,
        },
        r0a1: u288 {
            limb0: 0x1d43d073e36e483b6606b69c,
            limb1: 0xff4d056ee4c46c21cea789fd,
            limb2: 0x1030914f71ac43e9,
        },
        r1a0: u288 {
            limb0: 0xa7b38fb605e573edee73391e,
            limb1: 0x3123acb160fc58b1e27244e1,
            limb2: 0x26fca434424d703e,
        },
        r1a1: u288 {
            limb0: 0xf0da6cb2f363e9d9b2b2772b,
            limb1: 0x787b069a74365698248a9bfd,
            limb2: 0x24241be5cbfbe041,
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
            limb0: 0x138cd620dabb262c022d9827,
            limb1: 0xd7b364f0595801bd54158984,
            limb2: 0x141c55e133b66656,
        },
        r0a1: u288 {
            limb0: 0xbc9ee123ee7d7b4d45f7c3cb,
            limb1: 0xdc41259379de41014966e445,
            limb2: 0x2ae001ee71cc69c4,
        },
        r1a0: u288 {
            limb0: 0x5e184113073fd9a33bd2807e,
            limb1: 0xab74a9a9f91bea6aedd52dd9,
            limb2: 0x25c9d5c35e908caf,
        },
        r1a1: u288 {
            limb0: 0x4406554cdbea0db384b54d81,
            limb1: 0x79772d2c0449833bb19a5575,
            limb2: 0x59748c6fa3af095,
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
            limb0: 0x25fcbec05ccbfefc17a36dd6,
            limb1: 0xe90c726a0da1eb46442a50b1,
            limb2: 0x156f6337552337a0,
        },
        r0a1: u288 {
            limb0: 0xb760575389b0c6983aa3cf37,
            limb1: 0x6a14c48f954fc574cc7f2992,
            limb2: 0x1f08c70eefb0fa99,
        },
        r1a0: u288 {
            limb0: 0xe7e029fab640758b5b89fc08,
            limb1: 0x67262c3d4c8f0f8e51ac523b,
            limb2: 0x2564fb84eac839de,
        },
        r1a1: u288 {
            limb0: 0x2127302f8580445e63d58537,
            limb1: 0x233cbce7a426248056bd4bbe,
            limb2: 0x1a3102668616c06e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x173040c995a410fbe3c0e171,
            limb1: 0xcc2b09bd129eb20f0e7df6b5,
            limb2: 0x1283efcb47fc87bb,
        },
        r0a1: u288 {
            limb0: 0xc791daec27435e14fbffcbc5,
            limb1: 0x8ecd5c7de21d05c3c19aed29,
            limb2: 0x11bf906726ef5110,
        },
        r1a0: u288 {
            limb0: 0xaeb9451f665486aaf0dd8e80,
            limb1: 0x3315387101f8d1a39b156b97,
            limb2: 0x132788218bd043ea,
        },
        r1a1: u288 {
            limb0: 0x113429bc8e0b06f5a7233033,
            limb1: 0x7e30ba235c61cc5d2d54f75f,
            limb2: 0x23500532c54b5e6,
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
            limb0: 0x7ae6002363f0652156efebe1,
            limb1: 0xaea6dfa0b65f7e3f6b884ce3,
            limb2: 0x25739cba243099b2,
        },
        r0a1: u288 {
            limb0: 0x2e35c86598ae825850e849d0,
            limb1: 0x604d2f49d8d5f2d08e7381cf,
            limb2: 0x14c70c2d21a591b2,
        },
        r1a0: u288 {
            limb0: 0x8a2e3afef2b97f22453e2584,
            limb1: 0x15f0a4d8bf71846328ba6f34,
            limb2: 0x16337f6d694ba3df,
        },
        r1a1: u288 {
            limb0: 0xf9412efce4adb142d191c43d,
            limb1: 0xc8d7baa38c3531b9c8a32012,
            limb2: 0x2f569c2f4b985d6e,
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
            limb0: 0x109a88ece9e46c7127a630a1,
            limb1: 0xc5e7b8ae145a4999bf89ae8c,
            limb2: 0x1bbe529fdf2b870c,
        },
        r0a1: u288 {
            limb0: 0x6e0e4ea1d2aa4bcc1dfa354b,
            limb1: 0xf39066ccfcf123dfa954e723,
            limb2: 0x8efea7fbae25da0,
        },
        r1a0: u288 {
            limb0: 0x23438cbdb74c086c7a8675de,
            limb1: 0x702243aa6d3fdea935d20d71,
            limb2: 0x2af91707a21b119a,
        },
        r1a1: u288 {
            limb0: 0xafc916512740f0ffc5231a93,
            limb1: 0xfb6613bf30b9d3d1410512d,
            limb2: 0xe8cab687dda2a38,
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
            limb0: 0xa1ed32ca94b4c96875fd3b0,
            limb1: 0xe538e50141e677ef401fb95b,
            limb2: 0x1ad48b29c351f4aa,
        },
        r0a1: u288 {
            limb0: 0xee8a97702051c8e353969bec,
            limb1: 0xbe63bd0ed4fab5344c67a2f3,
            limb2: 0x2a45a8b45888a6af,
        },
        r1a0: u288 {
            limb0: 0xcfb58ab97e2294bbd1d5b5f8,
            limb1: 0x186c4ab1d1ccb5b0392f5de3,
            limb2: 0x2578a885d7065012,
        },
        r1a1: u288 {
            limb0: 0xd4a023a8d887d41902bfd123,
            limb1: 0x13f2b4ab4f6b07c3bbf09b65,
            limb2: 0x1533c411c0706904,
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
            limb0: 0x1177c8c7c25bc99ae5073e73,
            limb1: 0x3fd126a2489ce0119d331e52,
            limb2: 0x193a79d66b3daedc,
        },
        r0a1: u288 {
            limb0: 0x2ba4f5858b027c9f474d478f,
            limb1: 0x549094a12ea3d0d21fc9877e,
            limb2: 0x1c0b09cd5c26af1,
        },
        r1a0: u288 {
            limb0: 0x6f16bd6781281929b9234341,
            limb1: 0xb9cb26305f4a7f937900c11c,
            limb2: 0xebad1779f3f4f47,
        },
        r1a1: u288 {
            limb0: 0x4f82c00dc97cf8fc930f20d4,
            limb1: 0xaa2463df641ddf9c36beb0c4,
            limb2: 0x25bde3bd66e68fa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6c4bc1cd45001c26ecf83fd7,
            limb1: 0x7aaaedbf62212ce11fc976c9,
            limb2: 0xc6eefc8b25fa941,
        },
        r0a1: u288 {
            limb0: 0x3db9893d77afb3416658ec88,
            limb1: 0xb6cd21492e29de0cd37bcf2f,
            limb2: 0x247a4d3dce60ebb2,
        },
        r1a0: u288 {
            limb0: 0x8057d4179d290e4eb9800685,
            limb1: 0x57a63a59e7da75e13402edb6,
            limb2: 0x13c1ef1a4058cb84,
        },
        r1a1: u288 {
            limb0: 0xec2f4dbe1836545d0187d5b0,
            limb1: 0xfa9f392475fea1beec3b032f,
            limb2: 0x130799f8ac776197,
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
            limb0: 0xd4440a4a84281a72782cb051,
            limb1: 0x8cd61331d7203e3998ad2e5d,
            limb2: 0x271bbfa3a272316c,
        },
        r0a1: u288 {
            limb0: 0x50511d8123a581b00f45704f,
            limb1: 0x30658a3edc12af71f272864f,
            limb2: 0x23ebf1695a6c60dd,
        },
        r1a0: u288 {
            limb0: 0x84f8db7e7536164d02873321,
            limb1: 0xd18ea39b57fcf09976e2dd94,
            limb2: 0xcbb7b7367e1f285,
        },
        r1a1: u288 {
            limb0: 0xc1b52f4ab31bf023c97a7362,
            limb1: 0x1a55c32a489aa80a77282993,
            limb2: 0x375ddfceaafc69b,
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
            limb0: 0x59996347a6f1558d71987fd1,
            limb1: 0xf783fe3a51653fb721cc7552,
            limb2: 0x1c8c596b8e30d77a,
        },
        r0a1: u288 {
            limb0: 0xc9f4b527a8b409501a52a232,
            limb1: 0xda89cee62761c94c73ea9c42,
            limb2: 0x1d640b4db74a9639,
        },
        r1a0: u288 {
            limb0: 0xe2bb60e3eaf2dc98078cac6b,
            limb1: 0x7ab68cef6d5ccc149b3633c7,
            limb2: 0x16eecbd9990726f9,
        },
        r1a1: u288 {
            limb0: 0x3d2c6ebc918473cdb591bab7,
            limb1: 0x36becc532873d8c7a73c3000,
            limb2: 0x2bf512cc85f595f3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7d1df523b627a3cd127caf43,
            limb1: 0x2ec5b881225179a155855c57,
            limb2: 0x10a6b2473f09adb6,
        },
        r0a1: u288 {
            limb0: 0xc4d175ed85ae4722db58a3dc,
            limb1: 0x4a01b80e04cca704f535fa5e,
            limb2: 0x2e72d4140be2cc81,
        },
        r1a0: u288 {
            limb0: 0x550373edbf129f29a35d1188,
            limb1: 0x3814ce285dd03f3f52b7e80f,
            limb2: 0x2e231638202a37d,
        },
        r1a1: u288 {
            limb0: 0xb7270c42d92fc8524c238293,
            limb1: 0x4f4d1b97cd41e6539971af8e,
            limb2: 0x154e4d07debe02a6,
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
            limb0: 0x464a61322d78f9bdc3159adf,
            limb1: 0x4520bd035d0187edbc9e33d4,
            limb2: 0x24f84977eac975b4,
        },
        r0a1: u288 {
            limb0: 0xfa2538a44c10e2c5d77a5fab,
            limb1: 0x8da3bc4819073e11a9f17f6e,
            limb2: 0x102f988c90bd9cf1,
        },
        r1a0: u288 {
            limb0: 0x635cfa92ab9c8fdb8496a539,
            limb1: 0x353dc7fca7ccc778bb18ad3e,
            limb2: 0x1be58678349b10e4,
        },
        r1a1: u288 {
            limb0: 0x16fdf49748ac90f24ec84e6e,
            limb1: 0x1a074a84a37b72a1c3cf0714,
            limb2: 0x23e83de127de9e60,
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
            limb0: 0x8493ef04bda18dd6b0d47eb0,
            limb1: 0x9ecf263e9eaa6a0253b0a8ea,
            limb2: 0x20b61a1aa4783f0,
        },
        r0a1: u288 {
            limb0: 0x43e8e9cdad83586ac8d155f5,
            limb1: 0x6ba97c8e0548ef33e301c56a,
            limb2: 0x20e7bf6cd5193744,
        },
        r1a0: u288 {
            limb0: 0x861e79d4e9efa30298f34f5c,
            limb1: 0xad0875a700e3a5dad1a5b98b,
            limb2: 0x33d51c9b9056577,
        },
        r1a1: u288 {
            limb0: 0x4a81c68f1d3532cf14f6c47d,
            limb1: 0x2e0179a4aba87967dd4571e8,
            limb2: 0x825a510b466990f,
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
            limb0: 0x8331a595e293a8c12f8bfba5,
            limb1: 0xfa20a9d0b4ad069631a6b5,
            limb2: 0x2a39ed5e554c439d,
        },
        r0a1: u288 {
            limb0: 0x8e34e9f83063ffef9072c409,
            limb1: 0xe495a22bb1c1d927b2078839,
            limb2: 0x2c70d98e67661546,
        },
        r1a0: u288 {
            limb0: 0x386cbaa79b0413abb43034cb,
            limb1: 0x5921d8a814670eaaa30dea0d,
            limb2: 0x16ea932e0be3c5ea,
        },
        r1a1: u288 {
            limb0: 0x932251fe6fd213f8b19e4fd9,
            limb1: 0x180de483ed861987466af1fc,
            limb2: 0x142a3e9de55aacd9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe50b2d4e86fc212a99002266,
            limb1: 0x2c458cb67a4bbba05d31bf83,
            limb2: 0x89f6cad6d4e8c2,
        },
        r0a1: u288 {
            limb0: 0x8770d8f1b12ccb4b312682a1,
            limb1: 0xef1d4d48f227adf52b67aa9c,
            limb2: 0x2635b0ae87c56d7e,
        },
        r1a0: u288 {
            limb0: 0x9e162e6a0741ec2737a4de3b,
            limb1: 0x695aeb2d712669e0084ea57b,
            limb2: 0xe4eb8e81e990ac2,
        },
        r1a1: u288 {
            limb0: 0xf69ceb4bd3004d67f33fc3eb,
            limb1: 0x6e7cf16ab7bef969b212f252,
            limb2: 0x2a1a9cd9453114db,
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
            limb0: 0x4b7bf2eaecf55904290df288,
            limb1: 0x81015c785da700b943fcef50,
            limb2: 0x2e0dcf098ee0415f,
        },
        r0a1: u288 {
            limb0: 0xd34b96e82f9f1f373de153d1,
            limb1: 0xca8d2d42858c6b497d929735,
            limb2: 0x570f3f22d2bc582,
        },
        r1a0: u288 {
            limb0: 0x986f3794a06cf48e15558059,
            limb1: 0x5cfb7881d1906cd42752e42e,
            limb2: 0x1143f298bb54ae7b,
        },
        r1a1: u288 {
            limb0: 0x9c6d92306d33c77ee23cf38d,
            limb1: 0x7181897ce641b1da8585c7de,
            limb2: 0x1f05e167f0442113,
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
            limb0: 0x9c687667239705a92506627b,
            limb1: 0x72ac8f3251fd5dcc74d182d5,
            limb2: 0xe4104f43966f68c,
        },
        r0a1: u288 {
            limb0: 0x45ac34a06bb58ce3c625fafc,
            limb1: 0xc5fa17056051b4b5ebf68a8d,
            limb2: 0x14cf5a2e272477df,
        },
        r1a0: u288 {
            limb0: 0x1cafabb531b0e520516547b9,
            limb1: 0x32be64d82128f11b1b8ad8f4,
            limb2: 0x2a5024a5909bea11,
        },
        r1a1: u288 {
            limb0: 0xfec259ca878cd6906cf2fa19,
            limb1: 0xcfbec0b4817b1113dfe92adc,
            limb2: 0x201bcb974df917eb,
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
            limb0: 0x84021a999e414d51096ff170,
            limb1: 0xddfe3180c0129c5ce8aba0a2,
            limb2: 0x63eded7500efa5b,
        },
        r0a1: u288 {
            limb0: 0xf66e48c12de2617a5487a5c2,
            limb1: 0xbe6c3c5ffbea542b7b6910ee,
            limb2: 0x1dbcff80f3db5fb9,
        },
        r1a0: u288 {
            limb0: 0x2e1429cb55f203e7b1ab66cc,
            limb1: 0xfa39b957b6813397bf13b54c,
            limb2: 0xd8caac18ed4a0f1,
        },
        r1a1: u288 {
            limb0: 0x60f879eab76ce151289a807d,
            limb1: 0xd1c66117b5f249d060b62166,
            limb2: 0x2ff99d08d0fc628,
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
            limb0: 0xe2ea18cd8b905307a9b7d7a4,
            limb1: 0xecfb5f5c7973485b69a4f29d,
            limb2: 0x4e9904359dc0683,
        },
        r0a1: u288 {
            limb0: 0x36b3c4d7edae063862660501,
            limb1: 0xba2a283c8720f891d25ee75b,
            limb2: 0x142e5ab26b1e0928,
        },
        r1a0: u288 {
            limb0: 0xf15f7488665a4386430dec4,
            limb1: 0x479f77e2e470cb1cf2e62245,
            limb2: 0x1946d5e2a3619487,
        },
        r1a1: u288 {
            limb0: 0x5afe1361ee303080bfe97493,
            limb1: 0xc0efce07a20394537badb25a,
            limb2: 0x2786b110ac09224,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb61d6beccb2b72311b223270,
            limb1: 0xbc174bb423ead63ddabdedda,
            limb2: 0x1f5c85597154caeb,
        },
        r0a1: u288 {
            limb0: 0x66135010977b7b9e3d3b6a69,
            limb1: 0x8aa20b51f81e150621aac8d6,
            limb2: 0x9931dc722d96f2b,
        },
        r1a0: u288 {
            limb0: 0x58982658a0c3cc3590c2e53c,
            limb1: 0xb9c6abf5d8226f4cf9fe16b8,
            limb2: 0x16092198a68212bc,
        },
        r1a1: u288 {
            limb0: 0xa83ca44966d8b5062fd51edd,
            limb1: 0x524d9b52f5baa4d28ba91f51,
            limb2: 0x28163f139af81725,
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
            limb0: 0x478d950786d1069355f19cb4,
            limb1: 0x96ec2bea9a081f84ce65dab0,
            limb2: 0x286354b2b92e147f,
        },
        r0a1: u288 {
            limb0: 0x4fae8b044a51bb1ce16a679f,
            limb1: 0x2cddf18e34388b6cb5835def,
            limb2: 0x1d503440ea400520,
        },
        r1a0: u288 {
            limb0: 0xa09d812a0d4228a69c871be0,
            limb1: 0xfb60d1e5bcfd722947802575,
            limb2: 0xd2b9d68b7ae817a,
        },
        r1a1: u288 {
            limb0: 0x32cb9188878e47089d4926db,
            limb1: 0xc36d534c131951bae3d2ad22,
            limb2: 0x13510155aed9f10e,
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
            limb0: 0xd3186e0a0e0513835fbec284,
            limb1: 0xfbe9f3f34af152df3fb589b4,
            limb2: 0x1760547c73e06179,
        },
        r0a1: u288 {
            limb0: 0x6df8003ca39a86790dc6705b,
            limb1: 0x35c1ff0a9c570be5941a9044,
            limb2: 0x102ee03e7cd6ead,
        },
        r1a0: u288 {
            limb0: 0x6cf623cf22cc59efdfe99910,
            limb1: 0xa1f3e3cfa698d12e3ce480d4,
            limb2: 0x49d4c729b1721be,
        },
        r1a1: u288 {
            limb0: 0x9d6faf84fd3bbb3c76ec75a0,
            limb1: 0x26c8ef85b3878d8788ca76ad,
            limb2: 0x22eb0d7a694ef467,
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
            limb0: 0x90e12cec72fafbf1ed7e4b0,
            limb1: 0xff834c576d8192673d493dab,
            limb2: 0x2c1fa320c5d57e1d,
        },
        r0a1: u288 {
            limb0: 0xd4141c0888bd29ed801f8cc4,
            limb1: 0x43cc929e77711ae97ba5afcb,
            limb2: 0x204de6799561770c,
        },
        r1a0: u288 {
            limb0: 0x5304a19c4a3e7631cf659d22,
            limb1: 0x125180e2732daac1423e1df6,
            limb2: 0x2f09bf0f1f011573,
        },
        r1a1: u288 {
            limb0: 0xd039a37c7593e94c8c162466,
            limb1: 0xfa85472cf897506e1e5fe072,
            limb2: 0xacfc9aa0a33891,
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
            limb0: 0x8c7c358da0390cd6444f63e0,
            limb1: 0xe6f8a6e673fe0e2da2cd06b,
            limb2: 0x2e88dbf520428b69,
        },
        r0a1: u288 {
            limb0: 0x14271a3048ebffb3bede4970,
            limb1: 0x3ffb4525a14ad64e618496f2,
            limb2: 0x266f458b2d7663f2,
        },
        r1a0: u288 {
            limb0: 0x8901dfbc65d984da0217b4a4,
            limb1: 0x1d4138d6a473411f83f4195a,
            limb2: 0x75bb8dd32e347b4,
        },
        r1a1: u288 {
            limb0: 0x9c53a9306b69b9136c4ee6a8,
            limb1: 0x557dc3849d0a3b9629ae10bf,
            limb2: 0x25a8a930020eef97,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe6050734b6368678e9cbe0c9,
            limb1: 0xf153c77790e8afa29767b334,
            limb2: 0x2498ad92815f4788,
        },
        r0a1: u288 {
            limb0: 0xd4cc92ce6c908c37d363e29f,
            limb1: 0x76ae6113a11537c535f29e3f,
            limb2: 0x1d7e42b938d9eb85,
        },
        r1a0: u288 {
            limb0: 0x9d7371009b7718ac8edf52f,
            limb1: 0x43711ece4cf8e8909dbad3ad,
            limb2: 0x148a1b28204551ee,
        },
        r1a1: u288 {
            limb0: 0x4a877b0318779872b825bea7,
            limb1: 0xc3bf541d8eef1dec251deee7,
            limb2: 0x1a67029d86fbb755,
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
            limb0: 0x7ec309a54267ac475f748a46,
            limb1: 0xf79ce92238391c06ca4670a6,
            limb2: 0x287e5a84ce7b657a,
        },
        r0a1: u288 {
            limb0: 0xbe49440bd282ae6de3ea72b4,
            limb1: 0x879573040e4962c2175a89f4,
            limb2: 0xb437071aa35e3ab,
        },
        r1a0: u288 {
            limb0: 0x71bfc0e4fb635f386956b93c,
            limb1: 0x9be3768cace4a4108d6f4dd8,
            limb2: 0x77029b61a0a0cfb,
        },
        r1a1: u288 {
            limb0: 0xa075f3619f78c323e692f6b7,
            limb1: 0xd4ce78ddeb9a1ba94fb47682,
            limb2: 0x268a0c44b27a383e,
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
            limb0: 0xa6c5c8f2208ffb4aa52d83c7,
            limb1: 0xcc2e4d3f6d12e770ebe50b1,
            limb2: 0x8f0bbdde179edb4,
        },
        r0a1: u288 {
            limb0: 0x6e967c75e2ab4e1b14e34877,
            limb1: 0xd9fefad723f2ed7222b85db7,
            limb2: 0xa9776ddc1d5937b,
        },
        r1a0: u288 {
            limb0: 0x47a605d9153a307c52461ae4,
            limb1: 0xdea304fcb406528428d6d666,
            limb2: 0x225e9c72e43e4d7d,
        },
        r1a1: u288 {
            limb0: 0x5b389a49f3b2be24682b81da,
            limb1: 0x712aaa25a525b833c286b228,
            limb2: 0x3e557665a720b09,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5242e4a1eb442ca80060a943,
            limb1: 0xdf72e47e0436344856d14723,
            limb2: 0x56199435b0c2308,
        },
        r0a1: u288 {
            limb0: 0x39e7fb0de36e61bfb898eaf9,
            limb1: 0xd247f7e4937a4eca7be08099,
            limb2: 0x287278d76b66c906,
        },
        r1a0: u288 {
            limb0: 0xb997060262a48bccb9683856,
            limb1: 0x4e53f9bd5ed3e3cdfc5f2789,
            limb2: 0x2e584c666a4ca91c,
        },
        r1a1: u288 {
            limb0: 0xde5ece92130630cdc5e0d905,
            limb1: 0x6e261e8f1e4101a36d4670c,
            limb2: 0x20ed781a7ffc8bd9,
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
            limb0: 0xd1437ea1e2966b55dc540130,
            limb1: 0xa8664fcba882947d7dd04c32,
            limb2: 0x22c4171eb4735475,
        },
        r0a1: u288 {
            limb0: 0xe8fb212596c867e9bb896e49,
            limb1: 0x8cca9c81ae9c21f849ad7563,
            limb2: 0x278a65d1fa42bf3b,
        },
        r1a0: u288 {
            limb0: 0x5e3da6a587cde8f0da32e57,
            limb1: 0xf8c77a31ff28901e1c5ec926,
            limb2: 0x1f053247d8229207,
        },
        r1a1: u288 {
            limb0: 0xc7b4f8da944be2b8af16eec8,
            limb1: 0xa2ff9d0aa49f55d251a84d,
            limb2: 0x2b97913f1c5d653,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9e719929cdc1f26b969efe7b,
            limb1: 0x8521bf050b72db0be5361362,
            limb2: 0x6e5deeade755b4,
        },
        r0a1: u288 {
            limb0: 0xc1593f92831e558f2b40b96,
            limb1: 0xa3d531d83568aa740241374a,
            limb2: 0x2b5bdd1fd9115154,
        },
        r1a0: u288 {
            limb0: 0x9e4a42aff4dc8a57209232af,
            limb1: 0x185cfcf57e0a6bc6df3c68ef,
            limb2: 0xebaa706ac3cdcf5,
        },
        r1a1: u288 {
            limb0: 0xdf1dbea80d1ebeaef6a8c549,
            limb1: 0x11a7bd17b219694681f918b0,
            limb2: 0x869629c488c7862,
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
            limb0: 0x5c898dd9f65a0c063d505cc1,
            limb1: 0xa6c3fa2e0b2a953df6bc76f2,
            limb2: 0x1c4e9f9ff44ec06b,
        },
        r0a1: u288 {
            limb0: 0x772512e882b063d18c15228c,
            limb1: 0xe0b207178f76956148b28825,
            limb2: 0x24f8ff0682386525,
        },
        r1a0: u288 {
            limb0: 0x7088311c208c92a3d5feeea5,
            limb1: 0x1a5cb2b1a3ea70bc02491ac7,
            limb2: 0x4848fd32982e67,
        },
        r1a1: u288 {
            limb0: 0x8e16a7f139ea9820cc896ce0,
            limb1: 0x2221dbb235461c0178219a4c,
            limb2: 0x2e2ed0502dae32d5,
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
            limb0: 0x9ac31c34214b2683207994f,
            limb1: 0x1f8ee81f2a0246a10d9bb8d8,
            limb2: 0x16a74e3c852e1cc7,
        },
        r0a1: u288 {
            limb0: 0xc3004c9915c0b84704c053a9,
            limb1: 0x57771bb1da1722236c0fd4ce,
            limb2: 0x1bf85e71e1de4582,
        },
        r1a0: u288 {
            limb0: 0x17ba7ebfe52ad18e3c96698,
            limb1: 0xaf269d30183913c72ab58ed7,
            limb2: 0xfa90307592aaaa4,
        },
        r1a1: u288 {
            limb0: 0xd8d1682e7362655fc840f47f,
            limb1: 0x7eee90f5d6b90f91a7720126,
            limb2: 0x26b04b4f7f69f31f,
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
            limb0: 0x41b21f758e8f58a324de1819,
            limb1: 0x7f631571b9f7aeaca8f596c3,
            limb2: 0x1401cf1d8c00ebdb,
        },
        r0a1: u288 {
            limb0: 0x81ddf2f6b5dd1be3c6d7b6c4,
            limb1: 0xd1a1aa5676263be4461bc40a,
            limb2: 0x927337578cc7478,
        },
        r1a0: u288 {
            limb0: 0xb4ffaf982750680a5fe0184,
            limb1: 0x54bf1a0b740fd47e4ddcb710,
            limb2: 0x162f5e4aa1f1192a,
        },
        r1a1: u288 {
            limb0: 0xb7a6307fbf9d3886449b4825,
            limb1: 0xf7f1b5257c1f79e347bc5dd5,
            limb2: 0x2693e69ef7870259,
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
            limb0: 0x5f4a2c1646eebd43a8ccc651,
            limb1: 0xb1f1ac503ffae027e671b4da,
            limb2: 0xe872263f1977ade,
        },
        r0a1: u288 {
            limb0: 0x7eec97c353349cf3c73467a6,
            limb1: 0xc3433f51eafb069789db72f1,
            limb2: 0x2b8af152acb43732,
        },
        r1a0: u288 {
            limb0: 0x928f0af1a5428bf70f05656,
            limb1: 0x4e7991230a93d185f6433890,
            limb2: 0x110e3f9c64151b3e,
        },
        r1a1: u288 {
            limb0: 0x47f3967c4e634426f4e2518,
            limb1: 0x743e10e55ba01c653cbca12a,
            limb2: 0x648c0a2ecf72429,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8f4b25b91be21e6faa7c7b24,
            limb1: 0x5134f7e878abe3b220089334,
            limb2: 0x7cdde5483adcbbc,
        },
        r0a1: u288 {
            limb0: 0x6bdaa071069be8ab23cf4b6,
            limb1: 0x75f760562e35e686853fcde6,
            limb2: 0x1ec868ebec43775e,
        },
        r1a0: u288 {
            limb0: 0x250d8c6b63dc3ea5a84a356,
            limb1: 0xb0e288635a256bd5cec02cbf,
            limb2: 0x71096e369c2e895,
        },
        r1a1: u288 {
            limb0: 0xa4f40864b8269747fbaf1bc9,
            limb1: 0xc04b2056772a383a8b35202c,
            limb2: 0x172929e28e72f69d,
        },
    },
];

