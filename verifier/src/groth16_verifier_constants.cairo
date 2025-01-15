use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0xba375c27427e99939ba2d554,
                limb1: 0xbeca2fd145f02a1454d4f151,
                limb2: 0x256b9b7ae2b49a46
            },
            w1: u288 {
                limb0: 0x92d69f3e879db28d18570b46,
                limb1: 0xfc078c816ccd8f069ebe123f,
                limb2: 0x165fa46bcf95cee5
            },
            w2: u288 {
                limb0: 0xb1a0ec3b34260f0fdd9a6673,
                limb1: 0x6d436eeaab6f62aed9bdca45,
                limb2: 0x145242490d394839
            },
            w3: u288 {
                limb0: 0x1ea47cd8533aa7fb2cb5b613,
                limb1: 0xf3c73ba5177effff09d3156e,
                limb2: 0x8752fa4870b63d0
            },
            w4: u288 {
                limb0: 0x7dc57675aa63efd41c550bb2,
                limb1: 0x8905b84de50f12b3cf4c3e19,
                limb2: 0x1da5a2643519f4bd
            },
            w5: u288 {
                limb0: 0x73885d3048b767ee1f17cc42,
                limb1: 0xcf4180fe65fa72dbcc80b6d9,
                limb2: 0x5b431bc64220989
            },
            w6: u288 {
                limb0: 0x40754ad2c5e0064d5bc2485b,
                limb1: 0x8d725935d290c30b186723b5,
                limb2: 0x8bfefd9b46e2cb9
            },
            w7: u288 {
                limb0: 0xf26defe2687d59beca66debf,
                limb1: 0x82210fbd3f290733385a1ba1,
                limb2: 0x26e2cd858d562202
            },
            w8: u288 {
                limb0: 0xb82372dbf2b4037922926d05,
                limb1: 0x8b558baa55a03cde2bf86e1a,
                limb2: 0x1148f937e2912fb8
            },
            w9: u288 {
                limb0: 0x33352733031eedc5388421a3,
                limb1: 0x1f723b97a3f4cb40c459744b,
                limb2: 0x1febda01b9d97f6
            },
            w10: u288 {
                limb0: 0x9203b6acfd5d5212b4f53c3d,
                limb1: 0x44e1aba28b948d08acfd08,
                limb2: 0x69673004d45250e
            },
            w11: u288 {
                limb0: 0xe87a8660518043ac9e32d63a,
                limb1: 0xdfbfc98c3bc621b44beb2642,
                limb2: 0x2b8208619449ba10
            }
        },
        gamma_g2: G2Point {
            x0: u384 {
                limb0: 0xf75edadd46debd5cd992f6ed,
                limb1: 0x426a00665e5c4479674322d4,
                limb2: 0x1800deef121f1e76,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x35a9e71297e485b7aef312c2,
                limb1: 0x7260bfb731fb5d25f1aa4933,
                limb2: 0x198e9393920d483a,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xc43d37b4ce6cc0166fa7daa,
                limb1: 0x4aab71808dcb408fe3d1e769,
                limb2: 0x12c85ea5db8c6deb,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x70b38ef355acdadcd122975b,
                limb1: 0xec9e99ad690c3395bc4b3133,
                limb2: 0x90689d0585ff075,
                limb3: 0x0
            }
        },
        delta_g2: G2Point {
            x0: u384 {
                limb0: 0x7c4692fa5ad1aadb0c6db906,
                limb1: 0xb70e5b86cbd602d8e421bcd8,
                limb2: 0xd88614246a06260,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x7d03e13acd3fec42843a2c06,
                limb1: 0xb096e841e69626b262cc9132,
                limb2: 0xf2a79775974c811,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xf8ec0bd5485bfba09b422b1b,
                limb1: 0xabc97b59869d0510fc231f25,
                limb2: 0x199063c3072141a,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0xa091fc7fc94f638f0c0f6374,
                limb1: 0x20e0240befe915cace8eadbd,
                limb2: 0xb34643f6866577a,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 7] = [
    G1Point {
        x: u384 {
            limb0: 0xa1cffb2b594e75ba1753f03c,
            limb1: 0x53954ee2318ee6bfa5f5b0a8,
            limb2: 0x16867450c8a3c80f,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x876c1e7328ddba366e6236f8,
            limb1: 0xe8f826d16c686f6296194b54,
            limb2: 0x1283df9fead099a,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xd4451422ab7bda862335889b,
            limb1: 0x83d4873af8c2c4710d5e1,
            limb2: 0x2606d748253c69f0,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xdd908101270ef6f592938752,
            limb1: 0x506b872333e35d4f1c8e842b,
            limb2: 0x17ab69c4f57e9fdc,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xe7bc6e7dd86d2c0b1fd3e966,
            limb1: 0xdbe03df703b02ec12acdfe36,
            limb2: 0x23dcc426f1e48e88,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xebae4383662c2c670c5bc411,
            limb1: 0x359926320db96eb5656a1161,
            limb2: 0x27b4cd8af27ea1e1,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xc41b9f7e084b829ced2c1e49,
            limb1: 0xcb292feb388133ba82ba1435,
            limb2: 0x1542456007f91588,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x87c8af394c52ebb3b3d2f72a,
            limb1: 0x77961822cd6363ecb98ec44b,
            limb2: 0xc0d9542d31099a2,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x123f4d09bbf3ab0dd66f904c,
            limb1: 0xdfd454e75e04719ce4c0d300,
            limb2: 0x22e409feff5c1e25,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x6352590fa9efae210a33f06f,
            limb1: 0x75d38f3d8124c2ecdfff1dc4,
            limb2: 0x4197a80e2131352,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x879ef216f67f0952a5db0a2c,
            limb1: 0x9d9914a32754ceaff9f28506,
            limb2: 0x6a5d2d6d8a54b3,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x10551765987ddc7ef1b0e56e,
            limb1: 0x195ca7bf24c8b06fb5b6275,
            limb2: 0x1490d170d493b65c,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xa55b68451b09ae73f4577441,
            limb1: 0xfc917e552dd6d3f432ddfa2b,
            limb2: 0x1122eb79944bb82b,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x46848106a30beb58dbbfd27,
            limb1: 0x7caac3616d8cd9e3be2718db,
            limb2: 0x188ccb371243c605,
            limb3: 0x0
        }
    },
];


pub const precomputed_lines: [
    G2Line
    ; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaece4c689dc078be0e59ff0,
            limb1: 0xfb9ef79aa9822a5ac00aecf8,
            limb2: 0x23ef2d6b8dd9df74
        },
        r0a1: u288 {
            limb0: 0xd887ac54c1b7246d569e3d11,
            limb1: 0xec83a3c79034425c1cbed044,
            limb2: 0x4cf61f316772f3e
        },
        r1a0: u288 {
            limb0: 0x3ce72bd91e4583e4cf4a23b5,
            limb1: 0x79fe9d609912297da68919b7,
            limb2: 0x2eb58e2495122c58
        },
        r1a1: u288 {
            limb0: 0xd07f8c86eeea7c6b52f719b0,
            limb1: 0xae48febbd1e1c643cffdae76,
            limb2: 0xc7dc9f9ebe7fb40
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5d84e5c6b244848af7975d57,
            limb1: 0xbcb14e1bd7ff2e02d7767d99,
            limb2: 0xc7521075357c0b4
        },
        r0a1: u288 {
            limb0: 0x8fea1e387a6967a981dec036,
            limb1: 0xcbcca1eef14d16017ac29a4c,
            limb2: 0x2b94ec7fcaba70ea
        },
        r1a0: u288 {
            limb0: 0x2b8a9eb41ddb08320932d992,
            limb1: 0x3e51a855e86f2edff0f850da,
            limb2: 0x1aec04e4c1f73d1
        },
        r1a1: u288 {
            limb0: 0x97f23e064d360fab8585e397,
            limb1: 0xa0746faaf9f9219c783bc1a,
            limb2: 0x23e68478f549a4e9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc9a48539bf350db361360f80,
            limb1: 0x7a6983a62ba85d9a8ecfc780,
            limb2: 0x270465d60efbe7b5
        },
        r0a1: u288 {
            limb0: 0x170f268ccc14c1e719121544,
            limb1: 0x69e136336416fbbcd549226,
            limb2: 0x2afbd3cb172dbb9f
        },
        r1a0: u288 {
            limb0: 0xba784baf7456ba3d3ab275e2,
            limb1: 0x8ff99a55194563785fc29146,
            limb2: 0xc1978c1ddcbcb07
        },
        r1a1: u288 {
            limb0: 0xa7712cfd4d9208038e743444,
            limb1: 0xdf2c3f9527ac19cbd1538c82,
            limb2: 0x1babede4f80c8242
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7dfddab44e3c8c39d8cb3bb5,
            limb1: 0x62e7507354fd32bc9f6d7625,
            limb2: 0x133c034a05228fde
        },
        r0a1: u288 {
            limb0: 0x35ef7e1c6d0ed6ce67192299,
            limb1: 0xaa6b45f8959c7011c55f7964,
            limb2: 0xdac068aac18c666
        },
        r1a0: u288 {
            limb0: 0x7df8b3a9e349e8d1cb20eeaa,
            limb1: 0x3eec680fc19712fa31b53b46,
            limb2: 0x3936ff38acad750
        },
        r1a1: u288 {
            limb0: 0x4916f1b8e4128cca3cf94ce7,
            limb1: 0xa7c586690b55c806d42572de,
            limb2: 0x2a18966caa41c69a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbebd5970c696c707a9720179,
            limb1: 0xa4e659cfdf97c27b4a41735a,
            limb2: 0xa27eb738bfce5b1
        },
        r0a1: u288 {
            limb0: 0xa45d2d30a838930a67fc9f74,
            limb1: 0x27283e6e5a6aef18d5803831,
            limb2: 0x258bbd8a8137af7a
        },
        r1a0: u288 {
            limb0: 0x7268eba91c88d19caba4e57b,
            limb1: 0xcf8daa484ec3b329d929d69b,
            limb2: 0x266a8bb6248502
        },
        r1a1: u288 {
            limb0: 0x3dcdb9efca1f1ec4c73b0b42,
            limb1: 0x49c1e112cf6de35c9900d8dc,
            limb2: 0x910993bc1de3c9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x59618d4f73d873c6d1013bdb,
            limb1: 0x705b462c08d53678c5a4daa,
            limb2: 0x6c5f20a30e2035e
        },
        r0a1: u288 {
            limb0: 0x23bc2511fc075ac35324988b,
            limb1: 0xf7193588839b6c8c9f50447,
            limb2: 0x14ee62c0d98f377e
        },
        r1a0: u288 {
            limb0: 0xb9e78b447a3c52a34285083c,
            limb1: 0x8c420bab45da7cce4e537907,
            limb2: 0x1b1c4df9903b605b
        },
        r1a1: u288 {
            limb0: 0x46cc180022f90da0bc384fd7,
            limb1: 0x1fd91b924ff868c8afcccfef,
            limb2: 0x8a0b86ed79c9fa8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf5d66ac565552773159cf1b1,
            limb1: 0x1dbb9690c8958a29a65eb07b,
            limb2: 0x193089093b73fbc4
        },
        r0a1: u288 {
            limb0: 0x3078fc6ba53b652208c7ef65,
            limb1: 0x159022ab8404c0c3ada045d4,
            limb2: 0x15416b1e0191b9
        },
        r1a0: u288 {
            limb0: 0x377649c2c9e5b7510adcb1e1,
            limb1: 0x53a577b9bb5e853da1f453e8,
            limb2: 0x708d13c74db8306
        },
        r1a1: u288 {
            limb0: 0x2ce7ed5dc37c6525fca0c45,
            limb1: 0xd916c2e2c9df9cda3fb143a4,
            limb2: 0xf3d64cb7b248b76
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7af85f037ab95f606914e82a,
            limb1: 0x68d74144eeb074d4c34010aa,
            limb2: 0x21b19d8138a11fdc
        },
        r0a1: u288 {
            limb0: 0xa09f0609ffedb425ccd432d0,
            limb1: 0x28fb7e44bdacf016305875ec,
            limb2: 0x12ab677c9dd617af
        },
        r1a0: u288 {
            limb0: 0x3299fea68c52e2fb8708dfe6,
            limb1: 0x7397501c6a804aa06efbe837,
            limb2: 0x2e32c2295e63367b
        },
        r1a1: u288 {
            limb0: 0x7faa5c9003bb3bb8ccf40f62,
            limb1: 0x5f4011e094f4b95aa7d3d339,
            limb2: 0x16a69fb035778b83
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbaca9afd8616d67acff3678,
            limb1: 0x84321d92748697c6b92bfc3a,
            limb2: 0x778c9fc18b19efe
        },
        r0a1: u288 {
            limb0: 0x487917cc83de8f114cef544b,
            limb1: 0x7ab5f9c7b1732b2ddd8d7727,
            limb2: 0x1c8bb7f32e3fe62f
        },
        r1a0: u288 {
            limb0: 0x6da5b268c2f6560ba4b9c8e,
            limb1: 0x81865ebc680edd4a17b9e1de,
            limb2: 0x1b5d8f07a6e7436f
        },
        r1a1: u288 {
            limb0: 0x7ebc32139191e1bbbb4a3b06,
            limb1: 0x3677792ff32f73d3e87fafbb,
            limb2: 0x1819db7cb95c8d42
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x57ab9bb717c4abda5fb3ae5,
            limb1: 0xbd77cc875879059d829091a7,
            limb2: 0x2256998d76a7b79d
        },
        r0a1: u288 {
            limb0: 0xfc8b1d4e6d395bfd0d9637b7,
            limb1: 0xa9b47a2f3c88580c965c0f0a,
            limb2: 0x166f32157d887827
        },
        r1a0: u288 {
            limb0: 0x7137ca7fa37eca26dfdacf54,
            limb1: 0x30676d4bc7efcc547e9fd5c,
            limb2: 0x22b7859cc065c935
        },
        r1a1: u288 {
            limb0: 0x7805ccd2ebdfd0fb30a280bc,
            limb1: 0xf8f11384e48314d8b2e37b30,
            limb2: 0xbd94a84d12f25c1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf39d791c7a8b695477e12dfb,
            limb1: 0x9560bca5976256f8860710f2,
            limb2: 0x2c180edeeef18dd4
        },
        r0a1: u288 {
            limb0: 0xe7aab204a66552a3a81ec925,
            limb1: 0x4948364e30fe4476c194be5d,
            limb2: 0x22621a2e50c2692b
        },
        r1a0: u288 {
            limb0: 0xc1423f62079e8eb0f8566769,
            limb1: 0x8c8df0781f4c7453e7e56b4a,
            limb2: 0x785249b16c5148e
        },
        r1a1: u288 {
            limb0: 0x717d9d1cdf458b4bcc8899ea,
            limb1: 0x2ba9ba9667a671db31fe9bd4,
            limb2: 0x2f47c8236bc5d42b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e59cd4cdc11e6bd298e5d97,
            limb1: 0x11013e9e622652af798bd8ad,
            limb2: 0x7af054c1897fa70
        },
        r0a1: u288 {
            limb0: 0xe4f4bd286e2f223fa129f285,
            limb1: 0x4900c8aa8d1d3760d565ec20,
            limb2: 0x11c1e924160af8c6
        },
        r1a0: u288 {
            limb0: 0xd6aa92bf1fbf74359f9deec6,
            limb1: 0xd2291c5fbd7bbc206e552964,
            limb2: 0x5f0b0f2f459df9f
        },
        r1a1: u288 {
            limb0: 0x75ae48958d4a66a36de67404,
            limb1: 0x552acf3f2bb03019c983726b,
            limb2: 0x13c4b2eae130a04
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d231dfe0a71b522e3b164c5,
            limb1: 0xa789961e4b8a0302b2f1f011,
            limb2: 0x1b48ac158ec04b74
        },
        r0a1: u288 {
            limb0: 0x6296ae2d544414cab456c1c2,
            limb1: 0xa44d3fb57620555fb0713400,
            limb2: 0x2dac6df35442870a
        },
        r1a0: u288 {
            limb0: 0xb3e00c4b279157668c38813a,
            limb1: 0x66530d8b7a08e0cbee448c1f,
            limb2: 0x2152a982ea23f404
        },
        r1a1: u288 {
            limb0: 0x3cac63b0568d62381c0b7f1f,
            limb1: 0xe8ad9d255c40842abe7e124f,
            limb2: 0xe103dafd68d816b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcf368854397ffec2c1a15d44,
            limb1: 0x4c73c4e6042d9fbf8a2dcabc,
            limb2: 0x1281a3fe8f8fe9f5
        },
        r0a1: u288 {
            limb0: 0x14107667866b55411d3cda10,
            limb1: 0xaf538f0059624bead69cddf2,
            limb2: 0x2f426eb4fe24eac9
        },
        r1a0: u288 {
            limb0: 0x78c4316b51751330ef703938,
            limb1: 0x3f329d014f574d0a03f4d487,
            limb2: 0x1830995f68fdfee8
        },
        r1a1: u288 {
            limb0: 0x9191a49544104b535778087b,
            limb1: 0x9d7bd22ae98160ad94a8708b,
            limb2: 0x21a4d0255963fa56
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9c60c0df2d541775e1ff179,
            limb1: 0xf7c9be33dc63184bca4178f5,
            limb2: 0x14b6340c0dac4520
        },
        r0a1: u288 {
            limb0: 0x47f4f9c2ecd14be5569b022e,
            limb1: 0x3f88c9a4b1abd8a3f880114e,
            limb2: 0x27cd7c697d3d90ec
        },
        r1a0: u288 {
            limb0: 0xfccccd8a5f07c9c8f5bf338,
            limb1: 0xe0f5eddcb6d64af06267046c,
            limb2: 0x13fe8a5f54531a6a
        },
        r1a1: u288 {
            limb0: 0x42c04362d2d8fc4b1939566b,
            limb1: 0xf3025a866ed9a7a856805be3,
            limb2: 0x6e5f14e0c35e7c3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x63518a3d30cfe393b78a7b24,
            limb1: 0x1b616279e01b4d21ec0df7e2,
            limb2: 0xe8426056a8a58b5
        },
        r0a1: u288 {
            limb0: 0x2e29600194dafd7ec4b8a648,
            limb1: 0x9698a8e8e900263bf154cb8f,
            limb2: 0x1da800421aea68d4
        },
        r1a0: u288 {
            limb0: 0x5371c0fee6eaf421ad710d88,
            limb1: 0xb10983e286e25cb07ab0a1e8,
            limb2: 0x2a28dee6a416494e
        },
        r1a1: u288 {
            limb0: 0x14ca02740c2a21fe8c38d7b3,
            limb1: 0xa955c0317edb812d312f35d0,
            limb2: 0x2ce49cc85068b1d4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x84eab519b26b8bcbe0fb8c16,
            limb1: 0x8a9ecc04ef6e5390f4143446,
            limb2: 0x666fbf9d3a9582c
        },
        r0a1: u288 {
            limb0: 0xc58db2b0068c20832ea165e9,
            limb1: 0x264fbcc3d70be762d52f09db,
            limb2: 0x279f9ff191323d73
        },
        r1a0: u288 {
            limb0: 0xd13a6ca73e5001a96bbcc96b,
            limb1: 0x620428ed4f3ba7c00de70b4c,
            limb2: 0x1c1ebefa4395cad1
        },
        r1a1: u288 {
            limb0: 0x9d4a3eea8e79e4e08c36125e,
            limb1: 0x4033b5d7ae944596148239d3,
            limb2: 0x22df766a8c4da7ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfba0bf67ceee04166e56e167,
            limb1: 0x23c392f84a8bf362c0cb952e,
            limb2: 0x1b3684f4f9b781ff
        },
        r0a1: u288 {
            limb0: 0x1f4ff4157922f9b813940b11,
            limb1: 0x1a28c3ebb8ce09e9ef718e9d,
            limb2: 0x1ad7492076a58f3c
        },
        r1a0: u288 {
            limb0: 0xeace788829ba31aff22b2393,
            limb1: 0x87c5eaae14664eff737d40ce,
            limb2: 0x2391bbb9e860128a
        },
        r1a1: u288 {
            limb0: 0xc1b08ffb43f24a13f6619261,
            limb1: 0x65e715984eb7d4edd7131bb7,
            limb2: 0x2cdb277c7f65d0fc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeeff15026c4f72156e834d1,
            limb1: 0x1f6dc3f017d0055651f131f7,
            limb2: 0x2002d66290895497
        },
        r0a1: u288 {
            limb0: 0x3c6a447bbcf5ad8a3716a979,
            limb1: 0xa29cd379f30948e153555259,
            limb2: 0x242bc73bd34b69a1
        },
        r1a0: u288 {
            limb0: 0x782f00afc2def8c23344f73d,
            limb1: 0xcfd3fb8fe09627643bdc242,
            limb2: 0x2601e03738262aec
        },
        r1a1: u288 {
            limb0: 0x882ddbaa706e246f7e4c4dc7,
            limb1: 0x7f29598c8db61161291a5898,
            limb2: 0x19f9f8b2f7e1f379
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc73fe11c978b69f8762407a6,
            limb1: 0x7ec54d343d078fdf354a5431,
            limb2: 0x4d636d298f8df2
        },
        r0a1: u288 {
            limb0: 0xe7ac17a44af19008d0bceda9,
            limb1: 0xb53e0f8284eca55b2aa659aa,
            limb2: 0x4e0a5abf929b5d
        },
        r1a0: u288 {
            limb0: 0xe6c9432e693bf59000909047,
            limb1: 0x6620344e8b26bf51d11ec7a8,
            limb2: 0x2ecadadd81693ec0
        },
        r1a1: u288 {
            limb0: 0x4cfc9ac0057af34ebb12c3a3,
            limb1: 0x4c4f6a03167c828f2b76e2e3,
            limb2: 0x2049d86942889fb0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7f93ecb02d8ecbc91cc23ca0,
            limb1: 0xaa63bf0a29f013453f0b0cfd,
            limb2: 0x28d80e78f8d32f7
        },
        r0a1: u288 {
            limb0: 0x45fcac50e61fd99621859c17,
            limb1: 0x552b90b2ae655a6c3c77aaa9,
            limb2: 0xa21ef3ab405b0d7
        },
        r1a0: u288 {
            limb0: 0xed8c98cdf012c63b490a60a7,
            limb1: 0x586bc974278a39206135c7d2,
            limb2: 0x1d543a02b92e01e2
        },
        r1a1: u288 {
            limb0: 0xb4d51422581fa052db3a1377,
            limb1: 0x651f96e26e889744d794ada9,
            limb2: 0x1780d6ddcf4a09dc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x24cf83a0800c98ca3a8558,
            limb1: 0x799524c5fab627562782346,
            limb2: 0x6e4112c4cf6ec7d
        },
        r0a1: u288 {
            limb0: 0x5980d4a71ca154b01afd8fa5,
            limb1: 0xc684ba1ab85639a6f3a5bfea,
            limb2: 0xbfa021d84b480e0
        },
        r1a0: u288 {
            limb0: 0x30c2d4ae7789d17f75567447,
            limb1: 0x7316a0f9833cdcd86efaae35,
            limb2: 0x2f7857a444630c19
        },
        r1a1: u288 {
            limb0: 0x3f6e04c9c450ca8056410cd4,
            limb1: 0x228740dc733bc8a5cf58eae3,
            limb2: 0x1194b6fb072595ca
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x93fd1b5799f6297cfb56ec4b,
            limb1: 0x76430b4d3086d100e362dfbd,
            limb2: 0x77351d0640d62ab
        },
        r0a1: u288 {
            limb0: 0x57b0f1d773ac6578b4ba5dde,
            limb1: 0xc06f4bf3ad7115298d015458,
            limb2: 0x13ee0e7e8b45580e
        },
        r1a0: u288 {
            limb0: 0x5736d04609b8b4a457df008,
            limb1: 0x356be728c1c15c9ecc5a2ec2,
            limb2: 0x2919b22e11a86256
        },
        r1a1: u288 {
            limb0: 0x1cd7176c2c26f39c18a9541e,
            limb1: 0xe6a30fd35e7a5264c12ff82b,
            limb2: 0x1120986e0cd93470
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3da247a8bea79d6599d193bb,
            limb1: 0xe35f793c0f8aa33bf1605d0e,
            limb2: 0x2d599099c8e25e83
        },
        r0a1: u288 {
            limb0: 0x88a1a264dd83b54372e3b645,
            limb1: 0xdbea93b0ccf07cd1d1b7b55e,
            limb2: 0x1497aca2759c47c9
        },
        r1a0: u288 {
            limb0: 0x3e5a7d77faaff6da900b77eb,
            limb1: 0x9de86d5a16708b8340c577c9,
            limb2: 0x191baba4a61239d7
        },
        r1a1: u288 {
            limb0: 0x9e09cbee7f2e33c8c33880d9,
            limb1: 0x6e58b1506acce96a9f2ea2b8,
            limb2: 0x2c80146c3981ba0a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x68075f64074f223da1386b67,
            limb1: 0x10850cbe44aadaa7441e8341,
            limb2: 0x7b064d50011b64f
        },
        r0a1: u288 {
            limb0: 0x1e49a8b276bc93afff2f026f,
            limb1: 0x46d146a649d790606d6b7b3f,
            limb2: 0x152f4b3a3877cc18
        },
        r1a0: u288 {
            limb0: 0x5ba9c647b92ea7a3d4fddaf5,
            limb1: 0x61c838f1eac3b9a5033d86c5,
            limb2: 0x597a8d58dc6d0f
        },
        r1a1: u288 {
            limb0: 0x4d9a332c2c4bd98720cfa33b,
            limb1: 0x879e1bf6bbf8d2d898d7ace4,
            limb2: 0x2aa3a0be6d08752
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbab3c19af0bc5b73bf21873d,
            limb1: 0x5a93edaf90b55b10761c7320,
            limb2: 0x6a09455688c6254
        },
        r0a1: u288 {
            limb0: 0xadb8a2ef796f6c88db011b98,
            limb1: 0x66294714086745bf545933fb,
            limb2: 0x1b3a2e1008cb9040
        },
        r1a0: u288 {
            limb0: 0x44f98fe6f2772d3af2a680ec,
            limb1: 0x210def03a7270b0d4adff3ad,
            limb2: 0x89742b5892fcc41
        },
        r1a1: u288 {
            limb0: 0x70b6e623c708483c88a04285,
            limb1: 0x20c4b8b5fe07b78472ce7bf2,
            limb2: 0x26d0e7eaf2e469db
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x927b3b6c5cd390f407c4306a,
            limb1: 0xdd521fbd3698f25c2184d47c,
            limb2: 0x875ced852988e2a
        },
        r0a1: u288 {
            limb0: 0x56c7b25989ea5bab084b2a3,
            limb1: 0x757d794ffaf0adfad7b25e54,
            limb2: 0x1c3a1102186cf3bd
        },
        r1a0: u288 {
            limb0: 0x9262c52b565c62ce0ba7a721,
            limb1: 0x9b67d725abc80911b8d1e8b0,
            limb2: 0x2b7815053a6e7ef3
        },
        r1a1: u288 {
            limb0: 0xf4650b904c60736354da753,
            limb1: 0xa9c4eb174cae927646f62b2e,
            limb2: 0x22eeeba460296f80
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x84292d8a47b83bea3b1fba6e,
            limb1: 0x889c713165ea5cafa65c69d1,
            limb2: 0x7ffd29ce03506d7
        },
        r0a1: u288 {
            limb0: 0x5d941505461de3a9da81e19,
            limb1: 0xc5e074ff0a14588c10771b5d,
            limb2: 0x88ff2ec0b31b92
        },
        r1a0: u288 {
            limb0: 0x19fa81bb71b011cba661f293,
            limb1: 0xbed80a9a0f8dfe04c1ca6325,
            limb2: 0x2481970ad3daea0
        },
        r1a1: u288 {
            limb0: 0x2e4c19bea3fcecdf27009db6,
            limb1: 0x140d100e532e6d85b411ac1a,
            limb2: 0xd5c55b314839791
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8b78c2d974174b6f6305cb3e,
            limb1: 0xa67e54b29a14d0b203ba3cb5,
            limb2: 0x1e6a08605dfa2892
        },
        r0a1: u288 {
            limb0: 0x75aa98dcde91b768d7fcd753,
            limb1: 0x9d58d9b628fd75c47687addb,
            limb2: 0x1afcdb5b80bbcf2d
        },
        r1a0: u288 {
            limb0: 0x750d34c9a70148a6066698e8,
            limb1: 0x34a1d1105b26c0bc923dedc2,
            limb2: 0x27d7ac9f4b31a6d9
        },
        r1a1: u288 {
            limb0: 0xca1b9ebe542b28a04c6a685e,
            limb1: 0xf0ae837ddca7cbc82a560d76,
            limb2: 0x181eddae3d1bc828
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf4d263a818c5f4f3ffeb8f2,
            limb1: 0x14ae689ab7da97991f73d149,
            limb2: 0x18918a5f38cfc828
        },
        r0a1: u288 {
            limb0: 0xf3d730f570bf734290b029d6,
            limb1: 0xb5a2fedc8ad33e9f56d036ba,
            limb2: 0x133fd7b6a65a129
        },
        r1a0: u288 {
            limb0: 0x1705b13b6709dd6039ed02b5,
            limb1: 0xe06a6d5d2a466f09da36ef3f,
            limb2: 0x1c21de133084bbd7
        },
        r1a1: u288 {
            limb0: 0x85d324cdd47c1164db9c09b1,
            limb1: 0xdf25e59ddfccf4e5f8d2c04d,
            limb2: 0x12794f1737370361
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x81e320e6d6c328468b293b67,
            limb1: 0xf191930391e9b887957405da,
            limb2: 0x113093ac97494166
        },
        r0a1: u288 {
            limb0: 0x217a226252198db5e559a09c,
            limb1: 0xdf30e4419c19c442acf7efe8,
            limb2: 0x3be94cdc73c503
        },
        r1a0: u288 {
            limb0: 0x836ace6bc1f6f806ea262d83,
            limb1: 0x6b4b243ca031109f4aeb70aa,
            limb2: 0x522210a76db671d
        },
        r1a1: u288 {
            limb0: 0x957c3342e5b3ffffb4235fd9,
            limb1: 0x20e32219ec00c3aff1e2f43,
            limb2: 0x1a2bdef85543f361
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9e869906f4138a89dee6d91f,
            limb1: 0x123a66d00bd86a4ba18806c3,
            limb2: 0x29e32aeb0b0c32a
        },
        r0a1: u288 {
            limb0: 0xa2eabf150b0a59fb2e291675,
            limb1: 0x671c753b397a0aa4620bb198,
            limb2: 0x2c29f8f788c80f09
        },
        r1a0: u288 {
            limb0: 0xdc5581116500ff44256c12cc,
            limb1: 0x4e08a21acc41ba7f4a4c07ba,
            limb2: 0x1a8c10173a67cf04
        },
        r1a1: u288 {
            limb0: 0xf3eb497179de3e249021a54d,
            limb1: 0x7a217b4737990552af950fa9,
            limb2: 0x7458803023b78f4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8731e543085cabe93adfb33b,
            limb1: 0x6a9e0925d77bb15191b132ea,
            limb2: 0x2af7fdfd9f81081b
        },
        r0a1: u288 {
            limb0: 0x5ae0bb51008a1c7fbf7dcc34,
            limb1: 0x8c76c6b1f6c13596b9ff0c9c,
            limb2: 0x1c15c83bbc9d02ee
        },
        r1a0: u288 {
            limb0: 0xf926586c6de17dee8c12519a,
            limb1: 0x52fb444b4c470596c88ab89,
            limb2: 0x1b6edceaa0996a28
        },
        r1a1: u288 {
            limb0: 0xa5d63555e43d8c2ecc36dcb6,
            limb1: 0x8bc0ea0acdf6ac40d432b756,
            limb2: 0x2178fceec7a3ea3a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc34d14a290bc73277d5ff437,
            limb1: 0x525e793c186ffb02e6d92319,
            limb2: 0x2b921147ce5b7793
        },
        r0a1: u288 {
            limb0: 0xc7c4bf323e7e72a29f78bd4f,
            limb1: 0x44e067e8a236ae6eac446bc8,
            limb2: 0x28b992a5fe64c4a7
        },
        r1a0: u288 {
            limb0: 0x1b264e0476c20d3efe3f153c,
            limb1: 0xa8a47b0fedbce849afa084fe,
            limb2: 0x89cfc67bb2130b6
        },
        r1a1: u288 {
            limb0: 0xf959a6f599335d0098fe9907,
            limb1: 0xdb7ba7720e7fcc90cc9dffc6,
            limb2: 0x20188e25e185bce2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8391c971c1095b62694b5636,
            limb1: 0xe3658f6f1828a235eff9223c,
            limb2: 0x1618ca97fab04f2c
        },
        r0a1: u288 {
            limb0: 0x727afe3be760cb7a38a74fd8,
            limb1: 0x3722d171723b8d066072a6b2,
            limb2: 0x11de444d6426b78c
        },
        r1a0: u288 {
            limb0: 0xbf83dda405f76385b3ba88af,
            limb1: 0x112dfe398173e20712c7244c,
            limb2: 0xc20397033c41364
        },
        r1a1: u288 {
            limb0: 0x8f9bbff59174511c12b6daa2,
            limb1: 0xafe1cbdb2074b0cea9c84da8,
            limb2: 0x13332edcf71d94ec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc2aad4e0cddc92b7bdce07,
            limb1: 0x663a4979940b8a47407798e1,
            limb2: 0x2591d503a61ed36b
        },
        r0a1: u288 {
            limb0: 0x1a9708ba374d9e843ba62de3,
            limb1: 0x8323cf445ff7eead2d5a6bf5,
            limb2: 0xb52ac0c61d436bc
        },
        r1a0: u288 {
            limb0: 0x6e914621c33887790fbe806,
            limb1: 0x5d7617760c7815dd25533d41,
            limb2: 0x24d779768d53e1ec
        },
        r1a1: u288 {
            limb0: 0x2fdf7789912e3112abc720b9,
            limb1: 0x4aeba6a8dc038798d068ded9,
            limb2: 0x804a2ff12051b69
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x20019e421168e09be836e812,
            limb1: 0xcfb7bd664e7fd0c5e15dd0a2,
            limb2: 0xee232c2fc572ecd
        },
        r0a1: u288 {
            limb0: 0x6e1f74e017f712676541e80c,
            limb1: 0x7ae4fe02df9c5092bdc26aaf,
            limb2: 0x2011b9a742f8a824
        },
        r1a0: u288 {
            limb0: 0x98485fb7e32f43d6e9b2d820,
            limb1: 0x8b0398b1cd9cf53c2d46a36e,
            limb2: 0x1085537ad81898f3
        },
        r1a1: u288 {
            limb0: 0x23e1a8829f7b1792fa046d16,
            limb1: 0x3f3129595ba5f3d3eeec51ec,
            limb2: 0xa2eb169d82fe2de
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x81c5241241ef0bf0348dfe8,
            limb1: 0x8d1664c0bd3c8a05b585542c,
            limb2: 0x140ee07f690f9189
        },
        r0a1: u288 {
            limb0: 0xc1f41eb3fd4f118a5fda9885,
            limb1: 0x576258f5f7e82b8c190b1034,
            limb2: 0x28820b1531ac78d1
        },
        r1a0: u288 {
            limb0: 0xbe21b76119edb68bb96415ea,
            limb1: 0x4770334782fef1d269344d27,
            limb2: 0x22b7eccee27d4450
        },
        r1a1: u288 {
            limb0: 0x89e44d67959daa4964a8241a,
            limb1: 0x535167ca4ccf32c63499bb06,
            limb2: 0x1d153e305082c328
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xac34b3b0e1f7018cea70fd8,
            limb1: 0x11ffb73da5cb348d64333bf,
            limb2: 0x1d4c8d2556079bb9
        },
        r0a1: u288 {
            limb0: 0x91c0da674d82665c0523b916,
            limb1: 0x3e684eaf2d9a4e45b2a8b7bd,
            limb2: 0x4abb1c64513c1fe
        },
        r1a0: u288 {
            limb0: 0xe0dd2c20b1cd5c0e596e5b18,
            limb1: 0x59c95c2b0e432fe9da798c53,
            limb2: 0x1b7760780a977c18
        },
        r1a1: u288 {
            limb0: 0xe49d252d32f33f0cc50fb43c,
            limb1: 0xd3ee7efa709ae25289b56e71,
            limb2: 0x276e764accf7cdec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f40302a81338d974e38a623,
            limb1: 0xe507bb88c12439014e9dade7,
            limb2: 0x269ca6dc93a08315
        },
        r0a1: u288 {
            limb0: 0xc6c3a59f290d86e8e4eb945e,
            limb1: 0x92711e21105f8d273b6eaa12,
            limb2: 0x15c6beb97ea146f8
        },
        r1a0: u288 {
            limb0: 0xa07c589f223e6aa5cfe5b5ea,
            limb1: 0x5459d675343496ccae133156,
            limb2: 0x2734f13d60d1d49a
        },
        r1a1: u288 {
            limb0: 0x7bf41e3043fb8e19cdd994d5,
            limb1: 0x4372a92fff0bb7b184e43c4b,
            limb2: 0x2930e8b16f66d701
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeef04c3c0a0217ee9bb5ef3a,
            limb1: 0xb9675554cb0d308df096d684,
            limb2: 0x2eb231a2577c3e5c
        },
        r0a1: u288 {
            limb0: 0x84c2b1927c8ea5867ed3891b,
            limb1: 0xc385f1e37c6f0d9c9fa362a4,
            limb2: 0x626fb91c1eb4828
        },
        r1a0: u288 {
            limb0: 0x5912107565445c4e431ab8db,
            limb1: 0xe0b9ecbd8ea3ceb518b8d5ea,
            limb2: 0x18a01a629c367c77
        },
        r1a1: u288 {
            limb0: 0xd49d371049253243bb2c5d31,
            limb1: 0x66a8fea2611c42cd5ddb74f0,
            limb2: 0x2509e3dc0430cfeb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3535dda410564ee27010480f,
            limb1: 0x8b80274fa347dc14f9f1451c,
            limb2: 0x14479a0bb0caaddd
        },
        r0a1: u288 {
            limb0: 0x40ee58f0b63d9cbba5817dc7,
            limb1: 0x2816fa5ccf1dbd69829b566d,
            limb2: 0x1daf42dc9d218865
        },
        r1a0: u288 {
            limb0: 0x8d8f6c1308750ce9fd7d8899,
            limb1: 0x48f09a3b2fda3aeaa77d649e,
            limb2: 0x2f26e376d5e0f32f
        },
        r1a1: u288 {
            limb0: 0xb59fa31b66fa5630040bf815,
            limb1: 0xfa2d7e3d2ec56e436bee47d,
            limb2: 0x2bcde8638e0ece2d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa2053b1b7c5efcfd8beaa204,
            limb1: 0xf69b164d97f1e340ca25e2ec,
            limb2: 0x22ab51af81db6f12
        },
        r0a1: u288 {
            limb0: 0x4bb759054c28d51653700bb9,
            limb1: 0x475a8af6acd03eeabf3bd0c8,
            limb2: 0x97f7ade7e643c7f
        },
        r1a0: u288 {
            limb0: 0xf41ae2867c57676bfe2b75b2,
            limb1: 0xc56dbf2c4c8f53dd682b5912,
            limb2: 0x24c98a276395bbbe
        },
        r1a1: u288 {
            limb0: 0xe8166f7f9ada0643d922d675,
            limb1: 0x8c0a6a0a555d66a94582d842,
            limb2: 0x24cf65761141f22a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1a52f72354f51cfb2d4e7cd,
            limb1: 0x43ce720286f0fe5cb24c04e3,
            limb2: 0x29d16bf439d5fc96
        },
        r0a1: u288 {
            limb0: 0xbeb10354704853e71c247f76,
            limb1: 0x668ef029ef7381d8eaa8e0db,
            limb2: 0x238035ab2db01afb
        },
        r1a0: u288 {
            limb0: 0x16ac97d4d0e3b6fac3bfb751,
            limb1: 0x3a9b14069f71bc07545f328,
            limb2: 0x22b7b7ab452c535e
        },
        r1a1: u288 {
            limb0: 0xfc57ce4764723f57dbe003e0,
            limb1: 0x4814ddbccab488f6d15257e8,
            limb2: 0x305009f0d2d15d43
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdbca49512b44ac97a7f5b2c6,
            limb1: 0xb2588d40772ebacb14c32e9b,
            limb2: 0x2f75fd492e163f93
        },
        r0a1: u288 {
            limb0: 0xb632b224bbf2faf9c1c9b5ed,
            limb1: 0xdc86812de7fead90d45d77bd,
            limb2: 0x1991f678760e097c
        },
        r1a0: u288 {
            limb0: 0xe7d786927f17c9dc113fdb2c,
            limb1: 0x1df49d634ee66a5ca152033d,
            limb2: 0x12bf8ca099e3953d
        },
        r1a1: u288 {
            limb0: 0x6bb782d2f66448b7b9c8cd0f,
            limb1: 0x46fedd598bc49b0024181c2d,
            limb2: 0x139741485f22c963
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d4ddd08cb9acb77b6d10258,
            limb1: 0x4100d50c721600c537779cc3,
            limb2: 0x1bb11b313ea6a670
        },
        r0a1: u288 {
            limb0: 0x7781be0e1a71988190427cff,
            limb1: 0xe741ecc00975d50212e0c68a,
            limb2: 0x3e5e150e0423a7
        },
        r1a0: u288 {
            limb0: 0x69e7e7f17f280fb308a0576b,
            limb1: 0x9aa77794fb4b2a834761a6b1,
            limb2: 0xe4e44108f4d715b
        },
        r1a1: u288 {
            limb0: 0x3071384bc69ed3690d860a29,
            limb1: 0xd2959018bf45f5f0456ec5d4,
            limb2: 0x128ed711ff5d9e9a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeeb4d006ea6ba2b679218dbd,
            limb1: 0x527c580cf9f77325a8fe0f6,
            limb2: 0x2e988fa66ef7905a
        },
        r0a1: u288 {
            limb0: 0x14491f0303cf87b4169709b3,
            limb1: 0x87cc6c8881ff7f1110d5c32d,
            limb2: 0x9e6b42cd50fa542
        },
        r1a0: u288 {
            limb0: 0xb6fded4bf89da21cdf07c180,
            limb1: 0xbe7d0d916a322a7642122e2d,
            limb2: 0xbbc1f9b03eee5fb
        },
        r1a1: u288 {
            limb0: 0x87b208741ffb862ace1ec1f3,
            limb1: 0x25c3d497e395279b392dd6a4,
            limb2: 0x99452b48bf4c634
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe1c95574e2c3e1e46a0d71b8,
            limb1: 0x48d66633bf3345042175b028,
            limb2: 0x3e9383f09f6b17b
        },
        r0a1: u288 {
            limb0: 0x81f5f60fe91dfaacf65885a6,
            limb1: 0xd0bbf52c70827b546a766014,
            limb2: 0x5c8b2a76fdd355b
        },
        r1a0: u288 {
            limb0: 0x880fd324219f29cc5313d636,
            limb1: 0xebf7a91ce18a54c75d27a09a,
            limb2: 0x1a6aa9989ea750e2
        },
        r1a1: u288 {
            limb0: 0xe37ab622d8baa5d661045cf,
            limb1: 0xde08cdf741e356ccc7165ec1,
            limb2: 0x1a9b7fc15ea3a66b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdef063d3a29091672eccbfb6,
            limb1: 0x6396dd708f1ac20eddc68979,
            limb2: 0x1c5eaff8bbf34039
        },
        r0a1: u288 {
            limb0: 0xf7fc4c4fc5bf3addce346e47,
            limb1: 0x386f4b04bbe4757b30508beb,
            limb2: 0x526f14bcdfeffc9
        },
        r1a0: u288 {
            limb0: 0x16e2201d682afad20a7a3b40,
            limb1: 0x756feb9250dec7f1d24d84c9,
            limb2: 0x6a3a5d2b7716525
        },
        r1a1: u288 {
            limb0: 0xe28c8212f64285cf9314aa91,
            limb1: 0x3ab93840211da8912bbbc110,
            limb2: 0xbcfc09a1611be6e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6fdbd9400a1c24754618f3fa,
            limb1: 0x854463eabc035d653b8c2a2,
            limb2: 0x2a477b2f42aa6d0a
        },
        r0a1: u288 {
            limb0: 0xa6a390f8608af29bb24cea07,
            limb1: 0x227fb9bfebe9f595f1b04074,
            limb2: 0x1c531f475f66069
        },
        r1a0: u288 {
            limb0: 0xc27f945bcfa009c9c668cc1e,
            limb1: 0x53b2828b7bf0243f2a957ba3,
            limb2: 0x264db32c4a78586c
        },
        r1a1: u288 {
            limb0: 0xa268e4cb63ea6f01e09ef8fe,
            limb1: 0x5bb5aebf733aea6a56a88720,
            limb2: 0xb8a89ed03a8d2fb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb52872be662c2cea71b47dc0,
            limb1: 0x8428da011f94476ef6b6a5df,
            limb2: 0x41106a46e7b26d6
        },
        r0a1: u288 {
            limb0: 0x33d00ecd555f6b37adf640ba,
            limb1: 0x82b9e33a7d9fe2056b063c40,
            limb2: 0x69a1dc646c9efdc
        },
        r1a0: u288 {
            limb0: 0x2ceccb6ef70de76bd796251f,
            limb1: 0xce124863fe953ca87777e81a,
            limb2: 0x17bb5d7c86620428
        },
        r1a1: u288 {
            limb0: 0xd9bdd35f78489827bf9aee08,
            limb1: 0xa171a16c6b8f28ade0de02c,
            limb2: 0x1d1c5e2602fd62f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x178f3f175b873e4cda1930e6,
            limb1: 0xc1a81785d72b45f39a5f038c,
            limb2: 0x28cf212b1c27a87d
        },
        r0a1: u288 {
            limb0: 0x2551aae8490ea9c20b68821b,
            limb1: 0x463ae9bc4bc444a1e4c4ecd0,
            limb2: 0x4e6c40424fbd0f2
        },
        r1a0: u288 {
            limb0: 0xd7ad7ec4d0df33febe23b1f3,
            limb1: 0xbb3d65cd8a35f17306a00240,
            limb2: 0xf8fdcd56794d42d
        },
        r1a1: u288 {
            limb0: 0x43a79632c06eb78942f8a14e,
            limb1: 0x5ddf994ee99a4b60d433517b,
            limb2: 0x1c37c611b82ddaf3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab40d732fb789f06b8a36dc1,
            limb1: 0xb43e76009cc360bb5cc8e265,
            limb2: 0x486283a501359f2
        },
        r0a1: u288 {
            limb0: 0x660e3c7d6d9cc5568fed8130,
            limb1: 0x6bd64e937bfef3a5ecf25a9d,
            limb2: 0x26dbdc4fbbe54fdd
        },
        r1a0: u288 {
            limb0: 0xaa30b5987b881032dd56b259,
            limb1: 0xc5d0c772185d9019564cdb1a,
            limb2: 0x2d4209587e68d0a8
        },
        r1a1: u288 {
            limb0: 0xce6461cb559936660680105c,
            limb1: 0xbb9bada782a6e66d867057b3,
            limb2: 0x29a6dd0cd354914e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6aaf7d046d3b839773770b71,
            limb1: 0x4b5e8747779087dbd44112b6,
            limb2: 0x278c05740f4aaf7a
        },
        r0a1: u288 {
            limb0: 0x4d549dcd67344e79b7d448a6,
            limb1: 0x908ed5fb9952d41068640cf8,
            limb2: 0x98b591744facd93
        },
        r1a0: u288 {
            limb0: 0xe9139690832f7b68fb9a0fe4,
            limb1: 0xf9ab6a438d607e53ca4c416,
            limb2: 0x179f1addfdf20fd3
        },
        r1a1: u288 {
            limb0: 0xf920726a7cce8d3a9252f0a4,
            limb1: 0xbccbef155247c64cec1a48b4,
            limb2: 0x15c20b8ba8ade0a5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x609ada11eeef9d9e276c6914,
            limb1: 0x285926d468cab7c903c2c477,
            limb2: 0x2d315cc41885837c
        },
        r0a1: u288 {
            limb0: 0x4c9a57c186d717ca00626b32,
            limb1: 0x2c3a8f540f78483941fdb81c,
            limb2: 0x217b4d4385a69c14
        },
        r1a0: u288 {
            limb0: 0xcdf847a4916cd9279b077da3,
            limb1: 0xea4cfa56723469e8caff3035,
            limb2: 0x137564102d143aa8
        },
        r1a1: u288 {
            limb0: 0x859ddb2baadf66026dd58593,
            limb1: 0x5d28a1323b75d782c28c1aaf,
            limb2: 0x3520716f6c05a3d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x11fc169245010e50f22c243d,
            limb1: 0x686a6661c1d2c1354c194983,
            limb2: 0x20ac378534751f2b
        },
        r0a1: u288 {
            limb0: 0x664fb5d1267c96aab9c4d6c1,
            limb1: 0xdf66afdb4b8bf344caa51e39,
            limb2: 0x170cfca67317a81d
        },
        r1a0: u288 {
            limb0: 0xc69d9f02578d7b047daaf50c,
            limb1: 0xe03446077d7aa67adbaff202,
            limb2: 0x19d39c92e2ab56b4
        },
        r1a1: u288 {
            limb0: 0x6d3311a741346ffd37590c29,
            limb1: 0xb003ea676c7ccb41bea12965,
            limb2: 0x8fbaeb149bd0f9a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1ef4015ead4075640242a35a,
            limb1: 0xb06b1ea62e3be2dd13f73d8d,
            limb2: 0x1dfc6159af90891b
        },
        r0a1: u288 {
            limb0: 0x2657c085a809e8ce070e3d48,
            limb1: 0xbfdc1088f73d91e4fef59efc,
            limb2: 0xa7851dd3cb70e86
        },
        r1a0: u288 {
            limb0: 0xa560a98d1031565a5617f1e5,
            limb1: 0xb2b574ecfbd810ece93acdad,
            limb2: 0x5f0c6b368d1283
        },
        r1a1: u288 {
            limb0: 0xace3566b04a222b1b9495f64,
            limb1: 0x1513b861990acf367308d334,
            limb2: 0x145a6ff768917ab8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5ff41694ef24d172adba0420,
            limb1: 0x911baf841530a0c6c52b43ee,
            limb2: 0x12f8fe1da504a034
        },
        r0a1: u288 {
            limb0: 0x296e703e2aafe6f89abfd27f,
            limb1: 0x926219b46c9af93d880af786,
            limb2: 0x4c9127f390908d6
        },
        r1a0: u288 {
            limb0: 0xfca06de02db998a53e13bd43,
            limb1: 0x8e2222e8c0bd45f37411c1a5,
            limb2: 0x11e388cbac29737e
        },
        r1a1: u288 {
            limb0: 0xbe534c444fb517aa69db7fdf,
            limb1: 0xec22406bb24f4eb4ef4d951,
            limb2: 0x1ef67ac0ff046cbb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb18685e032a8b3c1de782e7,
            limb1: 0xa9ab9f4a5152edb1c3403923,
            limb2: 0x1834ce90172bed1d
        },
        r0a1: u288 {
            limb0: 0xc92d887027b404fda625961,
            limb1: 0x523399b13aa9f1572ab279cd,
            limb2: 0x91669306d35b0b5
        },
        r1a0: u288 {
            limb0: 0x8cc1c1efd2ecfbcff588e2ad,
            limb1: 0x2b311a1cdb9c0be364b2119f,
            limb2: 0x2982ec911452557f
        },
        r1a1: u288 {
            limb0: 0xc8756648a3a9b9c8f11c0b7f,
            limb1: 0x12d12f1406c6dbb63fe01c79,
            limb2: 0x1aff7067938655cb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98a89027b1afcf06f22fe59d,
            limb1: 0x9a79577abab3a6a4e8b15c2f,
            limb2: 0xf280a83aadef354
        },
        r0a1: u288 {
            limb0: 0xc79ae0b80bed7daaa4a91e29,
            limb1: 0x821a5f58fe7a7497a9388b45,
            limb2: 0x9ab0a86b560748b
        },
        r1a0: u288 {
            limb0: 0x9ea6d367dc790eb401131e71,
            limb1: 0x6346ea0decd4c8c5ac6adcc8,
            limb2: 0x1cad5560b94964b4
        },
        r1a1: u288 {
            limb0: 0x532b0cc755d3fe725c3c6ea,
            limb1: 0x86b9038f7ccb9bdc58dff4a9,
            limb2: 0x377d65d9518c412
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe3c30b74a5d4911aedb42cac,
            limb1: 0xceb87dfff63d6117f0576052,
            limb2: 0x203bb0ed68e35be0
        },
        r0a1: u288 {
            limb0: 0x79c84e7a3d1450fba18d6795,
            limb1: 0xd96e8d89fd503f432e5e14dc,
            limb2: 0x295ae5b7bf4e317c
        },
        r1a0: u288 {
            limb0: 0x49f20dc8764b8f4190a84061,
            limb1: 0x70a13611b2dec7b5cc4ab7f6,
            limb2: 0x340f771f4704d92
        },
        r1a1: u288 {
            limb0: 0x7342a3369dbc2b4e3869980f,
            limb1: 0x2e58bfa564a8ecd50cb4a46a,
            limb2: 0x1ec7d14a5305a26b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47e9f0079f66ce2a542604c7,
            limb1: 0x1aa8e7b523ccf5fd9e784a6,
            limb2: 0x1fd10ec93c7d2f3a
        },
        r0a1: u288 {
            limb0: 0xfa465eca977b7af4adbeaacd,
            limb1: 0x901711468004a509a5304b64,
            limb2: 0xd2a2fe829daf9e4
        },
        r1a0: u288 {
            limb0: 0x57b0652eee4a7098bf3a0e52,
            limb1: 0x7e2f5c39f5b91ea8a00b9d11,
            limb2: 0x9b87d5bedc1386b
        },
        r1a1: u288 {
            limb0: 0x85b4e7f0d55aa7e81264cca8,
            limb1: 0x4c120f1d8b0d97386db85e91,
            limb2: 0xae74e0680364b06
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5307049792924a6de6a13d5e,
            limb1: 0x218152cc147fe9299607a541,
            limb2: 0x124a492f3d36cfc1
        },
        r0a1: u288 {
            limb0: 0x58760da12f66e9bf87d5676c,
            limb1: 0x9907d90b505919dedd979ddb,
            limb2: 0xe3bb49825b86de7
        },
        r1a0: u288 {
            limb0: 0x451be8085c0aa3300e47a870,
            limb1: 0x4e85f8256a2d10d9ba84374f,
            limb2: 0x242761ec29bb535e
        },
        r1a1: u288 {
            limb0: 0xfbfbe7eeb3dc9dae3210ea2f,
            limb1: 0xfbbcc07aff574bdcf6229fb0,
            limb2: 0x6f5bf29c33253d9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1936017b16ab283941a8c6c2,
            limb1: 0x2dfd683f8b3468fd66915d46,
            limb2: 0x1b34c4fe9aa3b565
        },
        r0a1: u288 {
            limb0: 0x1f27e214aa3970cd3f364b64,
            limb1: 0xac5627bc1b9fde621aaac0,
            limb2: 0x2a67877a28d1a3a9
        },
        r1a0: u288 {
            limb0: 0x1135f52be77703e164af2179,
            limb1: 0xc16003e64b7c825c6a56da94,
            limb2: 0x8b946bb3cdf502e
        },
        r1a1: u288 {
            limb0: 0xbc28f5d2c2ffbcf3e41a9067,
            limb1: 0xf4bd37740ce2aa126c7de303,
            limb2: 0x1e6d2a641aef8a4b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb8c9ed125592074aa4234db,
            limb1: 0x6916356d5a34fdfce80518d5,
            limb2: 0x27a49fbe4016d07a
        },
        r0a1: u288 {
            limb0: 0x1494bb2a21ff0a34d7d6fd7c,
            limb1: 0x3f27633d44ccba81c4cbb44b,
            limb2: 0x2b95c0b7a457639
        },
        r1a0: u288 {
            limb0: 0x2a4af2db6909d414b2a0d33a,
            limb1: 0xa4a706a2802def3e862b6b50,
            limb2: 0x19a0e211f54d6ae4
        },
        r1a1: u288 {
            limb0: 0x7c50ccc3b18fc7f064995d7c,
            limb1: 0xc0678820326d5147feea4930,
            limb2: 0x27761be7c65c13d7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2ab8117d811160c22b6a2f74,
            limb1: 0xa79ef35b8703f1b3a1427930,
            limb2: 0x1c29da089f4aab0
        },
        r0a1: u288 {
            limb0: 0x942f707d0978a7b80eb9db5e,
            limb1: 0x7af1427e541a0fdf4647693,
            limb2: 0xb88286f5e9b1daf
        },
        r1a0: u288 {
            limb0: 0x36f66b98c0a4a712c4f480cf,
            limb1: 0x4074e6d20c084d9673f8e5c5,
            limb2: 0x97f9b4d06884f13
        },
        r1a1: u288 {
            limb0: 0xd93a8e98db76bb5b201e2191,
            limb1: 0xe5afbfd2fecd0b0fd9d56c49,
            limb2: 0x1e61db555d0ecd9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeb79f7a7f9d21e06530b4791,
            limb1: 0x138c63802800bb0deefcad39,
            limb2: 0x18298e8e730d39e
        },
        r0a1: u288 {
            limb0: 0xc5d6560133f2f3eb5622db0b,
            limb1: 0xf7821686720fb1c4e4e83e1a,
            limb2: 0x2ecdc9a325737b71
        },
        r1a0: u288 {
            limb0: 0x6e2e066817b043ee5966994,
            limb1: 0x12868c533a1d609496d9f61d,
            limb2: 0x20944486731fc500
        },
        r1a1: u288 {
            limb0: 0x1e6b71817764a8f7fbe4c6da,
            limb1: 0xda8cd2e23571b860cc9372fd,
            limb2: 0x9ed4223797fa81
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5e6ff7a3edfd58ec77a29c2a,
            limb1: 0xf9c931916ffd29603431739d,
            limb2: 0x1d445a793dcdb8d3
        },
        r0a1: u288 {
            limb0: 0x94e1d2189713baa7b22e9aee,
            limb1: 0x97b2b7043bd47312fdf1cb9,
            limb2: 0x271a7d2295eac4f
        },
        r1a0: u288 {
            limb0: 0x9d4434fa6a016ef2d4b27a17,
            limb1: 0xbd503cab4859aaa8e02ec1f8,
            limb2: 0x25dd8347325f6834
        },
        r1a1: u288 {
            limb0: 0xbd63b2826eda8acd3af7166d,
            limb1: 0xbe9b04ff1fd8efabd3892d02,
            limb2: 0xf4e845ebc801edc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98735481557f970920287804,
            limb1: 0xcf72e0cbd93c25458d104125,
            limb2: 0x24ef66dc53c6fbbc
        },
        r0a1: u288 {
            limb0: 0x14e40efaa5c52584ffba5d17,
            limb1: 0x859344d5a6900e05f2db3a61,
            limb2: 0x1ecc7026145e335
        },
        r1a0: u288 {
            limb0: 0x1ba8994ee63c51c7ff121098,
            limb1: 0x5042f0afc455d5c0c354d353,
            limb2: 0x146f6677209ae4c8
        },
        r1a1: u288 {
            limb0: 0xc81c7a965b07f5eac3ad6acd,
            limb1: 0xe1e62b0b388ba00b7ddb80c,
            limb2: 0x256bc25a1063165e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb044196da0af36c1b9ee56a,
            limb1: 0xa9856dc5ef8bea9568e9e6c5,
            limb2: 0x5344ae56bf6e7dc
        },
        r0a1: u288 {
            limb0: 0xaab2f87be9c443ae4c4ca972,
            limb1: 0xe468c7b679733ab7595966af,
            limb2: 0x277437150a65b4ac
        },
        r1a0: u288 {
            limb0: 0xa5a7e0d03146f80c52ab07b9,
            limb1: 0x7f7807ee4f83a4cafc735206,
            limb2: 0x1c678d238e399f36
        },
        r1a1: u288 {
            limb0: 0xb42d584125201bb3d3105048,
            limb1: 0x203ff842de555a8b26b7492b,
            limb2: 0x14045d4f2c13d826
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x86d7dae4ab513d21cb10130b,
            limb1: 0x4acb6893b7e991819b93c70d,
            limb2: 0x1282719df1eb6e0e
        },
        r0a1: u288 {
            limb0: 0x2d4c7b442c6acf50cdea02ab,
            limb1: 0x816ea35aaafceb764c42005a,
            limb2: 0x24d00247fcb40f8b
        },
        r1a0: u288 {
            limb0: 0x360d7f7d399bacf6f3ceadd7,
            limb1: 0xc4b094a4e5ed6cc16bd19678,
            limb2: 0xf6a750e2a1239d0
        },
        r1a1: u288 {
            limb0: 0xf9775dc9a18f47a0d4e41d1a,
            limb1: 0x86c6d3129819ddc1773284c7,
            limb2: 0x400c6fa0ae84563
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d611a4d4af0787fea13dcc7,
            limb1: 0x68efbbbb95d1f7ae9a3dae61,
            limb2: 0x14cc644a90304e2e
        },
        r0a1: u288 {
            limb0: 0xaacd4ee05f015631a51a2b0b,
            limb1: 0xf16c973d045802c113ca001b,
            limb2: 0xffa84151b173d32
        },
        r1a0: u288 {
            limb0: 0xc0c35baec8f3397fd6ec94f,
            limb1: 0x3855f80719d3d66c607ebe5f,
            limb2: 0x1aa0c0033ebcc43f
        },
        r1a1: u288 {
            limb0: 0x65ac57907cffb45c17f39b3b,
            limb1: 0xe6fa1aa2387b8fbf783d7269,
            limb2: 0x9ddbc8f3a9ef3e0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccaaf206ec1ab3636588e06b,
            limb1: 0x73638a744371cdfdc2769983,
            limb2: 0xcf4da457585602c
        },
        r0a1: u288 {
            limb0: 0x2121e433b57f1f12e1c2a122,
            limb1: 0xd9902a8304f568afd9016db1,
            limb2: 0x1a1d185a6ca8a296
        },
        r1a0: u288 {
            limb0: 0x9c28ca6979e181bfc43999b,
            limb1: 0x8f95b126cdd195d8c712101d,
            limb2: 0x155a31dd552abbd7
        },
        r1a1: u288 {
            limb0: 0xe58f46fe63d5aacc0d545c7e,
            limb1: 0x86860f40231f7971e7b892ab,
            limb2: 0x1da84d7c3a481fac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x854fe3dbb5dacd382c83d8c8,
            limb1: 0x95dbbc573a554089b6e1a640,
            limb2: 0xa428f18f6043f48
        },
        r0a1: u288 {
            limb0: 0x457ac55983a84ea06bb3cb18,
            limb1: 0xe429c34a7c7e2959fe5d3ec4,
            limb2: 0x26cc53712eb2d868
        },
        r1a0: u288 {
            limb0: 0x487c8eea6adf986b775a5d76,
            limb1: 0xe0972abf3fc692409590b292,
            limb2: 0x7db5e202f6022
        },
        r1a1: u288 {
            limb0: 0x621b1e648c2fda08f2b0b1d1,
            limb1: 0x9ef2256ac8abfd56d4e3df9,
            limb2: 0x1cd95bcec7fc5831
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe97cd713a093faf4fb105f8,
            limb1: 0xea17176e5ca64bda8869c3e6,
            limb2: 0x39e329a592c4fff
        },
        r0a1: u288 {
            limb0: 0x9b312cfb0576f145ab54d65e,
            limb1: 0x1e9a794ac3309aa205279dde,
            limb2: 0x163159efe86a0c44
        },
        r1a0: u288 {
            limb0: 0xecb47940c3a1e11e6546e9b1,
            limb1: 0xf0f64a4790f5f37261173915,
            limb2: 0x7443b0db0875db5
        },
        r1a1: u288 {
            limb0: 0xb69566a0006c295f5f163815,
            limb1: 0x59e37d6a9e2bdfec042e1c96,
            limb2: 0x2e94be416b5cc891
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6e412cc2614c8fe13f82e183,
            limb1: 0x5210ee15741ee0f72376233d,
            limb2: 0x2f7453b5b50fb56a
        },
        r0a1: u288 {
            limb0: 0x2441222d29ebedae7b7307bb,
            limb1: 0xbf3b1615d47f1ecc8dd01dfc,
            limb2: 0x1285fbacf2d9e8b0
        },
        r1a0: u288 {
            limb0: 0xf886b2624a2841c6db13d6fc,
            limb1: 0xb14a6de8590172037831e838,
            limb2: 0x21dbcbaa4c2ff235
        },
        r1a1: u288 {
            limb0: 0xd464be390e29fb6bc5d73fd3,
            limb1: 0xeb639fa7b91ba0b4696943f2,
            limb2: 0xae41abd00f03a20
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc1bcd16e9810baf1c811ccfd,
            limb1: 0xab7248193683fd24842051bf,
            limb2: 0x24524b7cb491dd02
        },
        r0a1: u288 {
            limb0: 0xab38df9be6c68780648766b7,
            limb1: 0xa712ce3435b04cf4c4d24393,
            limb2: 0xb93710cb54320e4
        },
        r1a0: u288 {
            limb0: 0x4712a011441275b50cc21c3a,
            limb1: 0x4938cf39ba925bf7d7a0e41f,
            limb2: 0x22b0cf3cd28c24f
        },
        r1a1: u288 {
            limb0: 0x479b1319794a997b16ff0507,
            limb1: 0xcdb43d6eef3273fed6580f88,
            limb2: 0x32f347a73dd7f4e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5504f6168257df0a3c286bbb,
            limb1: 0x9596577715d7c65ad35fc9b9,
            limb2: 0x2173b6a0532d57ee
        },
        r0a1: u288 {
            limb0: 0xdfb581e5abcc91f69105cce4,
            limb1: 0x82c079cf099af287553ac6e3,
            limb2: 0x5d9674820455c5e
        },
        r1a0: u288 {
            limb0: 0x4c6305de219693aa21ddb353,
            limb1: 0xeccd4bd1e9b13ceab6d9cc13,
            limb2: 0x237298ba63b9938
        },
        r1a1: u288 {
            limb0: 0xc5b4820e056c2bc4d5cc7501,
            limb1: 0xa10b946d9356059ffeffcff4,
            limb2: 0x2f5fa090e6c32daa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe8da61dafd370bfbc6a62fa0,
            limb1: 0x7e5c5b49d27dade6b3a4bf89,
            limb2: 0xe62742e2ed49114
        },
        r0a1: u288 {
            limb0: 0xe85d72146491126b6edf34fd,
            limb1: 0xc4e58f3feea7ce1c52464cab,
            limb2: 0x237faf63a3f38221
        },
        r1a0: u288 {
            limb0: 0x7ff3196ea20ea17c5cb22fb4,
            limb1: 0xe3946c30fb9990dc7e0970e9,
            limb2: 0x1bda9968c9c75a0d
        },
        r1a1: u288 {
            limb0: 0xcf5eac89d3e5bd3cc9f84af2,
            limb1: 0x251ab855d327b2aade8aefc4,
            limb2: 0xa5f5173e9b99992
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd795b7031c20a5b5ac59107d,
            limb1: 0x398d3dfa9643a88997c6956b,
            limb2: 0x1dddd06f3b4e9c22
        },
        r0a1: u288 {
            limb0: 0x67a4602e96e32380cc2a9c23,
            limb1: 0xa56e49712d791abb8ad500bc,
            limb2: 0x1b13529c9ef50f47
        },
        r1a0: u288 {
            limb0: 0xab4ba74e2fd0171640120ee7,
            limb1: 0x60f0986532ef155f7257818,
            limb2: 0x3c1810973d7ab32
        },
        r1a1: u288 {
            limb0: 0x4cb899847e352be84f7de5af,
            limb1: 0x901532187bc74e657f614d0d,
            limb2: 0x4f4a4cda9fca913
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x24623d920dd935b3d24e73a3,
            limb1: 0x87f2b48b7c9c7d7dd007a90d,
            limb2: 0xf4fc3f5812d3b93
        },
        r0a1: u288 {
            limb0: 0xa8ad95b39d7968a5f5a5a12c,
            limb1: 0x387e5ebf73991e79676d9d77,
            limb2: 0x23e90cfd9a52c309
        },
        r1a0: u288 {
            limb0: 0xdfae02a9799c8901f0d27a52,
            limb1: 0x661540685f0e9718ff286750,
            limb2: 0x22945d2a9c76368e
        },
        r1a1: u288 {
            limb0: 0x82421457cacdf0e3cdc14790,
            limb1: 0x4204c0907520383f2966803d,
            limb2: 0x836a664cfc0674f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2f507d6036a2acc226808219,
            limb1: 0x649409d36a3191403443a8ba,
            limb2: 0x2fe9dab4ff317855
        },
        r0a1: u288 {
            limb0: 0x1b19d1f038ad2686350c638b,
            limb1: 0xfff8b9de1777bb72d06aabf5,
            limb2: 0x272b8fe3d065e68e
        },
        r1a0: u288 {
            limb0: 0x4581e39c518cbbb3bf751ab6,
            limb1: 0xbfc9ca36e718a505c51a67f8,
            limb2: 0xf6888976391f690
        },
        r1a1: u288 {
            limb0: 0x95b503dce32ac0a5d31639db,
            limb1: 0x74c461c6f3bcc9897b8e08d7,
            limb2: 0x27b45deba693cd83
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x58a7119d17ccda02bd4467c,
            limb1: 0xe2c6d34c52c50572f5477c,
            limb2: 0x2b995850f140165c
        },
        r0a1: u288 {
            limb0: 0x767a92b418a4d4d48e51d54c,
            limb1: 0x2f70f49b19563efef8c0f348,
            limb2: 0x8b3fb075bf49279
        },
        r1a0: u288 {
            limb0: 0x8d8f95ae50b4ae564796b900,
            limb1: 0xe4bb9e513b9b47f29d472c2,
            limb2: 0x69a4c6b223d42a4
        },
        r1a1: u288 {
            limb0: 0xe27d5cce3eab8c386f2444aa,
            limb1: 0x550a9189b89718a62737e4bf,
            limb2: 0xc16cb12beb4151e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x17f29068557a65607019dbf1,
            limb1: 0xa38a1176449447a54fdc1739,
            limb2: 0xb37fd65dcdc465c
        },
        r0a1: u288 {
            limb0: 0x75574d9f1649e4c3a8aac81,
            limb1: 0x1bbc7a9cdc818bd1987678ac,
            limb2: 0x7983cee5d087754
        },
        r1a0: u288 {
            limb0: 0x2c2c38cba42520be81211567,
            limb1: 0x40333d9da0bf83a3bb5ecb19,
            limb2: 0x23fccc9866a0383c
        },
        r1a1: u288 {
            limb0: 0x90c6f46c03f07c4bce3c9e99,
            limb1: 0x875af866be109c95a3404a60,
            limb2: 0x228d228b36b3c266
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa72fb27f82ea548c1ec2b988,
            limb1: 0xd85b7ca3664ab63f4c5d4c9,
            limb2: 0xd57c0420508351e
        },
        r0a1: u288 {
            limb0: 0x1f9f658a5fb299652025dea1,
            limb1: 0x621ca2fcca19463de28b074d,
            limb2: 0x5718202463b8ea4
        },
        r1a0: u288 {
            limb0: 0x24023d73fa81860db037ff4d,
            limb1: 0xea598d1c884d83f7ce040f36,
            limb2: 0x1c2c6bbff2ca3929
        },
        r1a1: u288 {
            limb0: 0xda4dad50b5fbab017588303c,
            limb1: 0x5062daa6220d0a566efdacc,
            limb2: 0x13e71631709d6e17
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9909848ae3a4a1007b4f3cab,
            limb1: 0x23492b7ac3cfe347e3c0fef0,
            limb2: 0x15c62e5537055404
        },
        r0a1: u288 {
            limb0: 0xeebc9df820d8d9511597be9a,
            limb1: 0xbe0d5158571318a7f2621642,
            limb2: 0x1c3dd693a50625e1
        },
        r1a0: u288 {
            limb0: 0x4a1cca26d603113a71d1f575,
            limb1: 0x7905262c7946d7e317107fdf,
            limb2: 0x654c407530543d3
        },
        r1a1: u288 {
            limb0: 0xc7c4ecbdc72833c6b6147062,
            limb1: 0x89517d39a15b0402e76e549e,
            limb2: 0xef20f96c8067cf5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd743b3c763c08bbd8ab5d25b,
            limb1: 0xfd17e83827338707cf14a595,
            limb2: 0xc3ab5cf8715c109
        },
        r0a1: u288 {
            limb0: 0x8bda1ce8e73744fad1a51971,
            limb1: 0x8244185a7c8e76edf4e2998b,
            limb2: 0x1ebff43e439fc302
        },
        r1a0: u288 {
            limb0: 0x811580178ce81177e7635b68,
            limb1: 0xf6400066cab2f2e12d4008aa,
            limb2: 0x28e11df65ee2a56c
        },
        r1a1: u288 {
            limb0: 0x7748c29ee0c430d31dd18d10,
            limb1: 0x25d8df52f59b5c5faffb535e,
            limb2: 0x1da1461664a9729a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfb1cf71616f219acc00df4a3,
            limb1: 0xb27c9ff666ec5cb6e9f8eb8,
            limb2: 0x2ae8ae1a9a96e6e1
        },
        r0a1: u288 {
            limb0: 0x5e32a9cb8b8786b48cb66aeb,
            limb1: 0x38fcbf1135176c64ee727c1a,
            limb2: 0x1ee6e739eb7237ab
        },
        r1a0: u288 {
            limb0: 0xbf5c23cde3789c005c4ded71,
            limb1: 0x40e1854b19cf0d96f3208063,
            limb2: 0x1a1abf98529ad8d7
        },
        r1a1: u288 {
            limb0: 0x4281578c4caea79c047a8ace,
            limb1: 0xf6ffe1fef5d25d5fe479f9a4,
            limb2: 0x15165293cc218c67
        }
    },
];

