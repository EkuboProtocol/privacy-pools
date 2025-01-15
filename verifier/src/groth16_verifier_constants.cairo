use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x6eb8d1a618a835afa38984b5,
            limb1: 0x3e3491a9bd8eca602e03dff7,
            limb2: 0x9492812fc2b8b34,
        },
        w1: u288 {
            limb0: 0xa69ab012c07ad58deb982085,
            limb1: 0x1bc8d98c38d12468863da326,
            limb2: 0x3577cda3a7031f7,
        },
        w2: u288 {
            limb0: 0x42f50e4cdadf3e0664fc50e9,
            limb1: 0x580fe1f9d8885e07f342b818,
            limb2: 0x72e1b2968991640,
        },
        w3: u288 {
            limb0: 0x5ab9d8aa43b815dd4e9ff846,
            limb1: 0xfce981f3a962e06560415579,
            limb2: 0x2150bf832d1aa819,
        },
        w4: u288 {
            limb0: 0x9f954b254bbd877abf862378,
            limb1: 0x403dfe5a565cf707bc6fd492,
            limb2: 0x1005118d55419eb3,
        },
        w5: u288 {
            limb0: 0xda6df17a36d232c260f087e4,
            limb1: 0x7d2348f320bf14f2c219e036,
            limb2: 0x20f3d2a0ef6c4386,
        },
        w6: u288 {
            limb0: 0xc4ce0c1a5ad85e36aae89f41,
            limb1: 0xd10c9109c965be439a1dc213,
            limb2: 0x2fee209f7e931e7c,
        },
        w7: u288 {
            limb0: 0xd0ef9d2e163378e789d66b88,
            limb1: 0x52325f2f8f46740bab9fd12,
            limb2: 0xb00d253e2e4be3d,
        },
        w8: u288 {
            limb0: 0x753ac6d71ee9cb2a840bd825,
            limb1: 0x9e63d85f909173a112be3833,
            limb2: 0x79519ae40347c65,
        },
        w9: u288 {
            limb0: 0xcb5b4e0fb35eb75c2a0a4ef1,
            limb1: 0xa70623c88778334504d4c994,
            limb2: 0x249d3cc0a1d200e8,
        },
        w10: u288 {
            limb0: 0x48c513c3ba7ef6f3f542520e,
            limb1: 0xb7baaa4bb3e6073571949a7c,
            limb2: 0x302c65669e5ed069,
        },
        w11: u288 {
            limb0: 0x41f2eba200922b99e8501aa0,
            limb1: 0xda90efd0f1b7087a78ba891d,
            limb2: 0x23b8137d5ba1ff19,
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
            limb0: 0xed3ec3a5241f6c9107637524,
            limb1: 0x7dc173875b2a94f5966b1a2f,
            limb2: 0x4bd3495ce19baf7,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0xb7a61a8d669b1dbc3bd7fbd2,
            limb1: 0x68f99f6f1041fa5873535b60,
            limb2: 0x3001f18e0eb25da8,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xed8c34142858b36f0a5aa7db,
            limb1: 0xd68ccf442763d6835ece233e,
            limb2: 0x1b3abde101394986,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x1a36d5357cfcb2d96753b3c1,
            limb1: 0x649f5cd98982ef8382343fd9,
            limb2: 0x231df48f08aa35b4,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x4c06987d2e8b698b05a41e07,
            limb1: 0x4104d2a316917b11132539b6,
            limb2: 0xac720cce362556a,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x510d70a1e233559d530a5274,
            limb1: 0xed609cb814ec5d9ac049fc55,
            limb2: 0x2ffef6ba33ee6cb8,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x92cbf4f404f1fa9d7f0bb1c4,
            limb1: 0x9a124c841cb63ebb5a705768,
            limb2: 0x2f5c5d2e5539d548,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x993cd2b3f4e17e1a31783be6,
            limb1: 0xcfdcb8610b9a4becfd611d65,
            limb2: 0x2c5d32ce1fdfc2f0,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x40c677120d8c89d5192f0c0,
            limb1: 0xd69c16beb4113aa914519ef8,
            limb2: 0x253f83a5f4634886,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xa7d3156e74c5011ee158f88,
            limb1: 0x67b7884a35cc493cf36912ad,
            limb2: 0x28b9ecb223e7ffac,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xe4a844b5a37038864803321d,
            limb1: 0x7401577a2805489b95f3c162,
            limb2: 0x9f3632b8390a6e5,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe0771cc3f8f767f9616b6d6b,
            limb1: 0x8f5f1f9e9365ee850055cb55,
            limb2: 0x2015d6d3e1c98260,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xafa25df94b13eddbe7e280fe,
            limb1: 0x2d2293ef5c0263da75bcf840,
            limb2: 0x23dcd8da66ecc3ce,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xf3aa7c8a205d1c5c27dc3b59,
            limb1: 0x85b63a4ebc03bda2435dd8b1,
            limb2: 0xa0e52877a924e25,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xe413e7f4a2c6344c33e26ed0,
            limb1: 0x33cf128722d9940128e3b09,
            limb2: 0x17a602c068428f29,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x8529e17d258a8ee11d5c7ce2,
            limb1: 0xcb9cf30527c0499ab68e52b7,
            limb2: 0x78109dec327acf3,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xa170670d21128c8ce2f234fe,
            limb1: 0xd7552e0a87926a6c88f1ef6f,
            limb2: 0xb0d39f35d1e45c7,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x4e3819092898fb998530ccc7,
            limb1: 0x17fedd1ba63132bccd5aca38,
            limb2: 0x2bb1c9d6fbb3d3d9,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x4853d5496505f4c2c0674e76,
            limb1: 0x3567b22283df880043ee68e2,
            limb2: 0x184a6e1e19287478,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x205a6164ae5e202ccea5576e,
            limb1: 0xccbc2650b0ebecab4725738a,
            limb2: 0x2e1812bdeedf701e,
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
            limb0: 0x6d76c3069217f1f20c571a78,
            limb1: 0x81b40361d3bd6ae380a6b2a7,
            limb2: 0x16db367b9a870b82,
        },
        r0a1: u288 {
            limb0: 0x32405ab86c09dd1fdd9fc5db,
            limb1: 0x8c86eeabadb6c01e1a3496c2,
            limb2: 0x817b6d89a33ece0,
        },
        r1a0: u288 {
            limb0: 0x3762af2776708504d20a5845,
            limb1: 0x8e87d953a52b78e674585172,
            limb2: 0x221093a7b0e9e81b,
        },
        r1a1: u288 {
            limb0: 0xd532dd0edb6b63a4f41378ca,
            limb1: 0x318a89b7ca9308f2aef78d20,
            limb2: 0x220b17fa259682e1,
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
            limb0: 0xfafb0786aa089a24cc25e2cf,
            limb1: 0x369c4254adc3ed7a16dab7e9,
            limb2: 0x198917f746aa94a7,
        },
        r0a1: u288 {
            limb0: 0x36316fd4d016aef6fadd376c,
            limb1: 0x2bc9570ad3ca983f7d4cd3cf,
            limb2: 0x284c979a46fdb349,
        },
        r1a0: u288 {
            limb0: 0x310f1b65c5b007120672a502,
            limb1: 0x29c86c62dc55df772329191f,
            limb2: 0xe53bacb3047b80e,
        },
        r1a1: u288 {
            limb0: 0x933eed7e60b52871e469847d,
            limb1: 0x86c5bbfeb6ee4f6ae889dd70,
            limb2: 0xe593678bb9b1d48,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x917de435f71166931968a744,
            limb1: 0x52a75ad2061981b508320fe0,
            limb2: 0x21155c3f960b6ce2,
        },
        r0a1: u288 {
            limb0: 0x44fce56f94dfc083b873e0df,
            limb1: 0x3da1d6fcbb548171f02e7461,
            limb2: 0x122022fa01a92275,
        },
        r1a0: u288 {
            limb0: 0x8fb855e42df887c183ff61,
            limb1: 0x8dfbfbd02a8006219cfb3af2,
            limb2: 0x9ed2529e0ac68b6,
        },
        r1a1: u288 {
            limb0: 0xb7013b3a86c0b3d11537dadf,
            limb1: 0xdf748b116fa1c18c69eeaa7,
            limb2: 0x59097152c44bb2c,
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
            limb0: 0x53d7580c5a7c7b332f4f6ca3,
            limb1: 0x8548f1ae4ae6036e082dbe20,
            limb2: 0x2c743b8c275dc783,
        },
        r0a1: u288 {
            limb0: 0xd962b2fe916cd5690ec9916f,
            limb1: 0xfda386ad14063c371d84e4be,
            limb2: 0x25663816244b8ec3,
        },
        r1a0: u288 {
            limb0: 0xd4d60d810a988bb64f884026,
            limb1: 0xcec713c6f71155312a2f4b90,
            limb2: 0x430ac2527771090,
        },
        r1a1: u288 {
            limb0: 0xc54c1f8324f3a5821410954d,
            limb1: 0x440de5b27abb00f7a989dae0,
            limb2: 0x190fe927c9fef423,
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
            limb0: 0x359ec9be6ced4c1530721db6,
            limb1: 0x63d11b3d5e49415149b43b5,
            limb2: 0xf3e1140b2fc5c7e,
        },
        r0a1: u288 {
            limb0: 0x29c90df98f0eb7874d3057ea,
            limb1: 0x318b80a8f225b7d1039b00d7,
            limb2: 0x4b8e1ca22962910,
        },
        r1a0: u288 {
            limb0: 0xea1f908aa3c3a7682f944125,
            limb1: 0xd1bff56e743897700bcdeda4,
            limb2: 0x260db43777c880fb,
        },
        r1a1: u288 {
            limb0: 0xfdb045ad3977586f80d40af1,
            limb1: 0x14cb44ed313b13d780f89758,
            limb2: 0x20d103694bd7b2d7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9f2caff601727f7af29daa87,
            limb1: 0xeeed4cb036ef5bf67f352aef,
            limb2: 0x2323e7a04796faa2,
        },
        r0a1: u288 {
            limb0: 0xd340005658134d01526111fd,
            limb1: 0xa32a0ea34952f9f584bf3587,
            limb2: 0xfaea704ebf96863,
        },
        r1a0: u288 {
            limb0: 0xaad4921c832d4d1a726577f,
            limb1: 0x1bbbb5341e03570c037f3c2a,
            limb2: 0x158f79faa9d36184,
        },
        r1a1: u288 {
            limb0: 0x419348d4b5705db4f5f75902,
            limb1: 0xe15a42f542d73ce4d9e44a3a,
            limb2: 0x218b820ee481ea0b,
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
            limb0: 0xa76ed5eae677078ac7d5f5fd,
            limb1: 0x7bf6d7b27bcf96714e859ee0,
            limb2: 0x1d271985ab62796c,
        },
        r0a1: u288 {
            limb0: 0x241f362f1c20252365b55d07,
            limb1: 0x56932392403a464b64be8909,
            limb2: 0x2563101c152fca99,
        },
        r1a0: u288 {
            limb0: 0x4eb84f9b3b9970f94cba844e,
            limb1: 0xd64744429442662e8355cd9a,
            limb2: 0x2af81e6753a464f9,
        },
        r1a1: u288 {
            limb0: 0x77391a961f6481acf801797c,
            limb1: 0x4b611f117a55fea7a49ff9a3,
            limb2: 0x17c76ceeede826ee,
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
            limb0: 0x6dd19b678e2afb9852d11bec,
            limb1: 0xd7772df984a3609f631e9916,
            limb2: 0x1737dc0c4c722557,
        },
        r0a1: u288 {
            limb0: 0x7c8a1cca78c871d4031089de,
            limb1: 0xa0c52c08c720a7127a6318dd,
            limb2: 0x2fb668faaec16216,
        },
        r1a0: u288 {
            limb0: 0x29afcc4063b4bf3f5a9555be,
            limb1: 0x3d291d186976ed5eeff60159,
            limb2: 0x2fe1419664c3f6e6,
        },
        r1a1: u288 {
            limb0: 0xa0e0255f35ed8169fec281ee,
            limb1: 0x6f332b541d2508c4441eec12,
            limb2: 0x275bf84457e829ab,
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
            limb0: 0xacbe1351b317b9385c70535a,
            limb1: 0xe2873e66072568d2e8672353,
            limb2: 0x43a7df54de763c1,
        },
        r0a1: u288 {
            limb0: 0x8c1b1e2f448f58c4a54451df,
            limb1: 0x80ebfd5e88b63f5696c58b51,
            limb2: 0x1d43edf6f3175ab9,
        },
        r1a0: u288 {
            limb0: 0xdae3f56dd6fcd98ed9257d6d,
            limb1: 0xff1fdb6669cc87ac3ba54dc2,
            limb2: 0x2322425d63d3f19a,
        },
        r1a1: u288 {
            limb0: 0xded0ffb7c7936e1104ef2d98,
            limb1: 0x44c6037fe2244f17bccf9725,
            limb2: 0x251c179909e7577b,
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
            limb0: 0x243374e69c83ec197b918a56,
            limb1: 0xc44981de124324264e38f355,
            limb2: 0x12f186d39e4cfd1e,
        },
        r0a1: u288 {
            limb0: 0x7fb72fe650078c3278c47eae,
            limb1: 0x4179078fbf9cb36c2c5c4f1c,
            limb2: 0x1e95c3b748aab771,
        },
        r1a0: u288 {
            limb0: 0xf2dc43b304ab169d64701819,
            limb1: 0x6f8799fc53ab787c116f718d,
            limb2: 0x14667bd08ee8ff1b,
        },
        r1a1: u288 {
            limb0: 0xc16082e6e0517888a9e7508,
            limb1: 0xf15cd020c9442a5e4a13bcfd,
            limb2: 0x21b8ec096324e2ef,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64f0d64d81874a39cc64f30a,
            limb1: 0x2c90f33c6c0d2adbe1f30542,
            limb2: 0xf77b50a8d9cd604,
        },
        r0a1: u288 {
            limb0: 0x817386abe22661775b8d0372,
            limb1: 0xf4f9d2e2050f7f44f467519a,
            limb2: 0x2bdc53c2a1587d68,
        },
        r1a0: u288 {
            limb0: 0x7667d2ccb438c07df6de8d49,
            limb1: 0x52c0d2cebbafb58506adac91,
            limb2: 0x1603b325c88c2347,
        },
        r1a1: u288 {
            limb0: 0xdc771f081eab336d2fe74daa,
            limb1: 0x1c76de9fbe1ca908651610a3,
            limb2: 0xdf4932ebf688b7,
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
            limb0: 0x7991c64190775e4ccced78c0,
            limb1: 0xacdcf6fb0ae7cd9f4ead82f3,
            limb2: 0x55c0f9c0ceefe59,
        },
        r0a1: u288 {
            limb0: 0xa1a01a73b98763d4c0fcb362,
            limb1: 0xdb43ad0b4ad6cbfd16730d4d,
            limb2: 0x21a68fed52a695db,
        },
        r1a0: u288 {
            limb0: 0xdd172cf82fee093a928e343f,
            limb1: 0x819a9eb82fbe2e34b22a10f5,
            limb2: 0x110e45c4e957e8b7,
        },
        r1a1: u288 {
            limb0: 0x8ecd028c647603c35fe95787,
            limb1: 0xe2d863a14fa2c98f4eb055de,
            limb2: 0x21f932799f4ef9f0,
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
            limb0: 0x639815933afb1f3f6cb7b6a4,
            limb1: 0x4fabf29dbc3d75da7da3e8c8,
            limb2: 0x162b198bfe869d60,
        },
        r0a1: u288 {
            limb0: 0x7575d529aad8bcf5e150b56f,
            limb1: 0x825e88397e7200921609d31,
            limb2: 0x628d45d8f414cc6,
        },
        r1a0: u288 {
            limb0: 0x11ed89a97331cb22e4dc848b,
            limb1: 0x869b2b996968d5fd24a27e39,
            limb2: 0x1eb7eab2d97799c6,
        },
        r1a1: u288 {
            limb0: 0x3b7162985ada50d2ec0f91ce,
            limb1: 0x1059b0abe204a0e98f6c7774,
            limb2: 0x22f9b2a89f1a2ba6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x26010c8d5d3c40398660ebe3,
            limb1: 0x6f25adbe900be9212a095f15,
            limb2: 0x1cd5059a607b9f31,
        },
        r0a1: u288 {
            limb0: 0x62906e4dd2289d4ec58bdb09,
            limb1: 0x555bd75241d960dbc5ddb514,
            limb2: 0x2a5c2080cecac266,
        },
        r1a0: u288 {
            limb0: 0x3f3013586f1354d49faaf58b,
            limb1: 0x222e79e60cf85f289ac4bd87,
            limb2: 0xbabca041773fae4,
        },
        r1a1: u288 {
            limb0: 0x92a0e4411fdf4fa35714f404,
            limb1: 0xe6f78cfd7c5fed6ef8e893,
            limb2: 0x15599a928f5ebeb6,
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
            limb0: 0xe4f4cd2c3498e84b7cf0e6c3,
            limb1: 0x6d1de1b3cdce9d4e8e751fc3,
            limb2: 0x22f055254ee7dd2c,
        },
        r0a1: u288 {
            limb0: 0x8d9abe9c69694e6352bfd274,
            limb1: 0xceacbf1517fc092c82448184,
            limb2: 0x1a6f40446b2dcb1,
        },
        r1a0: u288 {
            limb0: 0x7d8551477f256a08339ade89,
            limb1: 0x78c33771cb1921f7d5123fe8,
            limb2: 0x53b5992386c6e08,
        },
        r1a1: u288 {
            limb0: 0x2fbc7b4f7d9f0d2c875867ad,
            limb1: 0x516b9afe3ba97a5ce5990fe0,
            limb2: 0x9500a36ba13620c,
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
            limb0: 0x346b9d9ab197aec24bec8011,
            limb1: 0x55f4bf7dbb67652c7463736c,
            limb2: 0x3d0b765a94d5287,
        },
        r0a1: u288 {
            limb0: 0xe690ddaae97074279679ca96,
            limb1: 0xcb8aa99e3cc2c0dc0396a811,
            limb2: 0xe8573471dde2071,
        },
        r1a0: u288 {
            limb0: 0x36c803c47b97e60fac6407b1,
            limb1: 0x45e12d69b31dbc5e1b3139e1,
            limb2: 0x7b504abe815f0f3,
        },
        r1a1: u288 {
            limb0: 0xefed72b50ee37a5bcba87556,
            limb1: 0x2be07d5a1ef8f2faace8871,
            limb2: 0x2453b9ec4516b40,
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
            limb0: 0xef65005663101bf26d78ea04,
            limb1: 0x29aa1b2e51cb1d0105c6871a,
            limb2: 0x2bdad3bc51715f3e,
        },
        r0a1: u288 {
            limb0: 0x7ca41fd9c9e9356773ebd8be,
            limb1: 0x200290f7e7ac57bf3d88464e,
            limb2: 0x11a1976dc34721d0,
        },
        r1a0: u288 {
            limb0: 0x7b3f107791fdb1f4dae536dd,
            limb1: 0x142794fadcb3051d0b93bcf7,
            limb2: 0x2f356d2da13ab9f1,
        },
        r1a1: u288 {
            limb0: 0x2f056294071e94fe13a66c46,
            limb1: 0x1bb781f58d0afa550c20624b,
            limb2: 0x227b6c8244484fe4,
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
            limb0: 0xda9eb869b0e3c52a9d464278,
            limb1: 0xd9e9af646f9c91e29c1f9aa5,
            limb2: 0x3e9235d9cca29e9,
        },
        r0a1: u288 {
            limb0: 0x813a4118dc8d953ab4e7f0ea,
            limb1: 0x1c001a14cbaa8468a4b3c932,
            limb2: 0x289f5120421a63bf,
        },
        r1a0: u288 {
            limb0: 0xb056fda362dfe6fd7fa75a63,
            limb1: 0xe357c0eb2d5f4a7e667e4426,
            limb2: 0x1360c2b125208cd1,
        },
        r1a1: u288 {
            limb0: 0x19a06fbbc0dcec14345e8bd,
            limb1: 0x1938fc246fc941b2709d4495,
            limb2: 0x287abf56f8003ad3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbcd090b3cdfba0bec9b446d1,
            limb1: 0x6685e6c38f19eebd2f26242c,
            limb2: 0x9b135a82f5569bf,
        },
        r0a1: u288 {
            limb0: 0x896be268c3e5bd49bea903ae,
            limb1: 0xc82f3d16bf7880806a7dc7f4,
            limb2: 0x13df3b1d15e7e758,
        },
        r1a0: u288 {
            limb0: 0xb77321019651f086e1e6b877,
            limb1: 0xdaae5b081e5f3a27f684b1a4,
            limb2: 0xeb53bb5a30d8bd5,
        },
        r1a1: u288 {
            limb0: 0x553ab8cecd480191440f6156,
            limb1: 0xf97e38f01aee77518c85fbfd,
            limb2: 0x25e8e090ed615163,
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
            limb0: 0x1f389df9473aaaf4cf5b9c12,
            limb1: 0xb1681b743e86da1b934724b9,
            limb2: 0x186bb1b04be42c54,
        },
        r0a1: u288 {
            limb0: 0xbddd1e15f6a342ae6b30cf8b,
            limb1: 0x4993e146b766551fc15cb93d,
            limb2: 0x1e33ac0a79ffc94,
        },
        r1a0: u288 {
            limb0: 0x9035dafe3af48ecd552c4a97,
            limb1: 0xfa4b4978d9cc5016ac6c83c9,
            limb2: 0x14388de2cb663b38,
        },
        r1a1: u288 {
            limb0: 0xa70b276945c79cc917439cca,
            limb1: 0x5abcf3f78177719ef32a17c9,
            limb2: 0x2a50de4a98694ecd,
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
            limb0: 0xb8b157ce09598a8adbcb69e9,
            limb1: 0xfc42b36040e31122eec94f7f,
            limb2: 0x4b08cf6d0bfdb34,
        },
        r0a1: u288 {
            limb0: 0x512d16e287a8ddb45ce1c129,
            limb1: 0xd331c56ed3ae78cb0f454005,
            limb2: 0x2f75284865f03dbc,
        },
        r1a0: u288 {
            limb0: 0xdf21561e4132a27f4dc39a1b,
            limb1: 0x8c25f2d6bc868db2e89fc72f,
            limb2: 0xda468aa19f81961,
        },
        r1a1: u288 {
            limb0: 0x3c4ac2adddcf13d447bac82,
            limb1: 0x9f245b4ed0be3a5d848bcfa5,
            limb2: 0x27a80a4449aac434,
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
            limb0: 0xbf46677a39669248d7bdc5ae,
            limb1: 0xee72062d0234900e8cd62c8a,
            limb2: 0x6fcfed693806e21,
        },
        r0a1: u288 {
            limb0: 0xf26b53b77fe84e754def82f1,
            limb1: 0xaaa2d2b1790225fe5d27066d,
            limb2: 0x2293a78bbe550e4a,
        },
        r1a0: u288 {
            limb0: 0x2978c54667a51b666db80864,
            limb1: 0x6857aa7c6e1f82d391a38a44,
            limb2: 0x2732d820b32e4980,
        },
        r1a1: u288 {
            limb0: 0x3ea0220a8fb3f474a6c34ff6,
            limb1: 0x1a0e62138029f456a283239,
            limb2: 0x1bb92be5967d02d2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf4cf929de5917c838f324108,
            limb1: 0x265f56122659d60b9429c531,
            limb2: 0x27bcfce3f1e946e8,
        },
        r0a1: u288 {
            limb0: 0x8c0f57ab3f032ffc44a52324,
            limb1: 0xe3d1095c3c9c21fa6ca0019b,
            limb2: 0x3047495688a38503,
        },
        r1a0: u288 {
            limb0: 0xdfd8098bf7442bd65af20888,
            limb1: 0x1111b621974cf9961f4911a9,
            limb2: 0x2ec208798f0dbd60,
        },
        r1a1: u288 {
            limb0: 0xef96b0f977942d3a5128d38b,
            limb1: 0xcc48581d26974741fc1ce072,
            limb2: 0x216cf1024d6f8b03,
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
            limb0: 0x7448278cc649038219fb2f34,
            limb1: 0xedd534a4ba78451871b5c7bd,
            limb2: 0x2fbbeeb37f7f638e,
        },
        r0a1: u288 {
            limb0: 0x9ef8a5672a5ab3e017d48b9d,
            limb1: 0xa630ac90b17b65182fdc145a,
            limb2: 0x1c03450a5dff92ad,
        },
        r1a0: u288 {
            limb0: 0xe2de6eb5cccf22f515d95291,
            limb1: 0xfe1a7db7ce9ccbfe11c20488,
            limb2: 0x2fe15ac54cd19060,
        },
        r1a1: u288 {
            limb0: 0x381389aaf113af69c59c2bb3,
            limb1: 0x58545a9aa579a6ebb24ad590,
            limb2: 0x128aed7a233732bd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc53b699a780db2fe8c80da42,
            limb1: 0xeeb7edccf434856c87ee54ed,
            limb2: 0x11647190ac82a6be,
        },
        r0a1: u288 {
            limb0: 0xfaa742826b25471340d9fdfb,
            limb1: 0x6fa71b94f397613514988777,
            limb2: 0xd4b54673c9f324d,
        },
        r1a0: u288 {
            limb0: 0xd92e96416c810f531a5f73ab,
            limb1: 0x5d15180a14e4d0f04b8bd981,
            limb2: 0x12fdb208eca20799,
        },
        r1a1: u288 {
            limb0: 0x75b126fca2ae1f6ee3b72d76,
            limb1: 0x84ee2c1d05c3363a293ecc9f,
            limb2: 0x157a9f91089d9405,
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
            limb0: 0x5f02ba86152f9b4aedfa33b1,
            limb1: 0xe78d7cdb7321d8bc4671ed39,
            limb2: 0x2035874eb70e238d,
        },
        r0a1: u288 {
            limb0: 0x850187c922f45ea455e2a484,
            limb1: 0x867d6d9d27d19cb58db6b4a1,
            limb2: 0x1b66b9b70b0676e5,
        },
        r1a0: u288 {
            limb0: 0x29daee744fe85d3bce688785,
            limb1: 0x989cc90a5e367084d94f7dfc,
            limb2: 0x27aaee974056c629,
        },
        r1a1: u288 {
            limb0: 0xd448f025ef49ff147555876d,
            limb1: 0x4842289f3bdc6b64d8a7b169,
            limb2: 0x1ce385f91a9e7663,
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
            limb0: 0x1062857b7ec44c3c734b4c87,
            limb1: 0xcc2d4dd64a947e54f3938c0d,
            limb2: 0x88e1101fe1f1e8f,
        },
        r0a1: u288 {
            limb0: 0x15e1778e969daf264844b191,
            limb1: 0x238b9860fbce625d084e2bbe,
            limb2: 0x24bd833f15d2abde,
        },
        r1a0: u288 {
            limb0: 0xd6899b3c53651d584f0baf6d,
            limb1: 0x74979ab1141655370d27b6c1,
            limb2: 0x88b8d547d8297b2,
        },
        r1a1: u288 {
            limb0: 0xde10e2410c4b90528fb87410,
            limb1: 0xb4ffe7f98cac00d889f2eb2e,
            limb2: 0x275a1f2cf72e8306,
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
            limb0: 0xc0ca0b9ab344a9a6fc7ccc36,
            limb1: 0x6c248fefa9bd549fe37afbf2,
            limb2: 0x2abbe084598e37a9,
        },
        r0a1: u288 {
            limb0: 0x4f8bc362bb357689c8668174,
            limb1: 0x8af2ee7819cd849f1348095,
            limb2: 0x17cc9c582d179f8c,
        },
        r1a0: u288 {
            limb0: 0x23dd5713c9410cdf85c0b82a,
            limb1: 0x4b7edab2b25b234d816173ce,
            limb2: 0x1a716fa950e12c30,
        },
        r1a1: u288 {
            limb0: 0x7c7dc0dd925ec758d9719cf9,
            limb1: 0x3b3119d83a7d0335a7c84f4d,
            limb2: 0x175e5d2bc4139808,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7a1b69d78138af60b9ed32bf,
            limb1: 0x4bf7b9d88b248acedb906753,
            limb2: 0x484bee0c774f7f6,
        },
        r0a1: u288 {
            limb0: 0xcbe21f184dab1086d290dae6,
            limb1: 0xf94be259112e4bc0c4347d23,
            limb2: 0xc315ddfe8178c29,
        },
        r1a0: u288 {
            limb0: 0x886f1b9eebced267dfe6c04f,
            limb1: 0x6abbf11d520720135a0c65f2,
            limb2: 0x2f315f00b0a0eece,
        },
        r1a1: u288 {
            limb0: 0x423d74d8e8a572013ff0c2dd,
            limb1: 0x8443c3e5586bc19d72dd37d4,
            limb2: 0x1eb7c810aac623a0,
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
            limb0: 0x8854f575d9b6c65f3eeb8d8f,
            limb1: 0x57300ceceed700185c98dcab,
            limb2: 0x243ead4403143154,
        },
        r0a1: u288 {
            limb0: 0x3e31bd7ee28c7bc6c7657004,
            limb1: 0x9c7ef581be82ec743606d67,
            limb2: 0x4d3aa00fd3d9679,
        },
        r1a0: u288 {
            limb0: 0x37b02cecdb192c7846ad4b6e,
            limb1: 0x375199613d79a1767ca887e8,
            limb2: 0x1991803ebf76183b,
        },
        r1a1: u288 {
            limb0: 0x199a0a9b22096a994f8caf96,
            limb1: 0xa382c0a980f4b853578ef7ea,
            limb2: 0x14f5677289367d1a,
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
            limb0: 0xb0c9eac9cdae8ea50e33d613,
            limb1: 0x62728827ae08c835b40d35f8,
            limb2: 0xa71dc6b59bcf776,
        },
        r0a1: u288 {
            limb0: 0x10382f35bf6be50962c17382,
            limb1: 0xa2e79fc601404b5e593dc109,
            limb2: 0x2cfc931760e196d6,
        },
        r1a0: u288 {
            limb0: 0x1d3e4e24c05dd29b282e03e3,
            limb1: 0xe066968da95573be592ea00a,
            limb2: 0x152d3b2d44f30f5c,
        },
        r1a1: u288 {
            limb0: 0x9924fe0dcbbdc4848c569415,
            limb1: 0xb5f3ed9dbe24de7179e1412b,
            limb2: 0x2733dfd57ade1f67,
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
            limb0: 0x9a9974027821882851713e15,
            limb1: 0x364499954ac0c4fe313777f9,
            limb2: 0x133a74b09c2d8472,
        },
        r0a1: u288 {
            limb0: 0xeff6d28f50770fdea5bb89e8,
            limb1: 0x531a17da3caa3741e0d30e5,
            limb2: 0x2819d2ed6d87d086,
        },
        r1a0: u288 {
            limb0: 0x8ae2b9bef4ece0087747912b,
            limb1: 0x261db439454cf2defd6f6847,
            limb2: 0xbe43cf1e7aa4799,
        },
        r1a1: u288 {
            limb0: 0x9f648ca633939d3d3dece254,
            limb1: 0xb390df3f1b7da03503b710d1,
            limb2: 0x7434040a98e96cc,
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
            limb0: 0x72bfa506cb95d42f837b7acb,
            limb1: 0xbb5cdd6a5e49e08130b8480,
            limb2: 0x16162e2b3f283c44,
        },
        r0a1: u288 {
            limb0: 0x3499c11c9750f143ebc7a491,
            limb1: 0x24a81b22bcd3b1aecb6a4ed7,
            limb2: 0xf21255075cc0400,
        },
        r1a0: u288 {
            limb0: 0x45b58c72a94591737c92e399,
            limb1: 0x53d45d44c3e97ab8ad525a86,
            limb2: 0xcbe547be1e9da84,
        },
        r1a1: u288 {
            limb0: 0x95b8129c952013fb9bd854a3,
            limb1: 0x2fd053a77a8001c36329e2f9,
            limb2: 0xdba936928b1b84f,
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
            limb0: 0x46fd636cb1f42551c05c62d7,
            limb1: 0xde625b1e865b63d4e612a2cd,
            limb2: 0x141f44367e9a77fd,
        },
        r0a1: u288 {
            limb0: 0x71524ac632e783830aacfb6f,
            limb1: 0x43b65904754b47cd6c84e985,
            limb2: 0x99f8a20ca42e21e,
        },
        r1a0: u288 {
            limb0: 0x82cd485a8e373b24c1f31065,
            limb1: 0x340c7b03eb27cae70c29c9e4,
            limb2: 0x2e34e2e29a7c3617,
        },
        r1a1: u288 {
            limb0: 0xff806d6909e99ac8359b1dc9,
            limb1: 0xab6f9d7b4b03edeb43591f5c,
            limb2: 0x1681d78182c35dc2,
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
            limb0: 0x8ce1b2ecd623b576415eeff9,
            limb1: 0xc9b8ad42587766f1745c692b,
            limb2: 0x13452042109e5068,
        },
        r0a1: u288 {
            limb0: 0xe35d9b2e6c7fef46e23f0305,
            limb1: 0x39d2ca87f39ca0a012f50fe1,
            limb2: 0x131e10da3712c51,
        },
        r1a0: u288 {
            limb0: 0x1677af335ce2fcd344b94bf5,
            limb1: 0xe31e981e5d6311c4122823ea,
            limb2: 0xcc41e42bb45a711,
        },
        r1a1: u288 {
            limb0: 0xb2b068955521b49897247c11,
            limb1: 0xc1715ef4217da0881ae88ef3,
            limb2: 0x23e64bcf718b0f0a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4caadb66d979ff4ad2693839,
            limb1: 0xefa39a0fc146f48a70f8ed17,
            limb2: 0x201a53d2c0862ae2,
        },
        r0a1: u288 {
            limb0: 0xcd2c49900ac36693821f9abc,
            limb1: 0xad5e098f90d9685bde7f4917,
            limb2: 0xb81018140c12acf,
        },
        r1a0: u288 {
            limb0: 0xaff020259dca8c22f0d30520,
            limb1: 0xcab7f4bbf65d9ff941b67388,
            limb2: 0xb47b153dc816151,
        },
        r1a1: u288 {
            limb0: 0x6155127023bbb9f4a1db0860,
            limb1: 0x5b100494db5e8f5999dd828b,
            limb2: 0x5a1c9bf1bb606f7,
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
            limb0: 0x4147a059b0bc634f34c23abc,
            limb1: 0x1832eef9a24f7121f75535b3,
            limb2: 0x5daef0d5351d76e,
        },
        r0a1: u288 {
            limb0: 0xf2497849f39ae3bcdc2959b3,
            limb1: 0x4a1652167bd484a3fae440c2,
            limb2: 0x11a5197ad85c4d,
        },
        r1a0: u288 {
            limb0: 0x26077885fdcf266280dd27ec,
            limb1: 0x1307e9d025ad84b885a57a73,
            limb2: 0x2bd7f29868115a61,
        },
        r1a1: u288 {
            limb0: 0x2e928e7da9037c64f14795f7,
            limb1: 0x976f0a373421e74602f91788,
            limb2: 0x435f9c75118a198,
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
            limb0: 0xc97097ddc547c398ccada409,
            limb1: 0xf70d224452f352e598355abe,
            limb2: 0x9b6a223c54e2216,
        },
        r0a1: u288 {
            limb0: 0x7bbcb7d9381118e1edb415fa,
            limb1: 0x232ca36fbe3c625cc01f0f85,
            limb2: 0x1e5bd74d4ad733df,
        },
        r1a0: u288 {
            limb0: 0x1f41d2dc994a7ae8702836bc,
            limb1: 0x4d7f0df5766a1a57d038daaa,
            limb2: 0x14899fa381c8f7cf,
        },
        r1a1: u288 {
            limb0: 0x87ae33182fd6d4519220b2f,
            limb1: 0x42ee28c9515d569fa5d54dfb,
            limb2: 0x1338f25955ba26a4,
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
            limb0: 0x6656cc43d758b20c0df968fa,
            limb1: 0xf5d5c569d6c198f6491898f6,
            limb2: 0x23a2c27edd088041,
        },
        r0a1: u288 {
            limb0: 0x52b8ddc8049982f46958ce67,
            limb1: 0x7b416c8f3766da0bbfa20687,
            limb2: 0x3d69f4bf54af551,
        },
        r1a0: u288 {
            limb0: 0xc6b8990f7f6b495acb40725f,
            limb1: 0x7d58628058ad59538680e2db,
            limb2: 0xcadc953be48e713,
        },
        r1a1: u288 {
            limb0: 0x3208eb2565e791e6b93b499f,
            limb1: 0xbf16e826f2941c02b6bcee8a,
            limb2: 0x2054095398890b32,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa35eeec7f77ac585fc564752,
            limb1: 0x675129703ac21202df50cf05,
            limb2: 0x15aec7fce161e0bd,
        },
        r0a1: u288 {
            limb0: 0x5487c70cc68d9afab70eab9a,
            limb1: 0xecc9db7e766f47f3d6f80b92,
            limb2: 0x2792acf076af37fa,
        },
        r1a0: u288 {
            limb0: 0x2b85cf572d264770ede3ee0c,
            limb1: 0x736e9ac28acfc318b8e0786a,
            limb2: 0x2d5160250496d71,
        },
        r1a1: u288 {
            limb0: 0xe31c5c6286f70f6ced096d74,
            limb1: 0xf01275df53b65f6ce6502f41,
            limb2: 0x2ee2bb6e1e540989,
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
            limb0: 0xb1a814d9d0013803ae9d6b6d,
            limb1: 0xf09de7be51608e1c1ac8b712,
            limb2: 0x19eea70e1d057cf0,
        },
        r0a1: u288 {
            limb0: 0xa1f3f51818f661a68af156ef,
            limb1: 0xead88d2a1f5ec39011555bf4,
            limb2: 0x1864743d6fc576b,
        },
        r1a0: u288 {
            limb0: 0x2a12da5eb554d637f8db21de,
            limb1: 0xd489d92977744b4dad5b59a9,
            limb2: 0x252730aef19e3a62,
        },
        r1a1: u288 {
            limb0: 0x3e8c8abe767e041d44e0c139,
            limb1: 0x20e56b41020150a34e0cb1a0,
            limb2: 0x44d92b9a17bbc79,
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
            limb0: 0xb97951d834c524db18d94ed5,
            limb1: 0xf0716f8a978c5c2940bdeba3,
            limb2: 0x119c02ad9179740,
        },
        r0a1: u288 {
            limb0: 0xd719a71bfab40978bd444d17,
            limb1: 0xaff1bdb08498752bf1652af,
            limb2: 0x960fc370bb9146f,
        },
        r1a0: u288 {
            limb0: 0x640267c43274ab5997a19a5f,
            limb1: 0xff2f1438aa5786f322e5e720,
            limb2: 0x2e801541bb2a0daf,
        },
        r1a1: u288 {
            limb0: 0xb219824ce769c00af08c6e2e,
            limb1: 0x55fdad0c5b2cd0c83615ed5,
            limb2: 0x15c5fb94a27b0c9e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4c00b2f4992a86480db8a17a,
            limb1: 0x601753208bf1bc0617e4cee1,
            limb2: 0x8aad728b43e8ba1,
        },
        r0a1: u288 {
            limb0: 0xdeadcf9498550d35add5f3b1,
            limb1: 0x82780f7bbebb7e04c1c68088,
            limb2: 0x2bd7f518a1532c9e,
        },
        r1a0: u288 {
            limb0: 0xa5c1ee658160b258dd760c61,
            limb1: 0x2aba43d891603499754a2b02,
            limb2: 0x176ad9672841d0a9,
        },
        r1a1: u288 {
            limb0: 0x18ca60a135a531cb8db7b8b4,
            limb1: 0xcfcf00700f3a83c78e09e522,
            limb2: 0x1431811bfc4eed3b,
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
            limb0: 0x3d7b795747d819725cc78396,
            limb1: 0x86cfc327d7dfee53ab7d8b4b,
            limb2: 0xf2cfa2fa5184ece,
        },
        r0a1: u288 {
            limb0: 0xa24d1ca80aa26c8d4c73fa19,
            limb1: 0xdfe05ae902f7f42fdc9315c5,
            limb2: 0x2f7b3d5e1fa43259,
        },
        r1a0: u288 {
            limb0: 0xdfad5209a383c87581013c90,
            limb1: 0xbd8abac436402afb747dc36f,
            limb2: 0x1867119d27156246,
        },
        r1a1: u288 {
            limb0: 0x174e221d48d9c3dc1d5fa22,
            limb1: 0xf1daecba12894a3edf02ff68,
            limb2: 0x215be27b0b680a9b,
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
            limb0: 0xe32465af9262ffb20d768561,
            limb1: 0x8eb041bb4257ffada689889b,
            limb2: 0x14cae4587777cdf8,
        },
        r0a1: u288 {
            limb0: 0xe5a111b413c1ac6e966c1dd0,
            limb1: 0xd6cb6f9c28dbf5b3273a82e,
            limb2: 0x49e12e6bf9136b7,
        },
        r1a0: u288 {
            limb0: 0xad9ed2ed589743984268d274,
            limb1: 0x8f4b4e40c0448f5349c8432c,
            limb2: 0x28c6f4ee323cd4af,
        },
        r1a1: u288 {
            limb0: 0x50bade93a42d522cbfffb0e9,
            limb1: 0x17b4d6a2158db83fe4d3474a,
            limb2: 0x2289841bd7bfc811,
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
            limb0: 0x9440cc39115ed0a1cbcac43a,
            limb1: 0xc21638c74cddc022dba4802b,
            limb2: 0x2dcea587913fba27,
        },
        r0a1: u288 {
            limb0: 0x965e112be86b59254b52ddcd,
            limb1: 0xdda1d8007f0d3ac604bbff78,
            limb2: 0x4e9f56aa44d8ca4,
        },
        r1a0: u288 {
            limb0: 0x59cebc811650510ae05a2938,
            limb1: 0x978b22e02e0489fbb3635b2d,
            limb2: 0xfd3159e8942081,
        },
        r1a1: u288 {
            limb0: 0xdaf2b307df6f51f9035d218e,
            limb1: 0xecd2654f2f64b2dc0f2399f2,
            limb2: 0x1af627318e873d24,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbd678f284e50e2df5bd5b45d,
            limb1: 0x2f3d10327fcea80eb1885dc3,
            limb2: 0xa6b9cd69f91321f,
        },
        r0a1: u288 {
            limb0: 0x114dc454d1b988829a0a0e0a,
            limb1: 0x6103994e3c80a825aac91915,
            limb2: 0x1e54d17d6d2d1268,
        },
        r1a0: u288 {
            limb0: 0x9669904485043dc57934dda5,
            limb1: 0x293688d72994b74e63c293bb,
            limb2: 0x2cbe385adf7739ce,
        },
        r1a1: u288 {
            limb0: 0xe064d2373a71abc3474a3bc7,
            limb1: 0x9a058ff9e2d395fe93a11218,
            limb2: 0x5b7d7718f1551cd,
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
            limb0: 0x49b5649433f6c2aef5c307c9,
            limb1: 0x3c366f60bc69cc2a76de6139,
            limb2: 0x268ea89be5688362,
        },
        r0a1: u288 {
            limb0: 0x8af78e42d581f8fd24f17acd,
            limb1: 0x700dd98edee3cfaf6dd6ff00,
            limb2: 0x1431c7ad5c2e9f1,
        },
        r1a0: u288 {
            limb0: 0xf740f52b0afb6443de7f47bd,
            limb1: 0xc82633116c5763aacc1affaa,
            limb2: 0x20fdac0b61aebea3,
        },
        r1a1: u288 {
            limb0: 0x159f8cd70233f7f7a2dfbf12,
            limb1: 0x8c5498122a02642e3b5fe4cd,
            limb2: 0x2bb972f4062a5a18,
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
            limb0: 0xa07555d44d803d1512d4bdb9,
            limb1: 0xab2a217456a19ed13c1589ce,
            limb2: 0x2e8fc76d0728de11,
        },
        r0a1: u288 {
            limb0: 0xeaab333c00264cc6f9450a9d,
            limb1: 0x44b79432a003c03cd46b11be,
            limb2: 0x163a25b28d3145b6,
        },
        r1a0: u288 {
            limb0: 0x3b82fb88bd81a7a49be63a2c,
            limb1: 0x29d5a0c0b3c332da977f95a2,
            limb2: 0x296f75c931b9f1dd,
        },
        r1a1: u288 {
            limb0: 0x45f600f57e3b2f9ce802a84f,
            limb1: 0x253096bd0a24c6d377016479,
            limb2: 0x2dedd38b51fceac,
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
            limb0: 0x444c8b305927198d7e62325e,
            limb1: 0x4d1fbc27d73bbd565e6a0ee9,
            limb2: 0x95a2f9be5be2790,
        },
        r0a1: u288 {
            limb0: 0x867f187fff719b12244f5370,
            limb1: 0xaca18e0a1e1b93a6055bb06f,
            limb2: 0x20bee10bdafbb7e7,
        },
        r1a0: u288 {
            limb0: 0x8b0a73f4e4da9c71e51bc177,
            limb1: 0x92abfa819561fb29cc42ca0b,
            limb2: 0x161697f6d76cf437,
        },
        r1a1: u288 {
            limb0: 0xbb88a66d2d159dd169e79c82,
            limb1: 0xb096111e05d277ecb6bf3bcb,
            limb2: 0x2d651bd1e173fa05,
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
            limb0: 0xcfb3119c980c589e522308d1,
            limb1: 0xaece46005b89f89b79438d43,
            limb2: 0x10cfa198380ee68e,
        },
        r0a1: u288 {
            limb0: 0x37d4a557a469bee86122fbcb,
            limb1: 0x3f58709d18d02920e54dcf3a,
            limb2: 0x11ba4203903974c8,
        },
        r1a0: u288 {
            limb0: 0x4e64a6dc978c4af399225ed4,
            limb1: 0x3b348ea8ac65f20dac4b70e7,
            limb2: 0x2b1ba0d78b374841,
        },
        r1a1: u288 {
            limb0: 0xf1fa2781d9ec2042ba2ad145,
            limb1: 0xa25a4840df4875f13e68a4f7,
            limb2: 0x465a4717a1fa75e,
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
            limb0: 0x74d27de0e8078e5c33202935,
            limb1: 0xf6baa2b7e469a6677b99cf40,
            limb2: 0x4ef1e45ca7a5eb9,
        },
        r0a1: u288 {
            limb0: 0xd79dbfbc6e0a961580be35fc,
            limb1: 0x128845c504c74d80c7bcf017,
            limb2: 0x2cfb8d4a7c182f4a,
        },
        r1a0: u288 {
            limb0: 0x5ff75bc2182b8baf34400b04,
            limb1: 0x739b6e208f6c76d1e8e5b8cc,
            limb2: 0x2c58eadc5a90ca81,
        },
        r1a1: u288 {
            limb0: 0x1da3c3b20d4679aaefcb0257,
            limb1: 0xb9ca8e9266cb35c5961b9288,
            limb2: 0x256ce5c000eb8180,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b65f405d80bf7fe1a6c1e6f,
            limb1: 0xa7f5d6e641167d33fb5d825a,
            limb2: 0x79470dc6711b328,
        },
        r0a1: u288 {
            limb0: 0x57b6c92b89d41a253865df4c,
            limb1: 0x95bcc509689cdc4fc9fdf569,
            limb2: 0x2da04efbcc94da3a,
        },
        r1a0: u288 {
            limb0: 0xaa79b24bae2cafc34e7065d5,
            limb1: 0xcb9712c7543a9921329f81e3,
            limb2: 0x118ce4856cda3f7c,
        },
        r1a1: u288 {
            limb0: 0xffd4da56c2edb3c38b30d2d3,
            limb1: 0xcaf517c364910e02009bd9b9,
            limb2: 0x140176db36541076,
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
            limb0: 0x948c51c93f54d1643d0741a1,
            limb1: 0xe1d5149a95e10c40b397c83e,
            limb2: 0x23ebf259e4384dc1,
        },
        r0a1: u288 {
            limb0: 0x579d7ad99784f028263ff29,
            limb1: 0x849b6e94d6ac57c5b177ad25,
            limb2: 0x10b24915650e3689,
        },
        r1a0: u288 {
            limb0: 0xfbf87f7dd0815cf4c031f432,
            limb1: 0xad289bb1ec8a2c8c9dc88328,
            limb2: 0xe4ca5690721c37b,
        },
        r1a1: u288 {
            limb0: 0xee6fe67961fc1c5713e34c2f,
            limb1: 0xb4dbe450cd6b9ee50b717cb2,
            limb2: 0x28f6f9f8ed94f8bc,
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
            limb0: 0x776e403057cf0b505201043d,
            limb1: 0xfe4eb67cd5b866968908af53,
            limb2: 0x46591cde5c28e04,
        },
        r0a1: u288 {
            limb0: 0x45121953ee1a488369852d4d,
            limb1: 0x52d2ef30067f77f7cd1ae6a9,
            limb2: 0x2fedf0b90b3e416a,
        },
        r1a0: u288 {
            limb0: 0x64cc086c909ef5aaceb53d05,
            limb1: 0x20a61674f35854e50cc63aa,
            limb2: 0x26289798f2283d81,
        },
        r1a1: u288 {
            limb0: 0xca223b11911e4e21220b160d,
            limb1: 0xfb794393ccbd799206dfdb93,
            limb2: 0x134dd202a15e4008,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6d9511f1e986c9fa19c94bd,
            limb1: 0xdebe6b79a823170ecba4cd62,
            limb2: 0x641d7178ad56707,
        },
        r0a1: u288 {
            limb0: 0x4a199ab9a370a4d8a8fb105c,
            limb1: 0x140019b03c1a9c41d33f9567,
            limb2: 0x222c94d3f2960991,
        },
        r1a0: u288 {
            limb0: 0x6f09032750859b9e965764e2,
            limb1: 0x6f3949a5fcd51e31c59cee91,
            limb2: 0x165627b8b37226d2,
        },
        r1a1: u288 {
            limb0: 0xaf0ace12eea7e4da6bf8b5c,
            limb1: 0xb6bb9b6df03b88dec9a3b8a3,
            limb2: 0x3532fc98df8193c,
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
            limb0: 0x741e75484010c40acfe12baf,
            limb1: 0xdb26d94947c48bce0dfbea7a,
            limb2: 0xa941b6ea4c08d0a,
        },
        r0a1: u288 {
            limb0: 0xf3b6e875147ec2ef091710d7,
            limb1: 0xda016521be9a20fc31473ce4,
            limb2: 0x24da196150c5fc8a,
        },
        r1a0: u288 {
            limb0: 0xb5472f1d2268ef988078846c,
            limb1: 0x8148e6b95baa0f51be19592c,
            limb2: 0x1d05b1a6d0dde7a,
        },
        r1a1: u288 {
            limb0: 0xe6ed28ad309a52f6d8a45517,
            limb1: 0x19c80e78e9d7735354905e80,
            limb2: 0xc0b1b0ce199f30c,
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
            limb0: 0xf8a9837599619f60de429a8d,
            limb1: 0xd5e58f9f86b29f9ce44b3568,
            limb2: 0xe7eb0b8d0188371,
        },
        r0a1: u288 {
            limb0: 0x88423795f576ef0e066fc90a,
            limb1: 0x824b7ca30c2f64c9ca460776,
            limb2: 0x1e781e6891902147,
        },
        r1a0: u288 {
            limb0: 0x30f73f7eb169f89f86f92de7,
            limb1: 0x6817dc9ece275a96e8121ef0,
            limb2: 0x8b40bf7f504bf8b,
        },
        r1a1: u288 {
            limb0: 0x77359352b1991f88c7afee86,
            limb1: 0xd0cbd919c21c8d55cea78d11,
            limb2: 0x263e89c0d244ae7a,
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
            limb0: 0xf004971a1e485f1e84888088,
            limb1: 0x2ec2241eaea897baa625e212,
            limb2: 0xa250e33a2e69654,
        },
        r0a1: u288 {
            limb0: 0x45a3d4a3371fb3f7232cae2a,
            limb1: 0x5c6e42565ad139eb4bd52cf0,
            limb2: 0x20693c83b33ca0af,
        },
        r1a0: u288 {
            limb0: 0xf367a821aaa905eeee55f6bd,
            limb1: 0x90b2b2653688d0b81639e13c,
            limb2: 0x11625852133dbe3a,
        },
        r1a1: u288 {
            limb0: 0x4cc6e9782b2196c5a89a0f48,
            limb1: 0xf0bd6a56027e9d8dcf491f90,
            limb2: 0x31285e951fc24a7,
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
            limb0: 0x151460132b6a1eadfc0476c6,
            limb1: 0xe911656c4fb78be70e7a9b96,
            limb2: 0x18ec8a3450bfacb4,
        },
        r0a1: u288 {
            limb0: 0x369323ee2ffb4e37df31b813,
            limb1: 0xc7df017186878fbffbd40197,
            limb2: 0x1c85f77b10bce1aa,
        },
        r1a0: u288 {
            limb0: 0x8af1bea72b17f765d4c0c396,
            limb1: 0x8460f2a276fe9a3f4931db7c,
            limb2: 0x2918c6469682ff91,
        },
        r1a1: u288 {
            limb0: 0x4ecb9afd5c8f160c32896764,
            limb1: 0x4cde1420fde44918eee3928f,
            limb2: 0x8e911d17f3d21db,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8f90c9694807781902d770e,
            limb1: 0x2cfce568b9714410d1fbdaf4,
            limb2: 0x12fa91de13104a7f,
        },
        r0a1: u288 {
            limb0: 0x30054a7087cd73dabbeb60c6,
            limb1: 0xb7a47a8cdb99edab9a1868e9,
            limb2: 0x52fca5982eb0878,
        },
        r1a0: u288 {
            limb0: 0x49b8e8ba1f6d597e71f6586d,
            limb1: 0x78cb6f2f49bf5283fd9e7ad2,
            limb2: 0x4aef6a3db3d9d4b,
        },
        r1a1: u288 {
            limb0: 0x6a16276ed1fa4e430967ceb0,
            limb1: 0xc50dbc3e24d000755cef5812,
            limb2: 0x107d990e42fea700,
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
            limb0: 0xd2ae65e9969a7062a7a3afea,
            limb1: 0xfa5a6ba6811ae9913fef2637,
            limb2: 0x2fcc395af13b899,
        },
        r0a1: u288 {
            limb0: 0xa11c75c48f23b49ee3170b9c,
            limb1: 0x9a6701d86c24a650a5ae49f9,
            limb2: 0x11066fc7943ca83f,
        },
        r1a0: u288 {
            limb0: 0x562644823987aa4e7afb1bb3,
            limb1: 0xebb4bfe36cb9a07b7d104176,
            limb2: 0x229b0a66e28c78a8,
        },
        r1a1: u288 {
            limb0: 0x961c16ef9fc187a4531a6dc8,
            limb1: 0x469d96fe447b2d766b1c95e3,
            limb2: 0x13d6cb9718f1267b,
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
            limb0: 0x32b3a4e747f11be0a80687b3,
            limb1: 0xc86a935cbf50a00e03baf775,
            limb2: 0x2acc6be2b26a5ec1,
        },
        r0a1: u288 {
            limb0: 0x68f0657a67e55f14a052c833,
            limb1: 0x79016d8f3475be2cebf4effb,
            limb2: 0x254e56ca24dafb2d,
        },
        r1a0: u288 {
            limb0: 0xe10507a3415bde456bb18d0,
            limb1: 0x524af4b490a3c6db2662ca3a,
            limb2: 0x2e9daa4de84a7a26,
        },
        r1a1: u288 {
            limb0: 0xddca0eac35c5fe02c14131,
            limb1: 0xf4d023862d2ba309cce9417c,
            limb2: 0x153f6fd413e156f4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5bd1c3c7be6cd48c2b782ef3,
            limb1: 0x238e436c0baf9a77c147c963,
            limb2: 0x6d2c9335dc5b835,
        },
        r0a1: u288 {
            limb0: 0x1127da9772146b27cd4f8b63,
            limb1: 0x92e2c86f0b089f1561c240b2,
            limb2: 0x1dc8827be35f449e,
        },
        r1a0: u288 {
            limb0: 0xa302a1b27f98ff387c40798c,
            limb1: 0xedea67f493a4a5d20e7504f6,
            limb2: 0x2c139123fc3922a4,
        },
        r1a1: u288 {
            limb0: 0xae606f61cf515bec396f3e1,
            limb1: 0xfbe0dbe76286191199fd6d30,
            limb2: 0x2b7853195cca1821,
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
            limb0: 0x95b1101201c3cf1eec37a45e,
            limb1: 0xe5b0cb1c7a4bec4a9d547e87,
            limb2: 0x2ca52e83f15a44e8,
        },
        r0a1: u288 {
            limb0: 0x112c4a11275432e08530d69a,
            limb1: 0xf5ce4eafcb50853297124592,
            limb2: 0x26ba69a6080ace16,
        },
        r1a0: u288 {
            limb0: 0x88e462be8fa2ebb3553aa8a9,
            limb1: 0xae30f1e1084f174a0c708347,
            limb2: 0x1b67c1813cf25444,
        },
        r1a1: u288 {
            limb0: 0xd382a2bd214b3da1c0574538,
            limb1: 0x11a459f8788ac37a2eeedd39,
            limb2: 0x42034a34a386fe3,
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
            limb0: 0x68b3b1a04364a97c069775f3,
            limb1: 0x16d072c86ee4d56717c5770c,
            limb2: 0x2cac0d933d52f766,
        },
        r0a1: u288 {
            limb0: 0xd6b7447226180d00014406b9,
            limb1: 0x7b597a18693fdd5d020d6028,
            limb2: 0x16cbaae860525b90,
        },
        r1a0: u288 {
            limb0: 0x1772de5f2ab11d998a100464,
            limb1: 0xcfa6bffd55e058a9ebc2e26b,
            limb2: 0x1aa75c79bb6c71,
        },
        r1a1: u288 {
            limb0: 0x8f961de30c22d07842756a48,
            limb1: 0x69471fddaa057a3475cb15e2,
            limb2: 0x7081e41e20f7a82,
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
            limb0: 0x4573c3b02b3ac467254ff93d,
            limb1: 0xbf235374474a0c84613c0f7b,
            limb2: 0x27b3f82f942715fa,
        },
        r0a1: u288 {
            limb0: 0x76c60c0571a0c05e45c97dfc,
            limb1: 0x6a6fdc56f93ee2f6bfd08439,
            limb2: 0x56a136b6001ffe,
        },
        r1a0: u288 {
            limb0: 0xf36da8c17501bcef6ca0f58f,
            limb1: 0x7e452d7a24f368ce48b00410,
            limb2: 0x28a7b0015ae290e3,
        },
        r1a1: u288 {
            limb0: 0x251934ae0319792b5ca1ef0f,
            limb1: 0x5cc500fe6c7f68e2f7ae609a,
            limb2: 0xfd90560923ebfb1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfbea94c0408d641a110e0470,
            limb1: 0xb661d4dd455d4ca521636426,
            limb2: 0x29a2acd5182b82f5,
        },
        r0a1: u288 {
            limb0: 0xc9745b3beafdeb5b0043077d,
            limb1: 0x3902d1f0f9652e3ca373d9f2,
            limb2: 0x6f683032617efb4,
        },
        r1a0: u288 {
            limb0: 0xb5c488e6467e13abcf023d76,
            limb1: 0x178c04485c63b11d090bfeca,
            limb2: 0xe5ebf42719cb8d0,
        },
        r1a1: u288 {
            limb0: 0x8313efeca529cf35d79bf150,
            limb1: 0x2b57114d2d8cfbaca569aef9,
            limb2: 0x2c45276498d0bf60,
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
            limb0: 0xb0f968ed5a49fb671d84e64a,
            limb1: 0x450c49f671293eba1d9679ef,
            limb2: 0x216cc8c504677b,
        },
        r0a1: u288 {
            limb0: 0x16dce92e9648ef21e12ca0c0,
            limb1: 0x1653d362548e37a2dd95d226,
            limb2: 0x28a623a7a7b791e4,
        },
        r1a0: u288 {
            limb0: 0x71a94ee907609482af21a5f0,
            limb1: 0xf89ea18c71f60ba062fe8af1,
            limb2: 0x28838a10d28cc0c7,
        },
        r1a1: u288 {
            limb0: 0x3e2ec5ed768ddc0a8527b489,
            limb1: 0xa8ef697c98154c525e64c094,
            limb2: 0x177499801e58791,
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
            limb0: 0xf7d482630ab076db7845c03f,
            limb1: 0x76d8f2467535862f6a349ef1,
            limb2: 0x163bdc76a0912210,
        },
        r0a1: u288 {
            limb0: 0x59a2f5c570696526794013c6,
            limb1: 0xd077026b0ecaa4c00bbd53ba,
            limb2: 0x48a9e78b181d2e8,
        },
        r1a0: u288 {
            limb0: 0xa1b186d82f330974a1871d23,
            limb1: 0x515c1535d7d999667dbb7718,
            limb2: 0x30159536827dffac,
        },
        r1a1: u288 {
            limb0: 0xea63825ef7e3cc2a4b1dc44a,
            limb1: 0xc73a5e7830ba46d041e77d22,
            limb2: 0x2ffce82b7e83cd4e,
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
            limb0: 0xf1884290ccd1c3ed25b3b74a,
            limb1: 0x15a82921b73accf88e98d3b0,
            limb2: 0x27a67983cea9576e,
        },
        r0a1: u288 {
            limb0: 0x6e7d208cba32659a44dcdb96,
            limb1: 0xf1e39d8b47018a43ec732af9,
            limb2: 0xbb0f8f8ba52ed21,
        },
        r1a0: u288 {
            limb0: 0x8cbcc0b3a653dc46f911797b,
            limb1: 0x5851a4fb437ffde11cc5785b,
            limb2: 0xf8636bd2812769d,
        },
        r1a1: u288 {
            limb0: 0xa5529c90c25eef9e0ef043a7,
            limb1: 0xd4bbf69b73c13de4ad24af34,
            limb2: 0xbb0ea4eeb297c72,
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
            limb0: 0x8eef7e1bc33e2742d07be305,
            limb1: 0xc0214b01077d102dd1c6e013,
            limb2: 0x29ffc82b9d6e58ef,
        },
        r0a1: u288 {
            limb0: 0x8ff51b8c91bc833306b0ac70,
            limb1: 0xd2775a5ef9d055155a4d233c,
            limb2: 0x2d89fd295b3dcefa,
        },
        r1a0: u288 {
            limb0: 0x2f5cb48f29734c8c58e0c39f,
            limb1: 0x71f657b642232f1207fbb5f5,
            limb2: 0x15d4825d1eb391e,
        },
        r1a1: u288 {
            limb0: 0x4aaff5f6527b807bfdebda5e,
            limb1: 0x525d0abbc970ea204a812483,
            limb2: 0x9b9e7bc5000ce84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32da11d0ecb532f8bd284b3,
            limb1: 0x9b1c696d062d71649416ee18,
            limb2: 0x9abb28b4641fc4d,
        },
        r0a1: u288 {
            limb0: 0xc8344f60910ac75b2dc54d52,
            limb1: 0x38c349120636ed0cf5b2aa00,
            limb2: 0x27a98fa0137362e,
        },
        r1a0: u288 {
            limb0: 0xed848900b0b3fc05b1b57ca5,
            limb1: 0xc8e5782ad1fadbea2ab81f27,
            limb2: 0x27573793d2c7fb12,
        },
        r1a1: u288 {
            limb0: 0xc857310204c3e0d74253f5cb,
            limb1: 0x7809dfdb9cf760053d1ca79a,
            limb2: 0x2f518929c594d57,
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
            limb0: 0xb5006f95cc4c4b38355a0a99,
            limb1: 0xee7e5524a54c1bd202d18d26,
            limb2: 0x1a3e0cd770fd7226,
        },
        r0a1: u288 {
            limb0: 0x69ba4c90d4374134df9e9251,
            limb1: 0x3bb717983b158c7bb14c2ed6,
            limb2: 0x19ad9e8fc7ce4397,
        },
        r1a0: u288 {
            limb0: 0x3215db262f683ba212917181,
            limb1: 0x8fb27ccdfdb12cbccfdb5fb1,
            limb2: 0x3a33c85fad41e0,
        },
        r1a1: u288 {
            limb0: 0x40a79cb083b3db7a9dc5442b,
            limb1: 0x815e1618695880cc8c4a1398,
            limb2: 0x59ebdcc834e6def,
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
            limb0: 0x2458982a3253362bdc5e3bee,
            limb1: 0x97176e5b5f0fdf2f3ccce968,
            limb2: 0x20acafd56119a578,
        },
        r0a1: u288 {
            limb0: 0x1b69142747deb4f03cf87159,
            limb1: 0xccc1eae941c76e01616e1d37,
            limb2: 0x25a3611b55de8887,
        },
        r1a0: u288 {
            limb0: 0x179a126851e88034540858be,
            limb1: 0x64ce71b540158afb3732270c,
            limb2: 0xf90ca2969c99deb,
        },
        r1a1: u288 {
            limb0: 0xe5f79f1a3f1d8543a9027309,
            limb1: 0x82075c9e02feadf5f242759e,
            limb2: 0x2b2e4d91a69e59cf,
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
            limb0: 0xabba1a334b3bf9ce86497b41,
            limb1: 0xbb9c4e06ae036285583e2ebf,
            limb2: 0x267e1ef85ca2b75,
        },
        r0a1: u288 {
            limb0: 0x763298c6f8c0f1f1d0afb13,
            limb1: 0xeedb12be8799d293c75ae7a0,
            limb2: 0x1c370a7b970e2408,
        },
        r1a0: u288 {
            limb0: 0xb86a97b121816869a456161e,
            limb1: 0xe99e2a20a608fdcd553e58d6,
            limb2: 0x2dbb57dfcb6b11f4,
        },
        r1a1: u288 {
            limb0: 0x86932b77493b34ddfc9ca351,
            limb1: 0x2f05b323bda29a64314ceb1b,
            limb2: 0x8cb975a98966545,
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
            limb0: 0x7719fdc2643998d8c435c355,
            limb1: 0x4e2a60399973e63af0c3c84d,
            limb2: 0x134673348e4d297a,
        },
        r0a1: u288 {
            limb0: 0x1a3b032116f901f6aef2a28a,
            limb1: 0x719c3cda9b97e3d9c0d24ede,
            limb2: 0xb5eaa39be0507ed,
        },
        r1a0: u288 {
            limb0: 0x27a144044213019545df553c,
            limb1: 0xb2507c425c9dfa0d34522578,
            limb2: 0x2064c7d41bd9b813,
        },
        r1a1: u288 {
            limb0: 0xedccb3ab7f9481ff81cb2f70,
            limb1: 0x8680e638ce5489c5e100e5ca,
            limb2: 0x1d58abbfa05196b4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x34a2670b0a68e6685fa86e97,
            limb1: 0xa3c2bc88c0264cd2e12b66b6,
            limb2: 0x1ad8085d29be6a9f,
        },
        r0a1: u288 {
            limb0: 0x7b599faa860055b30199bf92,
            limb1: 0xaf579de7767d05d760bb4102,
            limb2: 0x2922df9736a8d43,
        },
        r1a0: u288 {
            limb0: 0x77e2686e13e910f4d01d0480,
            limb1: 0x70b309a08d77abb2a754a633,
            limb2: 0xf6f1e9b5645b0e9,
        },
        r1a1: u288 {
            limb0: 0xf367ba1bf5927b5f810bcdf7,
            limb1: 0x19418167298894fd28891e1e,
            limb2: 0x22c97e700311716e,
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
            limb0: 0xc5b75c8c2048bedad6448fba,
            limb1: 0x11e423c2009141bcdfb91e8e,
            limb2: 0x148a7a4abb320e14,
        },
        r0a1: u288 {
            limb0: 0xf51514570d140b8f259e1e33,
            limb1: 0xec058f855e24c60e3a8f619f,
            limb2: 0x1cc0a7eb5bf13659,
        },
        r1a0: u288 {
            limb0: 0xbf6a5dc3a16cd53261494dbd,
            limb1: 0x83d7662e5b859e1fba85af27,
            limb2: 0x18299413ee8a2d05,
        },
        r1a1: u288 {
            limb0: 0x997c09de31aefd8f239125f2,
            limb1: 0x73fcfc6b0f2346c1a374d4e9,
            limb2: 0x295a5836c5a08184,
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
            limb0: 0xf334c1a4b4536395517ae41b,
            limb1: 0xcfabaf2a57273487e02bb885,
            limb2: 0x754b360df35b6fd,
        },
        r0a1: u288 {
            limb0: 0x316b96bb2e37a9868d9cebbe,
            limb1: 0x33314b12b930d4efa7382f30,
            limb2: 0x2bd43b4b5c060fbf,
        },
        r1a0: u288 {
            limb0: 0xa7c033045467dcfe57131938,
            limb1: 0xe561aa005ca8e8eb237c5fd4,
            limb2: 0x1bbfad83e42f7de9,
        },
        r1a1: u288 {
            limb0: 0xa8e3e6a08decd4779f04d1e1,
            limb1: 0x75d05adc275221c61bb9586f,
            limb2: 0x1f95a674763af5ce,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2527de8656f5b89319b02001,
            limb1: 0xea63dd92dfb33aa2e08c5516,
            limb2: 0xe658541deb7b0e3,
        },
        r0a1: u288 {
            limb0: 0x430dde1e743e78e55f0c1807,
            limb1: 0x16b1cc92c4b07f2a8703ae8,
            limb2: 0xe7a3432585718fd,
        },
        r1a0: u288 {
            limb0: 0x58e77c186801b96357bd9ab3,
            limb1: 0x9f6a236d6d99efd237d46020,
            limb2: 0x646f8f8d8ed42f9,
        },
        r1a1: u288 {
            limb0: 0xb73dd8698f5386109d7b76ec,
            limb1: 0x578f8fa51d65c638414748c3,
            limb2: 0x1d2b4e3716d5348b,
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
            limb0: 0x15934a175e6adb7adc8f9e28,
            limb1: 0x89784006e0a101ef6d2b9a72,
            limb2: 0x1700e169c230a6cd,
        },
        r0a1: u288 {
            limb0: 0x5eebe4a92bd36878bc42ac5b,
            limb1: 0xebd69e38b852ba78796a3c95,
            limb2: 0x11a266cb9c96f802,
        },
        r1a0: u288 {
            limb0: 0xd5690fc9a6280f4493c4f739,
            limb1: 0xe6e074328e192eb3ad2c3b4,
            limb2: 0x254d7e8c06ae8d37,
        },
        r1a1: u288 {
            limb0: 0x54a30cf406a6aca6172d793b,
            limb1: 0xdfc6d06e76dd3d5ff4820958,
            limb2: 0x304021c79167fbbf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb589fac18728421cab73b176,
            limb1: 0xd057fcff77a0b7222b5d290a,
            limb2: 0x208a57d33fff0be3,
        },
        r0a1: u288 {
            limb0: 0xa191de44ba8024f0d8a3f64c,
            limb1: 0xae8f89e051320d8925dc1d63,
            limb2: 0xce86d624f79329b,
        },
        r1a0: u288 {
            limb0: 0x17a61752245308085dda6174,
            limb1: 0xf8b048af6e303bdce4ff4af2,
            limb2: 0x2e6180a369426b37,
        },
        r1a1: u288 {
            limb0: 0x1c4c525385428b3cdf022f43,
            limb1: 0x73bd10257e3bdb5accd0394b,
            limb2: 0xe1d2de26c285ef9,
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
            limb0: 0xa21bebfc0c9a776087fd9417,
            limb1: 0x33961b46f7e14002c2f11faf,
            limb2: 0x2e52c4fc8cd8a004,
        },
        r0a1: u288 {
            limb0: 0x9762e1666c23038e83f04d68,
            limb1: 0x606b87a67fda746f8cc8d5d2,
            limb2: 0x48f563b9a491eda,
        },
        r1a0: u288 {
            limb0: 0x30020873e2b3c9c59ec5d91e,
            limb1: 0xc37e799d46dbed563da3c56c,
            limb2: 0x9e245a4232811e0,
        },
        r1a1: u288 {
            limb0: 0x3d005250d28d6db24995ce3f,
            limb1: 0x54bb601d6c62fe76646adc6e,
            limb2: 0x1b021416619f262a,
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
            limb0: 0x865b82969674f18326ce952f,
            limb1: 0x597520b06375be0f42bd43b3,
            limb2: 0x789887df0240a31,
        },
        r0a1: u288 {
            limb0: 0x4bb68536f42603077fc0247,
            limb1: 0x6ae30daf62da1a0e9fc3b006,
            limb2: 0x24fa7243bef59234,
        },
        r1a0: u288 {
            limb0: 0xc5a9ba2ee06ee1d0222f2b3c,
            limb1: 0xcea7827d2f2b69971a5f47e5,
            limb2: 0x226c39cec8440743,
        },
        r1a1: u288 {
            limb0: 0x71288aa6500e316119ff1914,
            limb1: 0x714b000e4684b7701b6e3443,
            limb2: 0x14f0311d878b1611,
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
            limb0: 0xdf1bf5d15417213c8ba085e2,
            limb1: 0x2e08ba475f0aa7d7034291d6,
            limb2: 0x32f44a8218a1e23,
        },
        r0a1: u288 {
            limb0: 0xa492a01ee3c80b63589f1d9a,
            limb1: 0x250ca280b5db328ef51a54fc,
            limb2: 0x7862d53db5eb975,
        },
        r1a0: u288 {
            limb0: 0xab16bdaef94194b0ef1717b8,
            limb1: 0x76609dc42f37ff7fe5213391,
            limb2: 0xdc80e96f3adae8f,
        },
        r1a1: u288 {
            limb0: 0xc510d4002f922950dd153395,
            limb1: 0xf25e60d6e39cfb7d16f9e916,
            limb2: 0x1bdbcf9f6519bc39,
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
            limb0: 0x30016cfa1f23c87b904c0fc1,
            limb1: 0xed8bfd27caded7c4d485c67f,
            limb2: 0x41b31be871a337e,
        },
        r0a1: u288 {
            limb0: 0x4af8d82f40668f50db47feb6,
            limb1: 0x3dca289f275e168fbe85a335,
            limb2: 0x114b4c9b23741ad8,
        },
        r1a0: u288 {
            limb0: 0x5f3d04238a112ac80edeafbd,
            limb1: 0x34e1a98ec44e0af1b1694211,
            limb2: 0x2444ef6ca555e81,
        },
        r1a1: u288 {
            limb0: 0xfd7524f62de26c5b8f467714,
            limb1: 0xebc8bc726fb288ce7d9e9f65,
            limb2: 0x225d3dc72f180b77,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6d31076320c731b14a293bf,
            limb1: 0x994c5d1de48d09a573b7ce79,
            limb2: 0x605bdfd4e29981e,
        },
        r0a1: u288 {
            limb0: 0x25403f953b494b7e367c0a81,
            limb1: 0x613a65d7df09563e4e00607b,
            limb2: 0x11529aad7308f292,
        },
        r1a0: u288 {
            limb0: 0x9c43154e130044baf9d7d2b5,
            limb1: 0xbaf3abf811da8d1545734bf,
            limb2: 0x260a1d6a9a36fb74,
        },
        r1a1: u288 {
            limb0: 0x1f30ea2d09af13028a40ac8,
            limb1: 0x699643fb540364346cc872e5,
            limb2: 0x109455be6f2fda41,
        },
    },
];

