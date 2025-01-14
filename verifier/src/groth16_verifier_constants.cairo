use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x85dcc57c0c93f8b985088e36,
            limb1: 0x110450f9aae481c3de904b65,
            limb2: 0x7d994a739e60ac3,
        },
        w1: u288 {
            limb0: 0x13cc5f7e33d6e0ab5615d686,
            limb1: 0x530f1075ead86a5db8507147,
            limb2: 0x238c267232aa3788,
        },
        w2: u288 {
            limb0: 0x1bbf59e3d8f015e07e7af78f,
            limb1: 0xfceb48aa881d3feb47142a4a,
            limb2: 0x1075a5dfe9ceda87,
        },
        w3: u288 {
            limb0: 0x9f1fdb9266d810ac6615332,
            limb1: 0xdc57d6b57a2090b51e92043f,
            limb2: 0x193e0e0409409caa,
        },
        w4: u288 {
            limb0: 0x8a596143dd5f03fa461903e1,
            limb1: 0xec206951c76f7cbca62b543f,
            limb2: 0x24a1efb3005ff866,
        },
        w5: u288 {
            limb0: 0x26ee85d4cd0c57b0d763b447,
            limb1: 0xceefe78e447b91277992354c,
            limb2: 0x2c95c89fad8cfce6,
        },
        w6: u288 {
            limb0: 0xa5dd1115ba2ada16326bd29,
            limb1: 0x4a55040c9515909b765c8f88,
            limb2: 0x126948d7c23ccc7b,
        },
        w7: u288 {
            limb0: 0x8a06b9f00ee65c55b00cebb5,
            limb1: 0x80d951d6771d77e0cab0394f,
            limb2: 0x1e8dc29bbe37e42b,
        },
        w8: u288 {
            limb0: 0xea0249d9ca24840f32f260ab,
            limb1: 0xe6a662e2a5dba38b0fac18ad,
            limb2: 0x3b2892f5665c6c6,
        },
        w9: u288 {
            limb0: 0x108586f74e6a276f0b852b04,
            limb1: 0x294a47575283860f484fec36,
            limb2: 0x17e8be5a3f5be651,
        },
        w10: u288 {
            limb0: 0x790187c4f0ffe1ca334d8583,
            limb1: 0xec80d5d9dc532654b829c4a8,
            limb2: 0x2b2d41305758d25c,
        },
        w11: u288 {
            limb0: 0x263e8e91bbc3644dc51b05cb,
            limb1: 0xc936fce97895b54b6ee9fa2a,
            limb2: 0x385a23b2e0d9e01,
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
            limb0: 0xd7fe9b421d01ca0d2f291530,
            limb1: 0x4c52b8344c5fe3c4d27440b,
            limb2: 0x6ba1db28cc9aeb6,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x53c87cf0af5e2fbdda6e511f,
            limb1: 0xa90e74f38c74151b8f2ffb73,
            limb2: 0x298f67a12f6b3df1,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x1cd09c24ebb5f99fdeb60b1e,
            limb1: 0x49cf9370558e8c9bbde3bebd,
            limb2: 0x2c4942286652b8ba,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x86f8daefc11302e7796ed955,
            limb1: 0xbd5be09fe2163979af4605bc,
            limb2: 0x159981c4d3b4aeec,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x212c6958658f65eff8bbe87a,
            limb1: 0x12da4b2514c966a44049078,
            limb2: 0x8d095e08def410c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x9453fd9ad38db5dac6da124e,
            limb1: 0x829a899281a7d32e30026578,
            limb2: 0xdb858f7e4f6e51b,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xa87038c3af7ac1301ca7ce08,
            limb1: 0xbbe473613dee269e2b5266e0,
            limb2: 0x10484a659605e56a,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe5caeb8e61231eca1c202d99,
            limb1: 0x15dc43f4b303907dc94b8536,
            limb2: 0x37643d215f8d053,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x58735b87de2cc8a26663079f,
            limb1: 0xa2f07505daab2fe327202a35,
            limb2: 0x1f474b1bf0621a2b,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xd3f4e3a3023e7d23e697509f,
            limb1: 0xa5d5e9125c98803b8ada573d,
            limb2: 0xa17bc1fe83b8e1a,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x429ccaa610b2f47d366e6e2e,
            limb1: 0xa27056f4786e534606e958c2,
            limb2: 0x7d60a78c9faf161,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1f3864fcac4f168dfbbf9e09,
            limb1: 0x8d5f09eb35cd41226cefe26d,
            limb2: 0xe26050efd3aecc8,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xd568f04cc3ba12954bab1a38,
            limb1: 0x350432fe696ae4c336fff6a4,
            limb2: 0x5294ef9e54e9465,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x1c44446515239e3daabbba02,
            limb1: 0xac2a2faefdf6f88d32cebdc9,
            limb2: 0xc7e6a363b7fcc0d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3b2199ec148a478473e4538b,
            limb1: 0x3df2cb707045ae9438869225,
            limb2: 0x1fc152494ab48769,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xf8c7113474fd6d685f97f1ef,
            limb1: 0x6535732f0d4b705de230b03e,
            limb2: 0x15e29cdfc119e2b2,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x32bfee2c060050e0b3e592a2,
            limb1: 0x306161ae84b43c20962f66d8,
            limb2: 0x134345045dd7ede9,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x3840c172b1448b9ae022eeb3,
            limb1: 0x511d97b15bdc0d654b8365f8,
            limb2: 0x188a455582f4b3b5,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf25c6a7a45258c36c6241cd9,
            limb1: 0x538c18f868779b761ea0b750,
            limb2: 0x1e0351d62054a0fe,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x8f6824eca80f72e72f250860,
            limb1: 0x5b9d90eaae773c5502762acc,
            limb2: 0x1ba9bd6e2c7a3c6f,
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
            limb0: 0xa17c833400049b811f937ba2,
            limb1: 0xf930836889c21e14efdf5b9d,
            limb2: 0x2a43c969d4064b41,
        },
        r0a1: u288 {
            limb0: 0x43ab937a44d65bcee7d0c492,
            limb1: 0xd2b97df410f83992282bac77,
            limb2: 0x16f4a01937205ca2,
        },
        r1a0: u288 {
            limb0: 0x73eb2baa297ac3b0461b40e6,
            limb1: 0xb2b32ac5736e73870da2e4ec,
            limb2: 0x2d20a21c052330b7,
        },
        r1a1: u288 {
            limb0: 0x57f11642d6d9e3484bec64c8,
            limb1: 0x1923e0ca791171f29399b665,
            limb2: 0x14546c5c24b515c6,
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
            limb0: 0xc6f547593c1bf095b8e981a5,
            limb1: 0xbf1fc24df7bf3a48a7a20ef3,
            limb2: 0x62085090d2b54e7,
        },
        r0a1: u288 {
            limb0: 0x24c63712f74a3047f0ac38b5,
            limb1: 0xe596c7c270891ecb6f55be1a,
            limb2: 0x196fae59aa114386,
        },
        r1a0: u288 {
            limb0: 0xf4869ee312a5c8669261bc61,
            limb1: 0x59d1af10e12e4d689de85a4,
            limb2: 0x343ac56dc0e6f72,
        },
        r1a1: u288 {
            limb0: 0x1080b44a6546a8ce8c90987f,
            limb1: 0x9f2c64ec086fe66b03e7b42c,
            limb2: 0x1c0fe216bc7c8a63,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x86b37db9a0f7d5fbef42946f,
            limb1: 0x9c9b47ed007d6b041e7a9b27,
            limb2: 0x24e82d5e337d3600,
        },
        r0a1: u288 {
            limb0: 0x9160e18d9699d89f37ef5559,
            limb1: 0x146da09d022c73c9b221fc8b,
            limb2: 0x1208273c9e58a9e4,
        },
        r1a0: u288 {
            limb0: 0xbf695415541d6121f186469e,
            limb1: 0x3a90cf9872b4810058c7622,
            limb2: 0x1b72a6b7b2afd4d,
        },
        r1a1: u288 {
            limb0: 0x237e852168de6e55e0d09bd2,
            limb1: 0x6744c2b8a7d35b042def155c,
            limb2: 0x1b8ef7d3b2ffdd46,
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
            limb0: 0x1f300868446c1446b03fd77f,
            limb1: 0x31a28bc22de4fa709e45425b,
            limb2: 0x9be7418cf56dbef,
        },
        r0a1: u288 {
            limb0: 0x45987defdf358b90ef2fba73,
            limb1: 0xaf7df08b33afecf409ecb33c,
            limb2: 0x11feb37046a80857,
        },
        r1a0: u288 {
            limb0: 0x1531250f6052ecf7e699b38f,
            limb1: 0x9feaafec3c7752a8075c515b,
            limb2: 0x22d3081c4702144a,
        },
        r1a1: u288 {
            limb0: 0xb6b84c3f81cdd4e687eb8f24,
            limb1: 0x40511efc05842981b016b2e2,
            limb2: 0x25d4e9caa83d8846,
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
            limb0: 0xcac5e984623960fc677d91c5,
            limb1: 0x74855fe0616d3206c1d16b28,
            limb2: 0x106ca31f2e6aa0e8,
        },
        r0a1: u288 {
            limb0: 0x8d64610742bfc29d0463b0bc,
            limb1: 0x54f829cd4a87ed93082798d6,
            limb2: 0x19ac648b28a9ed53,
        },
        r1a0: u288 {
            limb0: 0xd13da9a2c51f4545ac2309ca,
            limb1: 0xf6add9260bd3a7f8d547fa3e,
            limb2: 0x85f63db156fafe8,
        },
        r1a1: u288 {
            limb0: 0x99e2279810762b9505d36d9a,
            limb1: 0xbf05156b3532da4fc980d5c1,
            limb2: 0x2b911852815287c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9afdd004c9f40f8c9dccdf53,
            limb1: 0xad3777d6ad9dca69b1a417ce,
            limb2: 0xe0b5b0838d0bc96,
        },
        r0a1: u288 {
            limb0: 0x97982f1211e24b017f215e4f,
            limb1: 0x9f850dc3124e0061fda6614f,
            limb2: 0x2df8675e200ea4f8,
        },
        r1a0: u288 {
            limb0: 0xe0ac810895439c9ac435e6b4,
            limb1: 0x65119564aab64871f999fcbf,
            limb2: 0xb22762a035de866,
        },
        r1a1: u288 {
            limb0: 0x4404374db2e39c653ee875cb,
            limb1: 0xa49a59f4956c6b1889ddf909,
            limb2: 0x19f03da41ba56519,
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
            limb0: 0xcf67d294c8e8eebb706802a2,
            limb1: 0x646f3775a6557480b5830297,
            limb2: 0xe7255c1064a73cb,
        },
        r0a1: u288 {
            limb0: 0x5ef917a07c61624301942a9f,
            limb1: 0xd0d6a17dac227e76e216c6b8,
            limb2: 0xf7fff4c685b1856,
        },
        r1a0: u288 {
            limb0: 0x67f99b349dc34c79ebb3ba26,
            limb1: 0x997ebf7dadc126cc272f57fa,
            limb2: 0x116cab5335bd906e,
        },
        r1a1: u288 {
            limb0: 0xd65ada4a6509daf9595ec582,
            limb1: 0x1b2c7c1d40ee6452e2820125,
            limb2: 0x26936a8d2135215e,
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
            limb0: 0xa6d95f4e9b04456511081888,
            limb1: 0xff1f2503970bf2ed96a0fcc3,
            limb2: 0x2efd672be1e7b3e2,
        },
        r0a1: u288 {
            limb0: 0xbc8f476f2dcc4b197bbad327,
            limb1: 0x96f4f1da69b6a67b48a1c155,
            limb2: 0x1d7db640177fe86f,
        },
        r1a0: u288 {
            limb0: 0xef5d4cca6234a1ac892cb82d,
            limb1: 0x3c465afb5d554f292294fd54,
            limb2: 0x130aa13dc165ef66,
        },
        r1a1: u288 {
            limb0: 0x2b6e53a4c81ebcd5808a9e41,
            limb1: 0x2a869bfff63ec7c3af8a43c1,
            limb2: 0x2935873c85a9d941,
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
            limb0: 0xb7dd084ffe42febf96f476b4,
            limb1: 0x36ffa61cfdd41e7b5df95621,
            limb2: 0x2567db15517ae98a,
        },
        r0a1: u288 {
            limb0: 0x2cbc1713ed8e13bfba947b4b,
            limb1: 0x6b3f2799344283ad4e3744ef,
            limb2: 0x59691a0dcecc23a,
        },
        r1a0: u288 {
            limb0: 0xe8b9f1e64cea0025334ce954,
            limb1: 0x88a12bcbd7faa7e26380d7cd,
            limb2: 0xaf3d096404c4658,
        },
        r1a1: u288 {
            limb0: 0xea60ab96e966fc54898d318c,
            limb1: 0x55b0e9870fe0897f8c3f48d3,
            limb2: 0x2cb7885faea1580c,
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
            limb0: 0x257ad38bf6e6fce381ae99ee,
            limb1: 0xb0029e2b14590ad56fc8986d,
            limb2: 0x78142339042a635,
        },
        r0a1: u288 {
            limb0: 0xe2e2ac62774674ea5b36c74b,
            limb1: 0x47e561aeec2518c239318a7f,
            limb2: 0xf475dea9e48f731,
        },
        r1a0: u288 {
            limb0: 0x54e8ef0d7205b3d9ef86bbb1,
            limb1: 0xff8013455fa33b32dcc6ffb4,
            limb2: 0xaae51295d1f8aab,
        },
        r1a1: u288 {
            limb0: 0xa483a6aa5e11c12864b7127b,
            limb1: 0x37f6adb524d7e8a849adf3ca,
            limb2: 0x2b5990bf1ab7f52,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d352267fdda5363393c50b0,
            limb1: 0x2829b222cabb032ba7ed8fa5,
            limb2: 0xe60916a140d3a39,
        },
        r0a1: u288 {
            limb0: 0x1f09a4ea3a82bb7e6c165a64,
            limb1: 0x78036c9f4dd5a044dd4d1c1,
            limb2: 0xb36fc0ae80ddff,
        },
        r1a0: u288 {
            limb0: 0xd8f352edf294bcc95945af5c,
            limb1: 0x1fe89ad9f73fd61f9ed62b3d,
            limb2: 0x1e6e8076c4f9cda9,
        },
        r1a1: u288 {
            limb0: 0x95634bc63b479c1fbd343e32,
            limb1: 0x389883564f3f48b8d8583fff,
            limb2: 0x288b864b0a927400,
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
            limb0: 0x92634ba41603b1aea7bd3453,
            limb1: 0x903cc33b16acec957f91a6ef,
            limb2: 0x1d56e48012b2cccb,
        },
        r0a1: u288 {
            limb0: 0x211b7a9770d71c43fa092988,
            limb1: 0xf09ecc78f9deaac250238c78,
            limb2: 0x21f7ff3cca0d43d0,
        },
        r1a0: u288 {
            limb0: 0xd798a6f5f57eb3471be4883c,
            limb1: 0x7b3d4b7a7a39250baaa42953,
            limb2: 0xc0ec2c887191383,
        },
        r1a1: u288 {
            limb0: 0xd4ffc764364f59784c258990,
            limb1: 0x4bb50f4edafc8456faf74ac4,
            limb2: 0x14ebd4bfdda36a4a,
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
            limb0: 0x69c85cae460bbdf6404c23c7,
            limb1: 0x275abf98b1d54a7a10eed3f3,
            limb2: 0xa1a20dff7fbd01b,
        },
        r0a1: u288 {
            limb0: 0xee96c75b3d08df7515cc82a8,
            limb1: 0x56f1e20385d80f51135f75c1,
            limb2: 0x2ce6752672f8a5db,
        },
        r1a0: u288 {
            limb0: 0xb2c61ba605318e23169ebb77,
            limb1: 0x7869d6ef1785d3815ee0c8ed,
            limb2: 0xf5fba0a383cf67c,
        },
        r1a1: u288 {
            limb0: 0x5c9b93ab27e837701d933db4,
            limb1: 0x7d2a5e1f1adc3a8aab945953,
            limb2: 0x2f6d57e37a3e7f7e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x21f99bfd8ff0840f6f246e76,
            limb1: 0x318189edd859860b0ff7f270,
            limb2: 0x1abdbd60d4cb599e,
        },
        r0a1: u288 {
            limb0: 0x3e7356ded3e83102e96dd7c8,
            limb1: 0x9fa2af66757570c80d86363a,
            limb2: 0x1240387f2e0b8d0f,
        },
        r1a0: u288 {
            limb0: 0xd92cb364809f9d1e72caaaa4,
            limb1: 0x8d6733dc0e4829274c4620bd,
            limb2: 0x61120affddce2bb,
        },
        r1a1: u288 {
            limb0: 0x3c01dedcff8684dbba51f38c,
            limb1: 0x96b13dafb1bf1f982104eee5,
            limb2: 0xb8190884dc16266,
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
            limb0: 0x88fbb6765d5734117babb7cd,
            limb1: 0x8748b9acff69279093341853,
            limb2: 0x2b114668dc7232a6,
        },
        r0a1: u288 {
            limb0: 0xc336ddcdd3c354415b3d27c6,
            limb1: 0xdcdb6702dab41aa39fb1d2bb,
            limb2: 0x17c890d338b8e215,
        },
        r1a0: u288 {
            limb0: 0x7f1e799500fdab5c2b22ade4,
            limb1: 0x21292b00d53d54201e5ffbed,
            limb2: 0xd9886115805fffd,
        },
        r1a1: u288 {
            limb0: 0xd630c70076a745425fdb36bc,
            limb1: 0xfd7c50d1c48af8857db1eb99,
            limb2: 0x182cfda43333fb4d,
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
            limb0: 0x5b9c28ce5711d6b3e80fcc49,
            limb1: 0x20eaf1bb2858927852d4198b,
            limb2: 0x1abfb4ebb496ce12,
        },
        r0a1: u288 {
            limb0: 0xe11ee955ad8cf638823dcb47,
            limb1: 0x7d6c9a4920a9b4ecf55e0681,
            limb2: 0x51c9f8530ceb529,
        },
        r1a0: u288 {
            limb0: 0xc5ee3c25cbcf2ae0a3f3a07f,
            limb1: 0x956012630de7903ae198e66b,
            limb2: 0x2ed3bb7b55f3ac77,
        },
        r1a1: u288 {
            limb0: 0x5a0cee70eb6ff5d375f117b1,
            limb1: 0xf9a51960cd4f2e31f19989cc,
            limb2: 0x111780ddf975356f,
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
            limb0: 0x7b801106a9bd003b31b54894,
            limb1: 0x9728cc6050567d482a286f09,
            limb2: 0x1acb00e38ce45d64,
        },
        r0a1: u288 {
            limb0: 0x316faf91fa295f478206adcb,
            limb1: 0x443ca07ce5cd0168a9e0928a,
            limb2: 0x1d2add8ea43d552,
        },
        r1a0: u288 {
            limb0: 0x76cecfc0e118e4e0a9c5d4eb,
            limb1: 0x1811bcf243667dd292515dc3,
            limb2: 0x2552bdfe5dcd25d6,
        },
        r1a1: u288 {
            limb0: 0x6dc0caa5d705f19d0f50bf,
            limb1: 0x13fa85d54b4be4ef7709f92,
            limb2: 0x2d71b1e4eac242c3,
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
            limb0: 0x5700fc772d51a2aee97fc947,
            limb1: 0xa4358bbd81f507cbb8fa9414,
            limb2: 0x37213ac0380a729,
        },
        r0a1: u288 {
            limb0: 0x7e8ae3c61aa378d98954c67c,
            limb1: 0xfb0f10d82b3b55913b067e04,
            limb2: 0x2cabeb298bf32f49,
        },
        r1a0: u288 {
            limb0: 0x9b353b671f78962c2f93e4a2,
            limb1: 0xca6648ecf55368b1ff5ba098,
            limb2: 0x96cc451ff4972ea,
        },
        r1a1: u288 {
            limb0: 0xf09e732b535dd0bf7e8ed0f8,
            limb1: 0xbeda3b0325699b7b07a3d314,
            limb2: 0x1edc7af081be9e3c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd34722a67a8b615cf71f3bca,
            limb1: 0xc711f0129e866ca0e0253c66,
            limb2: 0x215a5cc87a065360,
        },
        r0a1: u288 {
            limb0: 0x432bbbc1769b1a5af805c98d,
            limb1: 0xbe21fe8346dbd2260b683ff1,
            limb2: 0x43ccc5fbbc6fdc7,
        },
        r1a0: u288 {
            limb0: 0xde38c3293ece730848896a27,
            limb1: 0x5cafa556fcabb93f28ea4e5a,
            limb2: 0x27b134cc4032208c,
        },
        r1a1: u288 {
            limb0: 0x99aa8f0fad456a9855dfbd6,
            limb1: 0x863db1b46eb67b0c7df5c527,
            limb2: 0x5bfc3955559ec04,
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
            limb0: 0xc5e170876a667ddf4ef94805,
            limb1: 0xea3fb1bc32a81732502b214c,
            limb2: 0x84356c1fce5cab,
        },
        r0a1: u288 {
            limb0: 0x9e9daf9ca314c50b27af06e6,
            limb1: 0x24c8b801d59dd197af968518,
            limb2: 0xeee3647557e8625,
        },
        r1a0: u288 {
            limb0: 0xb4e3bce2c36692eac2fa6a9f,
            limb1: 0x2c0ec8972583b1d3c460dbcf,
            limb2: 0x2c456a1702c2692,
        },
        r1a1: u288 {
            limb0: 0xf0056f344b557af52fff8a04,
            limb1: 0x93083e1c653d8d6045799181,
            limb2: 0x1a426d8a939c355d,
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
            limb0: 0x6bdcbd1371c01f71c71dbbe3,
            limb1: 0xa0336995873fed2fd5ba2562,
            limb2: 0x19505bb42bafd5e7,
        },
        r0a1: u288 {
            limb0: 0xc1ccd2919fb05a1164384706,
            limb1: 0x1d83117d2d016554a43146d4,
            limb2: 0x1417f6df2996902,
        },
        r1a0: u288 {
            limb0: 0xaadeaa9955de684b21376e8f,
            limb1: 0x3353153a4a1feb4a62fd6f6b,
            limb2: 0x27f4cb821ac06547,
        },
        r1a1: u288 {
            limb0: 0x86fdd70ef8c3fb822a35b45a,
            limb1: 0xd315d60df9f20600bc2e0e6e,
            limb2: 0x3036a11b1d81cd50,
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
            limb0: 0xdb13272ee48425ec240493c3,
            limb1: 0xc8d459e58e54c16c1198eb16,
            limb2: 0x2aea5be927834885,
        },
        r0a1: u288 {
            limb0: 0x488b2c9a8f6aad5110c0e4be,
            limb1: 0x1c064a202d6bb666f247b977,
            limb2: 0x18418fcf104bb350,
        },
        r1a0: u288 {
            limb0: 0x6afab8f4a6f21b93d788f202,
            limb1: 0xc701cee7935d143f59052906,
            limb2: 0x18ac03093871463c,
        },
        r1a1: u288 {
            limb0: 0xbc3210fb49c66a42d30629fa,
            limb1: 0x8769543df0fdee7ac4003f00,
            limb2: 0xd8e07f34d93efdf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2435dd12f69296b0c325f03e,
            limb1: 0xd8112f61dfb33c84620c4e97,
            limb2: 0xfcceb7d9c44a9e,
        },
        r0a1: u288 {
            limb0: 0x10fb9b34291b82ae0c6d141b,
            limb1: 0xa6ce456a44825fe5c356081b,
            limb2: 0x16e3989ce20379db,
        },
        r1a0: u288 {
            limb0: 0x3af92ad6bda597d8f0c19c27,
            limb1: 0xb717ea521e63fead39648c91,
            limb2: 0x2e2f22e009e78c01,
        },
        r1a1: u288 {
            limb0: 0x12b7d62ba39bdc8c09819198,
            limb1: 0xee37db670234ced70359ee72,
            limb2: 0x228f460cea3dcd1f,
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
            limb0: 0xb01a003937226bead0416c94,
            limb1: 0xa6f91443b654a01eea01b813,
            limb2: 0x11c811498a8b36ba,
        },
        r0a1: u288 {
            limb0: 0x73c465f5c073b2c7696bb234,
            limb1: 0x5938f8835fac33c314fabfef,
            limb2: 0x113e6e337e94c9e3,
        },
        r1a0: u288 {
            limb0: 0x867ccb21230457d75ce0975b,
            limb1: 0x19fe1c915e7ad996d61e9d99,
            limb2: 0xd74c3263d8aa873,
        },
        r1a1: u288 {
            limb0: 0x800ce5e2123bcfcd7dc83c9a,
            limb1: 0xf0866789f79059913a93c974,
            limb2: 0x6032d44c9c76b5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9816a2c02c46c084afcf96e,
            limb1: 0xaf489ee16320886a7d3b44d1,
            limb2: 0x2141cc971d0e40f4,
        },
        r0a1: u288 {
            limb0: 0x3fda45b9fe55dbdea9fe9569,
            limb1: 0x7dbf8d13477ee8c858ffd55e,
            limb2: 0x25b63ad6501aae48,
        },
        r1a0: u288 {
            limb0: 0x106ed45a6135010f5e57bbcf,
            limb1: 0x94bb8df6b31b7501e1d707d0,
            limb2: 0x1c62a89076ac1a10,
        },
        r1a1: u288 {
            limb0: 0xc6b0a5aed45cac2b7ee2e6c4,
            limb1: 0xb9369a13b31103e76e7ea23f,
            limb2: 0x25e8361a8bd74d8,
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
            limb0: 0x1729dcacc718dca6000c61df,
            limb1: 0x8acac8e137290e93b15240fd,
            limb2: 0x278b3559fde44ea8,
        },
        r0a1: u288 {
            limb0: 0x1d98d1d3b524150edf31285f,
            limb1: 0xa3b88b455de063b428277d8e,
            limb2: 0x2e29fcf72b7fab7d,
        },
        r1a0: u288 {
            limb0: 0xc6fc0c7753f5a38833523a31,
            limb1: 0xba3dccdb2f6e4000cd9d8a4c,
            limb2: 0x17e0235bcbb9cb0e,
        },
        r1a1: u288 {
            limb0: 0x906fe51ebe52ef853ae3c117,
            limb1: 0x17aa81b26660a87c9ec0b69f,
            limb2: 0x1c095ef1e12b82d3,
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
            limb0: 0xeba6ee0ba881d35e0746b46b,
            limb1: 0x3743a7f052fcb19dc9ffb2f3,
            limb2: 0x12129f9a06bb726d,
        },
        r0a1: u288 {
            limb0: 0x98353b48b45298e6af5ca0e1,
            limb1: 0xea304a43a6adef45891d98d5,
            limb2: 0x240c16a310169baa,
        },
        r1a0: u288 {
            limb0: 0xa8680b70bffdcba918cd1ead,
            limb1: 0x13e79990f2ce7c2614926895,
            limb2: 0xfa270300a0e3b03,
        },
        r1a1: u288 {
            limb0: 0x30a9d31a618622487af3af41,
            limb1: 0x3995c8166c2180239a622906,
            limb2: 0x202926cc1e6ef564,
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
            limb0: 0x728407ebd48ce1f90a1149a1,
            limb1: 0xc0a35907c30bec2a5353d79a,
            limb2: 0x29d413d4fa819f5d,
        },
        r0a1: u288 {
            limb0: 0xd55389c648839eeaf6803ef,
            limb1: 0x8d4a8e8f148ab555562f483d,
            limb2: 0x226d603e582a715e,
        },
        r1a0: u288 {
            limb0: 0xb8fbad9549e92e4b4974513,
            limb1: 0xe109ae424efc2a99bcee5f29,
            limb2: 0xe34211b2580ce33,
        },
        r1a1: u288 {
            limb0: 0x6c0e68995ae14260cc9c3169,
            limb1: 0x63038ee8717bfa0e5e9e7bdc,
            limb2: 0x197a3992e771b11c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8465faf06166df33a361c72,
            limb1: 0x2d84e7658ffb4da18016597,
            limb2: 0x10368a488d691506,
        },
        r0a1: u288 {
            limb0: 0xedd6511c1035ed3fce9b4c7a,
            limb1: 0x9b3bf89fb0fade86e751a665,
            limb2: 0x12f47ea6085499f7,
        },
        r1a0: u288 {
            limb0: 0xa5b7106cf4595aa711ea7ac,
            limb1: 0x4617774cb78cf01f3e21a2ba,
            limb2: 0x1dc6ebb0bdf93c7e,
        },
        r1a1: u288 {
            limb0: 0xd69185f7d19510fb350f0138,
            limb1: 0x8fe0523aee778e678fa4e0c6,
            limb2: 0x17734299885eeecb,
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
            limb0: 0xd3bb1851de7c7280855856a,
            limb1: 0x49ff15765ee3412e73c99435,
            limb2: 0xad123857e8ad4c1,
        },
        r0a1: u288 {
            limb0: 0xfdc0833455580bfe840013be,
            limb1: 0xda51441a2bd3e889ce8d82ab,
            limb2: 0x2eb005ea0ac619e2,
        },
        r1a0: u288 {
            limb0: 0xbe9850c0ccd0b9830a2cf31c,
            limb1: 0x4ba276ce2c5458438d2a2722,
            limb2: 0x1479a42d1ae2f6e2,
        },
        r1a1: u288 {
            limb0: 0xa3e14f4d242df07cf7d39246,
            limb1: 0xfbf4f5aad0006fd8593ac310,
            limb2: 0x21fe8e01d299c223,
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
            limb0: 0xf43b141ab51de7582b087265,
            limb1: 0x69f9b975134349a9c85191fd,
            limb2: 0xc503d2073e3a225,
        },
        r0a1: u288 {
            limb0: 0x7edf01298333910a93480392,
            limb1: 0x80c4726874641b47f5e3c1c6,
            limb2: 0xc21c0a3194204e1,
        },
        r1a0: u288 {
            limb0: 0x2146652a207f1b99db63a915,
            limb1: 0x13399246219a99db61290742,
            limb2: 0x17f15c1a2e74224c,
        },
        r1a1: u288 {
            limb0: 0x21b9f892a9a2aa44afa6cd20,
            limb1: 0x2e7a239bcac922fdb812fbbc,
            limb2: 0x29b084a0000398e3,
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
            limb0: 0x705396b7814382526e311b24,
            limb1: 0x9ac389adc6bf0983a3f66be1,
            limb2: 0x1c9bf76c9665372d,
        },
        r0a1: u288 {
            limb0: 0x2264f10a5b28be8f393f423a,
            limb1: 0x978f745faedf750e1bd4107,
            limb2: 0x1217b415f02873c,
        },
        r1a0: u288 {
            limb0: 0x17239cd6f61317159f2cbf97,
            limb1: 0x7bfdbce3d6b89da29dbad833,
            limb2: 0x118bf026c050037,
        },
        r1a1: u288 {
            limb0: 0xe5b7e2527c2d0de9f34416d6,
            limb1: 0x49bcac5697caa7730e91d745,
            limb2: 0x4676d2355ee71dc,
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
            limb0: 0x748abdc819b92a93d8b1cec8,
            limb1: 0x2b4d6f13be2e2b2b80ee7db5,
            limb2: 0x2d892596b7e6ed3a,
        },
        r0a1: u288 {
            limb0: 0xb0ca5fea2fccd81328a0c9d1,
            limb1: 0xac448bf38feb11357f13fceb,
            limb2: 0x2eb7ce35a12b072c,
        },
        r1a0: u288 {
            limb0: 0x7545fc321e678913e97ed10c,
            limb1: 0x74beb8160a698a2eb2edcbd5,
            limb2: 0x2344a55ac077b7dc,
        },
        r1a1: u288 {
            limb0: 0x31c80f81ecccc3c179909eeb,
            limb1: 0x5dac6c33d75588bb8cb1ac9b,
            limb2: 0x144381ff54fb5678,
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
            limb0: 0x7c7827ccf24d1c27343f2801,
            limb1: 0xdd2165b226d5b73644d7757e,
            limb2: 0x1bcad415f52bdb34,
        },
        r0a1: u288 {
            limb0: 0x42f47dce81615d721bbf11f3,
            limb1: 0xaa7a16b447dd23198c1d9e92,
            limb2: 0x166b338b0f86c7e7,
        },
        r1a0: u288 {
            limb0: 0x1588660700cf1651135e519,
            limb1: 0xdb383558da41789d157f01e9,
            limb2: 0x2513705f0d499239,
        },
        r1a1: u288 {
            limb0: 0xc44a9138ae3b20aba42a482b,
            limb1: 0xf15fdf198e6c9e1a22aee69d,
            limb2: 0x2ff6e9084c0888b7,
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
            limb0: 0x383e1f2e60f0322ffaa836da,
            limb1: 0x5876047bcb3cd77a1a0a7d3a,
            limb2: 0x2f8fd0280c087dd4,
        },
        r0a1: u288 {
            limb0: 0x8764cd7999aa44be53d468ea,
            limb1: 0xfa722b70b165edf9152b1b5f,
            limb2: 0x938358eb66871b,
        },
        r1a0: u288 {
            limb0: 0x498b4a6ab5e52b5282e1826f,
            limb1: 0x8fe42a5c6ec8b1fb885c80ed,
            limb2: 0x2d9dc9f6e3404c43,
        },
        r1a1: u288 {
            limb0: 0xb0d7a712b2cc74805c154b01,
            limb1: 0x4024826a7c093a67bd26eb7e,
            limb2: 0x298a81e04dd51e9f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf6b77b6a08900e05743baf90,
            limb1: 0x979f526ec11b86f0b71cc44e,
            limb2: 0x47a3073987a1d35,
        },
        r0a1: u288 {
            limb0: 0x18a4594ac04e446b21c2d57b,
            limb1: 0x2b7b8758feaaa91cd05a11e2,
            limb2: 0x313fb782fc715f6,
        },
        r1a0: u288 {
            limb0: 0x9d3627c82df796fe5a514f95,
            limb1: 0xf14db8552847c4e63917db80,
            limb2: 0x23afbf999e19e186,
        },
        r1a1: u288 {
            limb0: 0xbd29008561751cba4402bd2c,
            limb1: 0xea4c943b79fd9dde3435608d,
            limb2: 0x12201d8e4029c0c6,
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
            limb0: 0xd50279ad34365f9d79bb101c,
            limb1: 0x6893be4b7cf9276276f6a8e4,
            limb2: 0x1b974896b9841bac,
        },
        r0a1: u288 {
            limb0: 0xf5d19e80812fcba3f3cfa676,
            limb1: 0x9944fc9337536cfdb2e3458f,
            limb2: 0x1b5bad9283c6f8ee,
        },
        r1a0: u288 {
            limb0: 0xb68fbf9ebb9d6a51a1fd0201,
            limb1: 0xc3b4a31d8e5d808861d49b5d,
            limb2: 0x1137ae84cff998bf,
        },
        r1a1: u288 {
            limb0: 0x77cb686599f84f026dad6666,
            limb1: 0xd079d88b4d218a7045927e1d,
            limb2: 0x1e8a2c6c89349a29,
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
            limb0: 0xedc946889268185800f51f5f,
            limb1: 0xc22c39a8392b83d3e49b1566,
            limb2: 0x1ab38e853769540b,
        },
        r0a1: u288 {
            limb0: 0x43bca8cb4d83de0e94ad71b4,
            limb1: 0x10e2942a01e1d2958c67807,
            limb2: 0x93b7aeaa6f4f618,
        },
        r1a0: u288 {
            limb0: 0xc44270487d5c5211cb253768,
            limb1: 0xd37ec5a654d03bbde57e25b8,
            limb2: 0xd9c0085c0388273,
        },
        r1a1: u288 {
            limb0: 0xeb96303d2ef995ca20516d58,
            limb1: 0x6fdd9be05fc0711746df4f7d,
            limb2: 0x2ab75670f9884c70,
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
            limb0: 0xbed9ce4676fd6649be0388f4,
            limb1: 0x379e3c7191d009e66edbf38f,
            limb2: 0xd9ba2cc2e6485e9,
        },
        r0a1: u288 {
            limb0: 0x2bff6af4bbf66d76851508d2,
            limb1: 0x50524bb240192bb6ffe3c7f6,
            limb2: 0x106e6b196ea5ab34,
        },
        r1a0: u288 {
            limb0: 0x287be58426a03eb131625e51,
            limb1: 0xe22d19a655a6f9c2a749abd0,
            limb2: 0xd3ff4bcde2f7a0b,
        },
        r1a1: u288 {
            limb0: 0x6d7f19c49aba60ffec6adc9a,
            limb1: 0xb3ad4dd59f6e61905c57c062,
            limb2: 0x1fcc889e03b7c4e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3fb02824d593da80023c9ab6,
            limb1: 0xd3c7dbfe96d6b5f375967538,
            limb2: 0x1fd0e26554b8d80e,
        },
        r0a1: u288 {
            limb0: 0xaae836642d1d237a835fb76b,
            limb1: 0x1f864a7e7d8d9db641f7765b,
            limb2: 0x19e190a247931101,
        },
        r1a0: u288 {
            limb0: 0x8750b623dbe194e2b7e987d7,
            limb1: 0x216952bdfb05701098a002ed,
            limb2: 0x12bf37c08ac79d93,
        },
        r1a1: u288 {
            limb0: 0x7a06bba92867533ee6a5a26,
            limb1: 0x10418151d19a0e13e1a337b4,
            limb2: 0x272a9b96edf009bb,
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
            limb0: 0x5d8501cb5a154f66a72e587b,
            limb1: 0xad752a326b436d01dcbe5e2,
            limb2: 0x4a8b8abe6420d89,
        },
        r0a1: u288 {
            limb0: 0xd330c7df0597efa2ec0341a6,
            limb1: 0x2ee7a980509798abd5c9affd,
            limb2: 0x302bc99653f6c5ca,
        },
        r1a0: u288 {
            limb0: 0xc35da40430a9e5260268684f,
            limb1: 0xcab5e3aa95f3a0f289d7c398,
            limb2: 0x187058653bf04f4e,
        },
        r1a1: u288 {
            limb0: 0xe303196e296e884356c89f74,
            limb1: 0x1ea58c0459f9b4ca2490e4da,
            limb2: 0x2fc5603b23f31d0c,
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
            limb0: 0x628d6f8648b9d501a731eab,
            limb1: 0x6e65f1d8f7235203f85bb556,
            limb2: 0x1b11e3f1c2953c7c,
        },
        r0a1: u288 {
            limb0: 0xc8caf0fe481053fc0befd508,
            limb1: 0xd0714c03fe0a5584ebd6480d,
            limb2: 0x1c3399cc65310837,
        },
        r1a0: u288 {
            limb0: 0xedc8d0cc2c91346225adece4,
            limb1: 0x884caa528c17fbf624079164,
            limb2: 0x12c2e13ccc72377a,
        },
        r1a1: u288 {
            limb0: 0x6d8e372decefca4a4268684a,
            limb1: 0x53824b9b2320d72bb00752f2,
            limb2: 0x2a8a52895a0e5914,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4a8df6ef48dcb0fea6a7215f,
            limb1: 0x8ec35eed7e518459400020bc,
            limb2: 0x117d63c1a0d9bc60,
        },
        r0a1: u288 {
            limb0: 0x7d167cbff7a2f15294703426,
            limb1: 0x7dae4754bc23ba4894e7c1ff,
            limb2: 0x202e37323c66317a,
        },
        r1a0: u288 {
            limb0: 0xa3941ce5e351c12abd1e7e76,
            limb1: 0x6f864cd9bea8cc511be51bb3,
            limb2: 0x12191f62e6fc0d5,
        },
        r1a1: u288 {
            limb0: 0x9dff34d0d858a874e25d8dd4,
            limb1: 0x96462276503969878b50a665,
            limb2: 0x2f09c330a7e9eff4,
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
            limb0: 0xfe4c12d79f6367ee973cf79c,
            limb1: 0x8be6fd3d685be5842e12f464,
            limb2: 0x13c99a8cfe002dd6,
        },
        r0a1: u288 {
            limb0: 0x2f45bdd1d5b6b7f4a073f926,
            limb1: 0x3f323acfa3fffc37ec844b51,
            limb2: 0xff4ddd02ac20bea,
        },
        r1a0: u288 {
            limb0: 0xa87268f9b2ca7219db3b0b94,
            limb1: 0x7d86f2ca92d5064b75d9cbe5,
            limb2: 0x24f7bebe44a0b374,
        },
        r1a1: u288 {
            limb0: 0x3667841b49bbe04d239b269,
            limb1: 0x6e750d15f441d6ea296ef742,
            limb2: 0x7cc295cc0b586ed,
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
            limb0: 0xda365418a914e3bc2e92b74c,
            limb1: 0x45453e0c1ee4ee7553141fdf,
            limb2: 0x260ef42e1e3156f7,
        },
        r0a1: u288 {
            limb0: 0xcd815ffb15b06506c551091,
            limb1: 0x3faa7d22a379e9e036deb391,
            limb2: 0x1553ca0d57aa8481,
        },
        r1a0: u288 {
            limb0: 0x5c7adf7a37544b3b3cfcc9ed,
            limb1: 0xf2c40e07c5c823dd2417732d,
            limb2: 0x226dd850713eca5c,
        },
        r1a1: u288 {
            limb0: 0x79a00b1c6d83e9faa93a7a19,
            limb1: 0xc4187196bcee5cbe283c86c5,
            limb2: 0x161e896081123491,
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
            limb0: 0xf55e6341037f9e079b3eaaee,
            limb1: 0xe17187759b63399f008d1c4b,
            limb2: 0x2e924f6208de8135,
        },
        r0a1: u288 {
            limb0: 0x237566a4efc48006b0d544c4,
            limb1: 0x2c3cd12ab1aa0ad0285fedf9,
            limb2: 0x2d441798b7fcff8a,
        },
        r1a0: u288 {
            limb0: 0xa3090eec200012d20899322f,
            limb1: 0x5dc32cdafa49a7d436bd8f2c,
            limb2: 0x25e493423b854be7,
        },
        r1a1: u288 {
            limb0: 0x46906178d87d003e5f18857b,
            limb1: 0x804f0032c9f3b6b2300ef695,
            limb2: 0x1435390892d331eb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7d659a2a586df208c2480a53,
            limb1: 0xc46301500eace12d2eb10500,
            limb2: 0xe5ca1a4a03e4940,
        },
        r0a1: u288 {
            limb0: 0xe0b91756dbb36e482382813f,
            limb1: 0x40940976d669fa04a5df8d07,
            limb2: 0x250751d22d4d424,
        },
        r1a0: u288 {
            limb0: 0x397b46e4472ead44d7b155a5,
            limb1: 0xc9c0d0f7ab4e89d242464cd1,
            limb2: 0x3bb71df524f02dd,
        },
        r1a1: u288 {
            limb0: 0xc1039dfcfa5c03dd1e114c7d,
            limb1: 0x8b7b7de35c51f0ac5998ff4,
            limb2: 0x18c3aedf10cc255f,
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
            limb0: 0xd27f80af404d17f82c58566a,
            limb1: 0x28473a63967e22d5bf3f8bba,
            limb2: 0x3598c179d88dc4,
        },
        r0a1: u288 {
            limb0: 0xa7e69becac637e6e5fc10efa,
            limb1: 0xe50ac0a280555f42415c49d0,
            limb2: 0x272fe8aaf3397f98,
        },
        r1a0: u288 {
            limb0: 0x49bb4ebe6e1fbdd12db2dc3,
            limb1: 0x1791338522dda0c3a7b65401,
            limb2: 0x1504a574e64e320b,
        },
        r1a1: u288 {
            limb0: 0xd83a80ff99413d63ab7cea2f,
            limb1: 0x10c5ac052e2531d41bbcc195,
            limb2: 0x1bb4953576f6c66,
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
            limb0: 0xc22e0ceb2005c0d9453e54ce,
            limb1: 0x9bd1b4e30285223ecf91ce96,
            limb2: 0x1eed8bd9b29896c4,
        },
        r0a1: u288 {
            limb0: 0x3b4e466289b745278c19bdeb,
            limb1: 0xd5dd8f482e0c5138730e0801,
            limb2: 0x1a3638ac95eb60e5,
        },
        r1a0: u288 {
            limb0: 0x14c5a7eb873030d9e47a72e6,
            limb1: 0x3ffa36dc86ce50b46c817e34,
            limb2: 0xfc31a7579471e03,
        },
        r1a1: u288 {
            limb0: 0xf30a90feb241578b61ec795,
            limb1: 0xf7900da87f2a8ffcd36f8751,
            limb2: 0x1d27ae27a4e57be7,
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
            limb0: 0xfb33f96953964e17eb89b8ff,
            limb1: 0x73a7f17b548bb4d04f3e9cb6,
            limb2: 0x2d50aea6804177be,
        },
        r0a1: u288 {
            limb0: 0xb3b2cd5e88f1f0bfbae85b00,
            limb1: 0xe6738ffa3d53ceb5bfff8380,
            limb2: 0x107cc9616e54408a,
        },
        r1a0: u288 {
            limb0: 0x5ef8326bbef6d22d66afb0be,
            limb1: 0xc8f4d333a0041c7162ffac4b,
            limb2: 0x924679e68d832cd,
        },
        r1a1: u288 {
            limb0: 0x5985d894bd5c05b3a786721a,
            limb1: 0xc7e0ae7438f49b12fdf25898,
            limb2: 0x19cf01da88ab4608,
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
            limb0: 0x3cc664a2f63a38dc2524d938,
            limb1: 0x9f816f64724a863992a9d8a8,
            limb2: 0x25bea9f28ee5d81b,
        },
        r0a1: u288 {
            limb0: 0x6f29c20465d4d56f438ecca0,
            limb1: 0xf986bd4f20c99f2d1b66dffb,
            limb2: 0x800957363e5560a,
        },
        r1a0: u288 {
            limb0: 0x404520f1bd8549ae29908ab1,
            limb1: 0x32a9ed636af4cf6de073f817,
            limb2: 0x1aa1d82c023db655,
        },
        r1a1: u288 {
            limb0: 0x652efb1078a71bc801bbcae9,
            limb1: 0x2fcfb2e017431b53ace363af,
            limb2: 0x1bce8ba71105ce62,
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
            limb0: 0xee2dced81cde286b6502aba,
            limb1: 0xd7716e1f53484ceece65ae42,
            limb2: 0x367df44c11383ab,
        },
        r0a1: u288 {
            limb0: 0xbb1ebc9f538ccaa87c66da6c,
            limb1: 0x4dfe0d1a9d6affda310cd220,
            limb2: 0x1444f088e8f5c7d6,
        },
        r1a0: u288 {
            limb0: 0xd5ecd1ba2c099b22955b0290,
            limb1: 0xb1add764c85cda0480ed77f8,
            limb2: 0xfbbc3b644ae0186,
        },
        r1a1: u288 {
            limb0: 0x814f0b1e6203771cc96faf37,
            limb1: 0x4f9e23cd6880404388dc8e13,
            limb2: 0x15d4b923ce72f13e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb01616caf6793b4fa0cf35a4,
            limb1: 0x9114c398d6a097f63773349a,
            limb2: 0x23494d277fa15fb5,
        },
        r0a1: u288 {
            limb0: 0x9c333292ffb3dbb560e2b284,
            limb1: 0xed3257850f1d33bc4e9474e4,
            limb2: 0xb6feadd1defc869,
        },
        r1a0: u288 {
            limb0: 0xa20a97380a99da4d009c5d12,
            limb1: 0x4934882d29546d13721208b3,
            limb2: 0x151949bf1b14ef5d,
        },
        r1a1: u288 {
            limb0: 0xf41a2884981d07ce4dcf7b2e,
            limb1: 0xab4c006b44bb97c14acea786,
            limb2: 0x700e7680f465bc7,
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
            limb0: 0x40ba5c9b772943d61ad07ca7,
            limb1: 0x759dddaf1e374e54d7912f80,
            limb2: 0x1b63dcd2285c052d,
        },
        r0a1: u288 {
            limb0: 0x57284c8b86aa289be060cab4,
            limb1: 0xa8cd05dbfcb3254423d2d17e,
            limb2: 0x1655ccdb38495371,
        },
        r1a0: u288 {
            limb0: 0x5bc9534d92acdfc3f27e3e9a,
            limb1: 0x9f8a1f5d94887fa3dd8c16ed,
            limb2: 0x1f8cd881ccd41eb5,
        },
        r1a1: u288 {
            limb0: 0x9c3a442db160425fa6a1569c,
            limb1: 0x1411678792ec01078b809af2,
            limb2: 0x1d1665b1ab40bccb,
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
            limb0: 0x161d424612927aa22c4391f8,
            limb1: 0x395c3a5701532026b1a3dbfc,
            limb2: 0x8ff0e51bca7b58d,
        },
        r0a1: u288 {
            limb0: 0x5f3d20b39181c705de6ece4,
            limb1: 0x43694b74118c5a77da4d9371,
            limb2: 0x1d82249710c08384,
        },
        r1a0: u288 {
            limb0: 0x439eff3405062dd2c396c61e,
            limb1: 0xd04c01d656f07cbad3949c30,
            limb2: 0x113ef3a3f3c77b46,
        },
        r1a1: u288 {
            limb0: 0x2af207706c91f0de1e14efb3,
            limb1: 0xd2e64ecabc2348739b30897f,
            limb2: 0xc3d21fd19b6f4d5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa74ecc323192cf4e06fd096a,
            limb1: 0xfff84c4c555c94c6ebff4258,
            limb2: 0x1225aa9134ad2b30,
        },
        r0a1: u288 {
            limb0: 0x3347a2d78f81a6acb01f4281,
            limb1: 0xaabd4359e85e453bd612ac2b,
            limb2: 0x1e3aa7499734c667,
        },
        r1a0: u288 {
            limb0: 0xd4a4e6720187ae2644b4e801,
            limb1: 0x53080fe7c8768c331a1f7bec,
            limb2: 0x1ad8f3ac8e5c295d,
        },
        r1a1: u288 {
            limb0: 0x67756d2b8132ce09cf115508,
            limb1: 0x4a0c8ef3afd8d9deb293e297,
            limb2: 0xb0cd4131961bbe6,
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
            limb0: 0x361cd1ca5aa15ed929bc76dc,
            limb1: 0x56e57b3a46a474cbdba262f8,
            limb2: 0x151e6a8eda422439,
        },
        r0a1: u288 {
            limb0: 0xafa0af272baadb4fd7c1386b,
            limb1: 0x9ed3ce42c0152b32260919b5,
            limb2: 0x1c0e6680b1317ca4,
        },
        r1a0: u288 {
            limb0: 0x713d3e4aa47ec2b48c555689,
            limb1: 0xf3543fd069beee9551de1a58,
            limb2: 0x2718a3dba2843e14,
        },
        r1a1: u288 {
            limb0: 0x4074c6e40d5eaafa79125acb,
            limb1: 0x87f13ce69d41effdbf981b1c,
            limb2: 0x64013bc49ec9ab9,
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
            limb0: 0xf78ddf3cbb9f3f544de41ae4,
            limb1: 0x82a6f04c72b29ccb889a52e4,
            limb2: 0x27c9a630240b7219,
        },
        r0a1: u288 {
            limb0: 0xc6f40456c6ad715acb0d98ff,
            limb1: 0xaf0ff3a26397f7ecf410edb7,
            limb2: 0x2cd9dfcb95b1c3a0,
        },
        r1a0: u288 {
            limb0: 0xe55a50efcff2f30407f4f9af,
            limb1: 0x40eeddf74d886d90d0d7e4f3,
            limb2: 0x57f40e42bc9b004,
        },
        r1a1: u288 {
            limb0: 0x8a4a844a910f1994ae21d000,
            limb1: 0x4ec4ea3ae697058365762da0,
            limb2: 0x1950b0fd885ea82,
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
            limb0: 0x20add1a2277ac5269f55ef28,
            limb1: 0x6b5cd655b3c30660d3d0594,
            limb2: 0x27e9cc014a527991,
        },
        r0a1: u288 {
            limb0: 0x189aaba83e2343dd92118bd7,
            limb1: 0x289a2bb4426d0a5b2721310d,
            limb2: 0xa26877ca659356e,
        },
        r1a0: u288 {
            limb0: 0x1089a108457e2feaf79f8554,
            limb1: 0x67f151ac8a8a938e1b07fd77,
            limb2: 0x11e8c89027395dc3,
        },
        r1a1: u288 {
            limb0: 0x4d914940f7356e1fe4e6c83e,
            limb1: 0x9cdd6cdc08c5de8ca4fb6b74,
            limb2: 0x2626b34cbd734bdb,
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
            limb0: 0x4d2ae5f7c83edbccb1ce12c2,
            limb1: 0xddf1c03a165a42c0ad48d742,
            limb2: 0x1de8c9c284191209,
        },
        r0a1: u288 {
            limb0: 0x9b22e816745e08aa4804b4c6,
            limb1: 0x3746f458a2ab96bf9d638af2,
            limb2: 0xa6a5b48bf4304e2,
        },
        r1a0: u288 {
            limb0: 0x24c36e45f11d0730ea49a7c2,
            limb1: 0xc0fb970c6382653cba922bc,
            limb2: 0x2cc2e3dba409c115,
        },
        r1a1: u288 {
            limb0: 0x57884a4dafb581b6ad016d5b,
            limb1: 0xe844984efdfbfcadbcf4165a,
            limb2: 0x79d5cd0f903a099,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7258df13c2a5f4a03565a11a,
            limb1: 0x4764dbed259dc85a68043fa,
            limb2: 0x24e685d622738a02,
        },
        r0a1: u288 {
            limb0: 0x3788508de5dd398a6f1086dc,
            limb1: 0x1ae861e959b4d39fd1ccee41,
            limb2: 0x11ee2c05224f2ab4,
        },
        r1a0: u288 {
            limb0: 0xe4c36650c38f55f4dc14fb34,
            limb1: 0x9231c12c92d265097c7879c4,
            limb2: 0x2ce5587da0d12773,
        },
        r1a1: u288 {
            limb0: 0x6c5f7dcb24b8068241f88e3a,
            limb1: 0xbcc8ec711f351e54a7a6320c,
            limb2: 0xc9c9dd25c1285d4,
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
            limb0: 0x2e4696c2742577a666903b8a,
            limb1: 0xe95cb5164da2b683aa4d7c0b,
            limb2: 0x1cf81b9de02a0a72,
        },
        r0a1: u288 {
            limb0: 0xb1f2afd2cf57fcae79686bca,
            limb1: 0x15a9aeb24348c78589da96cb,
            limb2: 0x2fa3df38722ca651,
        },
        r1a0: u288 {
            limb0: 0xd0665abffb4875a7d62a53e5,
            limb1: 0xd6b27fd3e7d5001b969e710b,
            limb2: 0x26552e748fe60505,
        },
        r1a1: u288 {
            limb0: 0x1898cd8f025d4c722263be88,
            limb1: 0xc3938d7d9d2368c53a881410,
            limb2: 0x2b27a1186fe95795,
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
            limb0: 0x47868695cbf0097fe7e1b2b,
            limb1: 0xb2fa43b394db6db25c032f06,
            limb2: 0xe0025ea00c10dda,
        },
        r0a1: u288 {
            limb0: 0x6cfbcf8f6e22db9b38e345b1,
            limb1: 0xd758583f70c5d0783fd70c21,
            limb2: 0xa0ee654df6ef587,
        },
        r1a0: u288 {
            limb0: 0x19da00831e834d8e19b592ed,
            limb1: 0x4b394c67eee696c3a120e5f9,
            limb2: 0x1c768876c63eb534,
        },
        r1a1: u288 {
            limb0: 0xc29a11b7874b2b716d9cf60c,
            limb1: 0xc2e9b74032ef33471cf4e697,
            limb2: 0x12b2b767371960e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8540f40e56c4da6809bf8537,
            limb1: 0x2730b30c0def88c6420dbf0a,
            limb2: 0x50872a700ca7de0,
        },
        r0a1: u288 {
            limb0: 0xc6226a2eb28ac79945bc59cf,
            limb1: 0x14a9720c12c35d339c951807,
            limb2: 0x2f83b45770b92419,
        },
        r1a0: u288 {
            limb0: 0x6a6502baafb8ab9addc263c5,
            limb1: 0xab1b21e1f446fbac68c6106e,
            limb2: 0x970f2f188a96df6,
        },
        r1a1: u288 {
            limb0: 0xb5bcc3318cb7d4b03c231759,
            limb1: 0x97a5ff7d983f263efe9b491a,
            limb2: 0x156c229ce2881d60,
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
            limb0: 0x2044c366ea23fe8f3aa5697f,
            limb1: 0xf6fc6ab926cfcd0f61e2c39,
            limb2: 0x275c4b0f9cc2e243,
        },
        r0a1: u288 {
            limb0: 0xff6ed06939fc31a0bddb9939,
            limb1: 0xaa3f0361b7d25139a4fe0f2f,
            limb2: 0x2d14f860923edef4,
        },
        r1a0: u288 {
            limb0: 0xa699cad0d270c2469550b78d,
            limb1: 0x3f633804edae1ea2848ad228,
            limb2: 0x4f783ea1bcf640,
        },
        r1a1: u288 {
            limb0: 0x87d03b1fba981852cf53dfdb,
            limb1: 0x15a83dccfd1642ee12038432,
            limb2: 0xcccc0853fa4a84e,
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
            limb0: 0x111981fedace7f27352d65d0,
            limb1: 0x8e39e56f63a661d3ac770c99,
            limb2: 0x2b08948a8395ae3f,
        },
        r0a1: u288 {
            limb0: 0x9eb5601dd82170cd02e23bcc,
            limb1: 0xf1dca6bcaff51130c8dcc1f2,
            limb2: 0x107742e956d49eb4,
        },
        r1a0: u288 {
            limb0: 0xd4fd2a061f0e4ab4afe0d5ed,
            limb1: 0x51f83a7ee8edfa1e632c116,
            limb2: 0x24647cbe998ac011,
        },
        r1a1: u288 {
            limb0: 0x8a436766f8509117b97f6c99,
            limb1: 0x2a3fe630b3febb944809c9fa,
            limb2: 0x15352cad09a3b281,
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
            limb0: 0x8ca39d2b9eec0466b56f60cf,
            limb1: 0x8553928bdd471fec78dcda32,
            limb2: 0x2e3e945a49ba64c2,
        },
        r0a1: u288 {
            limb0: 0xfcc38c7c70e6ef356124a5b7,
            limb1: 0xb42c00a94f78b4a8eefe017c,
            limb2: 0x20f083d88672bbe,
        },
        r1a0: u288 {
            limb0: 0x8399da2216305ad1acbd0d12,
            limb1: 0xee1ea663565e819d60946c14,
            limb2: 0x2a4c8fa130b811b3,
        },
        r1a1: u288 {
            limb0: 0x1e57a922c6a53cb3727432b9,
            limb1: 0x1d04089b8d3324de653d4193,
            limb2: 0x857683006ea3ba1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x90e93013e09bb33585b65435,
            limb1: 0xe8f6978fd63ac27f3357f16f,
            limb2: 0x14273f5245c5f5c9,
        },
        r0a1: u288 {
            limb0: 0x524113736e17a73e0e10fc66,
            limb1: 0x67704a47bee068fdbb23dfe0,
            limb2: 0xb3ef12e9893fdb1,
        },
        r1a0: u288 {
            limb0: 0xc8856b3285f7be33e4da88ce,
            limb1: 0x5073d8e4adb1ea91fd1f8714,
            limb2: 0x23c550f4d314d970,
        },
        r1a1: u288 {
            limb0: 0xea0cf3f0772ed17b4377a407,
            limb1: 0xe0814821a58374b5512c201f,
            limb2: 0xa8eb12a055c55c0,
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
            limb0: 0x783c69dc0b003b3238038b49,
            limb1: 0x66ab57a85a5010b476de4aaf,
            limb2: 0x16d24e5d51af3c92,
        },
        r0a1: u288 {
            limb0: 0x4b3b5beb1305b0f2f6ec7940,
            limb1: 0x5ee3157c0d38379bd4a4eed2,
            limb2: 0xd5a11327f623302,
        },
        r1a0: u288 {
            limb0: 0x41209ca4d239010e194b704e,
            limb1: 0xd1c9fb2d4d278a48fabd5c57,
            limb2: 0x172289af4217cd61,
        },
        r1a1: u288 {
            limb0: 0xaa3ab2eab6291d3b6b910f6,
            limb1: 0x8be25019fc702217cdb7bf80,
            limb2: 0x24bf5a1053fac31f,
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
            limb0: 0x8c9ef31bdd0914693800fe30,
            limb1: 0xa8336c922956937693022ad9,
            limb2: 0x173cf0b3c6d4762,
        },
        r0a1: u288 {
            limb0: 0xb38fe53f5cf55d9b0b76bb56,
            limb1: 0x4792ec1476119778567bcb4,
            limb2: 0x289dcf7d879a4641,
        },
        r1a0: u288 {
            limb0: 0xa2a6e112185bb5860f19e5,
            limb1: 0x382ad473864f9a7fa614a147,
            limb2: 0x1a492d007acdc3cb,
        },
        r1a1: u288 {
            limb0: 0x11652333af109b761c275440,
            limb1: 0x8105bdfca279e17f149eb7c5,
            limb2: 0x1d3676708715e65b,
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
            limb0: 0xd33b67ecf09d2665328817f4,
            limb1: 0x374f0d3db60d1c35014c3854,
            limb2: 0xc369f4f1faeeb53,
        },
        r0a1: u288 {
            limb0: 0xab16dedcb904797cb4e6741e,
            limb1: 0x91a1d94c3a98587baa1199c8,
            limb2: 0x3ce4683936c0db1,
        },
        r1a0: u288 {
            limb0: 0xdd97adcd459e3c247b7d790,
            limb1: 0x6eef8d75f3677e84da87cfd9,
            limb2: 0x2b7a1ae9e7875c60,
        },
        r1a1: u288 {
            limb0: 0xcf06966f72e467e4f0feea28,
            limb1: 0x30962f47aca34c595b83524e,
            limb2: 0x3aa4cb407d889fb,
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
            limb0: 0x7e818fa1cd66011692c4848e,
            limb1: 0x3e2a64f4fd548e88614accf5,
            limb2: 0x9d44e2d9224a85d,
        },
        r0a1: u288 {
            limb0: 0x9d04c9640d7988a000180989,
            limb1: 0x33908df32f82d6cc99a7092b,
            limb2: 0xb9d500eb5105b50,
        },
        r1a0: u288 {
            limb0: 0x83f8cd4cb2dd0108bfc585d,
            limb1: 0x47d51e7074d653d5aba3c79a,
            limb2: 0x171176e13d26dc8d,
        },
        r1a1: u288 {
            limb0: 0x63d7be2bd78c5e145b656749,
            limb1: 0xe045ba49c200b33585f679c2,
            limb2: 0x1c3aa7f77b85576a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa8fb9ff6a30ffca5f2211ba2,
            limb1: 0xcec86412a7b3a01239da41b5,
            limb2: 0x298a13069704f5e5,
        },
        r0a1: u288 {
            limb0: 0x86247f187312abb1c9b60f04,
            limb1: 0x6399e966007aa8b5917b7556,
            limb2: 0xf4fe03f5037e355,
        },
        r1a0: u288 {
            limb0: 0x90c2125f4564085164828990,
            limb1: 0x52abd235107f284f4ab915a8,
            limb2: 0xfa0f6d09ecf0ca1,
        },
        r1a1: u288 {
            limb0: 0xf179277a1dc5b60e923a6c37,
            limb1: 0x26b678f0365489d1183e69ab,
            limb2: 0x584d0ea9b33c09c,
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
            limb0: 0x5fffa92bf991cf1780af9e07,
            limb1: 0xf21fef0a39e6a307eea38b1,
            limb2: 0x2c0f3aa6563b8df0,
        },
        r0a1: u288 {
            limb0: 0xc4eb7966df63729c1fe260e5,
            limb1: 0xf040ccde987453cab61b7d8c,
            limb2: 0x2b3744f93d7fc514,
        },
        r1a0: u288 {
            limb0: 0x8c0697cdbd6ff6c33c4dda12,
            limb1: 0x1ae4fd9be4ec7a9fbbe7adbb,
            limb2: 0x57afeefba80af0e,
        },
        r1a1: u288 {
            limb0: 0x97308fc2177cc80285c59046,
            limb1: 0x4410a44823c7b6d06474e696,
            limb2: 0x1b0c05cf8ad6f156,
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
            limb0: 0x36328c92d8a92049202083ff,
            limb1: 0x979cdca3066a89f4b2bc6a7f,
            limb2: 0x98e1177f24c73ab,
        },
        r0a1: u288 {
            limb0: 0x60cc8f157414e7d74f4d9a47,
            limb1: 0xdb1ac32da351c5ee01255b3e,
            limb2: 0x6531189b21d5aaa,
        },
        r1a0: u288 {
            limb0: 0xe456e45fdc5060746e7fffc6,
            limb1: 0xb128661bd124c2334ddbcf53,
            limb2: 0x175aed9bb10f1d2d,
        },
        r1a1: u288 {
            limb0: 0xd9f706aef442916adb06fd83,
            limb1: 0x11281ff372a7cc9e965516e4,
            limb2: 0x78781e569609be,
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
            limb0: 0x523e85fba874552316057313,
            limb1: 0x990ce335028e4964e7e9c329,
            limb2: 0x2d1097ebb7864087,
        },
        r0a1: u288 {
            limb0: 0xd2bf8c3586bfab2b49d7f2f1,
            limb1: 0x6b4743c0aaf02a9bd0cbb0a7,
            limb2: 0x24599c84bcd68f3a,
        },
        r1a0: u288 {
            limb0: 0x7f28756adb7972739d8afa6d,
            limb1: 0x4b3f306c35be7f04b67d4942,
            limb2: 0x50cae6bc3635555,
        },
        r1a1: u288 {
            limb0: 0xf3429ff14eb75940dce094d3,
            limb1: 0xcbbea75adbb5b37d778bbbd2,
            limb2: 0xb382da157db8185,
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
            limb0: 0x9c3d8fcdd88e10c06849ce1e,
            limb1: 0xdba1bb58b00fb9c09df51063,
            limb2: 0xa690389f98fcbd5,
        },
        r0a1: u288 {
            limb0: 0xe91a62f5e46038177ee379e9,
            limb1: 0xc97226fd076324a3ddd1bd9e,
            limb2: 0x2e2cf558d8c9dbf7,
        },
        r1a0: u288 {
            limb0: 0x3565321cea2ef49e9cb43f5,
            limb1: 0xf288e55f9ad179b808caeb4a,
            limb2: 0x26116ba7f64eca31,
        },
        r1a1: u288 {
            limb0: 0xacd9adc6b75f51bdf1c34958,
            limb1: 0x962da633e1f16962eccc0d4e,
            limb2: 0x276b1dcb2eb2ea55,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6094172ca8a71d8282825a04,
            limb1: 0xe43e398fdb42dd97ef05652f,
            limb2: 0xeadc5aa16e544cc,
        },
        r0a1: u288 {
            limb0: 0x2dca803ff95f3653da01ce66,
            limb1: 0x941f2ec5be4377f1ffef965,
            limb2: 0x62601631d84e21,
        },
        r1a0: u288 {
            limb0: 0x235ec7132f29e2c3bf0a661c,
            limb1: 0xfc1c98526318b82aa7e3cc6b,
            limb2: 0x192cd33244dea310,
        },
        r1a1: u288 {
            limb0: 0xd03bd130eab4ebad487aeb61,
            limb1: 0xa2b5f6b766335b81f39424ba,
            limb2: 0x1953b67f74821048,
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
            limb0: 0xcd6f9a1b2e44caf9f2a7b24b,
            limb1: 0x2a7bfc6f10dc458e1e7234d8,
            limb2: 0x4889ac0974f3d6d,
        },
        r0a1: u288 {
            limb0: 0x5aace7824bdc553f37bfee1f,
            limb1: 0x34f41275b9409379fac43668,
            limb2: 0x1a9e58588ca6639,
        },
        r1a0: u288 {
            limb0: 0xf931e9ecc59f8551bf774240,
            limb1: 0xe38e7149d3b49b617d821cee,
            limb2: 0x24de294f3281faf6,
        },
        r1a1: u288 {
            limb0: 0x6ccfcb7aa47cf340574439e6,
            limb1: 0x9703a44a2f070c85839a7588,
            limb2: 0x2c20b1d74675ab2c,
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
            limb0: 0xd60dedacbca8da00115fee13,
            limb1: 0xfea2cc81830e10ef48e442d,
            limb2: 0x2766e3e9f0bcaf76,
        },
        r0a1: u288 {
            limb0: 0x9a41adeafabc4859c599b3bf,
            limb1: 0xb9ce7f4bbec9a9587a37bb61,
            limb2: 0x1fb59b53aaeb66f,
        },
        r1a0: u288 {
            limb0: 0xc7ae02e2001559d1bcd281b4,
            limb1: 0x26b78e5e13de971a29b1b982,
            limb2: 0x20cf7a83dfc31c09,
        },
        r1a1: u288 {
            limb0: 0x83c17f5b85902ec5d5c1232d,
            limb1: 0x4aab8a326c7a76fd2add1087,
            limb2: 0xd4534884e5cf607,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x86ceca5c4e60aff72ef0048c,
            limb1: 0x3a432d8f62cea624870c4f58,
            limb2: 0x2b363c560e21698a,
        },
        r0a1: u288 {
            limb0: 0x58b6b57b726bbeae00be3cf8,
            limb1: 0x9ab813b2db05d1b5371148fc,
            limb2: 0x2a9438459fbed072,
        },
        r1a0: u288 {
            limb0: 0x2e96688733cb434e023d0489,
            limb1: 0xfec9125a6d5fe80435414dba,
            limb2: 0x22f8e07f183e22d8,
        },
        r1a1: u288 {
            limb0: 0xd1b1cb01963c7c388a86f8ef,
            limb1: 0x8e907f56e67046d991d55341,
            limb2: 0x95094630d39e2d3,
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
            limb0: 0x3b47531897a5e13f081058fc,
            limb1: 0xf7e35ef2259c285c143b014f,
            limb2: 0x1bac2e0d1e1eb0c,
        },
        r0a1: u288 {
            limb0: 0x158a522f23ff8f9cd7f2c019,
            limb1: 0xe18c83a1099f3cfca4e2fb75,
            limb2: 0x19df1f67a05894f2,
        },
        r1a0: u288 {
            limb0: 0x3bb84bbe2192295e5a453d5b,
            limb1: 0x882faa7ac28f28e206c8aac6,
            limb2: 0x1101869674eec6d0,
        },
        r1a1: u288 {
            limb0: 0xb35d3b6f3c0b6e0465ee8d4c,
            limb1: 0xc95219e99ff34db9314ab95f,
            limb2: 0x6cceb46bdeb320f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x25863072a6ef970841b4dba,
            limb1: 0xe7879f3353f6dac8d019fc52,
            limb2: 0x23d271b6b1b090b4,
        },
        r0a1: u288 {
            limb0: 0x373c52993c56b3c2e1b20607,
            limb1: 0xdbef3a7768fbc6c1c638facd,
            limb2: 0x1d787140e05d58cb,
        },
        r1a0: u288 {
            limb0: 0x30ad70b7e305f9a19e71c0e1,
            limb1: 0x59f77c5bb10e3d75707775,
            limb2: 0x25c4ff4bf3aa198c,
        },
        r1a1: u288 {
            limb0: 0x42aab701c3761d88d2da86c7,
            limb1: 0xbf334ffeb5ed0269edfd42d8,
            limb2: 0x2cc7328d14b5b5a1,
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
            limb0: 0xffb25a53eef1a426ea64586,
            limb1: 0x48f78df2ce7a61a06ec30452,
            limb2: 0x23cc324cad587563,
        },
        r0a1: u288 {
            limb0: 0x8d881aa39d952feacfc3aea1,
            limb1: 0xff8e6b505480b4f75f301632,
            limb2: 0x1a5f41c8d6574c0a,
        },
        r1a0: u288 {
            limb0: 0x5d26f228aa7fe8ae8c26aef7,
            limb1: 0xcd76dc16ca1ac144d83a2473,
            limb2: 0x165392dc4e87ae89,
        },
        r1a1: u288 {
            limb0: 0x6cc6fb5dfc4fdd548400cffd,
            limb1: 0x4252e5a2f8c52ec316ac0f6b,
            limb2: 0x164b385ba7233464,
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
            limb0: 0x85e22861f12896486f86ceab,
            limb1: 0x9df177187f4501505dde5574,
            limb2: 0x2873539e0e489a0f,
        },
        r0a1: u288 {
            limb0: 0xc27035750b94e533a6c3c3f4,
            limb1: 0xacf0a37c53ae57650ec700e0,
            limb2: 0xda2400df13390bc,
        },
        r1a0: u288 {
            limb0: 0xe90967ee9f0c449590cdc777,
            limb1: 0xdfdb58ee995ba971e1f12764,
            limb2: 0x1bee49ed6cc0e6d,
        },
        r1a1: u288 {
            limb0: 0xb577759caf4b19dd95876649,
            limb1: 0x8a714d125302fd3215bf4a71,
            limb2: 0x2c267f52b400b65a,
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
            limb0: 0xb648363f321a2f1e5319db2e,
            limb1: 0x1ed12cf02c050f6e3a38c5d6,
            limb2: 0x2b0f90a95dd7e2cc,
        },
        r0a1: u288 {
            limb0: 0x664d1add16f0ab36f75f022d,
            limb1: 0xe84dce5bc3a3ccd2135ce8e5,
            limb2: 0x1f0079be3735a60b,
        },
        r1a0: u288 {
            limb0: 0x50a49dfe48ba2e330bccecf2,
            limb1: 0x922565a94a1b5a1828942d00,
            limb2: 0x23c86d1dda665361,
        },
        r1a1: u288 {
            limb0: 0xd23e269e3c9743c2dcb6f5f5,
            limb1: 0xeec7cf5d24304cd21bbe0b44,
            limb2: 0x73dba39886123a5,
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
            limb0: 0x6d6289335a64cb30ac479458,
            limb1: 0x128b794255f7367b2188dc05,
            limb2: 0x2950cfbfc8c05d6f,
        },
        r0a1: u288 {
            limb0: 0xee33d7e0004a006e56855b4c,
            limb1: 0x3a2cadf35e9d2868dd23d3c1,
            limb2: 0x241201687923e7a1,
        },
        r1a0: u288 {
            limb0: 0x5818e60bd388d2a38ad09142,
            limb1: 0xc3998d19dc26484f35fb7996,
            limb2: 0x1a1dacabee5d7549,
        },
        r1a1: u288 {
            limb0: 0xa2fba071aad0f20094ba8e5e,
            limb1: 0xc69b09f0798e23d367eca145,
            limb2: 0x86c0cc8bebfba81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc36e0c28e38cc1f2bb0878c,
            limb1: 0xd64c06e226aeb658cda60b5b,
            limb2: 0xa432c7d63405d7,
        },
        r0a1: u288 {
            limb0: 0xff0fbe45cb92e9b8e5c91548,
            limb1: 0x188a21899da94c53298f4c80,
            limb2: 0x707127d81fc78eb,
        },
        r1a0: u288 {
            limb0: 0x1edc4bcea5265534086789a6,
            limb1: 0x212a8fdf2408292b60662546,
            limb2: 0x27f050884846dd1a,
        },
        r1a1: u288 {
            limb0: 0x9073c268195521effd3d64bf,
            limb1: 0xd81ed2ce1cb4f9b75dd57985,
            limb2: 0x18fe436bc0d1cb5c,
        },
    },
];

