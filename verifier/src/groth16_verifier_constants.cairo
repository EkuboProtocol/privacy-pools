use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0x49e364dea39145d2cbbfb941,
                limb1: 0x43e1f862b82d5bebe09b079c,
                limb2: 0x2b737d5077bdf218
            },
            w1: u288 {
                limb0: 0x11291c98da66258b46f5d2c2,
                limb1: 0xc8c29f3bf95365d4d29e37d0,
                limb2: 0x20d084a0b3692229
            },
            w2: u288 {
                limb0: 0x20473c3a6c5440f85f397cc9,
                limb1: 0x5fc679dcefe43bb117555dc3,
                limb2: 0x2600536c5ed8ab4d
            },
            w3: u288 {
                limb0: 0x2ff3eae69fabb5367c9cccaf,
                limb1: 0x2fcf450ba835f3c6679d18cd,
                limb2: 0x1d78fefb79a7de5c
            },
            w4: u288 {
                limb0: 0xc795b12d3040d1e0ce6668a6,
                limb1: 0xf4dee88e382a17d0ccf393fa,
                limb2: 0xb6289608ea8a6f6
            },
            w5: u288 {
                limb0: 0x312cd22569cb2504ef783ee2,
                limb1: 0x24db3197486ba166d4f0109,
                limb2: 0x2ff8544bd90f0999
            },
            w6: u288 {
                limb0: 0xa47039d5bbbf29119624a660,
                limb1: 0xb923ed53d9b8842c66f26045,
                limb2: 0xae29a90a3f36b3f
            },
            w7: u288 {
                limb0: 0x9e7dab09310f637483da3db3,
                limb1: 0x878175fd7c5b1e7561fdc776,
                limb2: 0x247c96f1bb7ac05e
            },
            w8: u288 {
                limb0: 0xfbaa5fabbb6e328dd52596e,
                limb1: 0x2fc70c7b20191ae7a03ddd56,
                limb2: 0x248a05c9c5907e8
            },
            w9: u288 {
                limb0: 0xc1083735b1bc362e6ca29038,
                limb1: 0xc87b06f3bcd9add4f943f81a,
                limb2: 0x12928cc9412c628a
            },
            w10: u288 {
                limb0: 0x87e6a098b824c3f13ca7cb1d,
                limb1: 0x1fcd4167ad5e536bc8bfc1e5,
                limb2: 0x22c63c3acf55f816
            },
            w11: u288 {
                limb0: 0x79183e9e490ff1418976b7d7,
                limb1: 0xaf6fe707c2ca0a911f732755,
                limb2: 0x2e3190bd274d2106
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
                limb0: 0xe6c807866e64b2cd86eed5de,
                limb1: 0xf4e59e92f4b8798c88fd0d2d,
                limb2: 0xf73d82b9fa5126b,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0xe28a54adac9a3e78924a6fc2,
                limb1: 0xb614f8ec805688461b462cc6,
                limb2: 0x13fe2b6b00fcf80,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0x21f47a5baf2bf125808ce856,
                limb1: 0x580181c92e29bd2b23a3241c,
                limb2: 0x7deb9d62f4a88b9,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x7569e7cb1da11ab4a614ac57,
                limb1: 0x317f5abb707a624c6a32861c,
                limb2: 0x1421326974a999bf,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 7] = [
    G1Point {
        x: u384 {
            limb0: 0x73991f2593ed5f20b4d98bf5,
            limb1: 0x808aca0e71ee136cb9722668,
            limb2: 0x2417a28576195b10,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x4c03e6db7774e40b31220f8f,
            limb1: 0x3b799b7ce83c7c4bd5620231,
            limb2: 0x4a784cc9e7fe966,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x4ec25877474cbdcee2158e2f,
            limb1: 0x2154e628850e1b56a3faba92,
            limb2: 0x8d512a73750435c,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xbfaf1e28c323d91e3403c4dd,
            limb1: 0x11130983e5fcf86f887e2ff4,
            limb2: 0x10f1e08df0437b69,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x3b31c6084bb4b3fa10273fd,
            limb1: 0x487cabb88db4fd01273271d6,
            limb2: 0x1f869651b69a8231,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xee9718b315ce7157d82d2db9,
            limb1: 0x7400b9e1e616b475e2739d19,
            limb2: 0x84418452ee3087,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x98d1fc519046c41a4cf5d4c2,
            limb1: 0x6e8ec8eeb61e549d0dafbc16,
            limb2: 0x2c7f59b45bc1fdc4,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xfc5ce2daf74744bf90455dc9,
            limb1: 0x82373b968a21ac3783d11e28,
            limb2: 0x1fdfb619d4db4eaa,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xca9136290b286fb50a43af8c,
            limb1: 0xec1d787e544663c1fe024d96,
            limb2: 0x11704969f9fd246f,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xfc664947ddff3cc0065a0803,
            limb1: 0x5795cf9adf201e1ca2dbebd4,
            limb2: 0x303dd2c55560370a,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x6a479e394b1564d68602d29d,
            limb1: 0xb17a09831deee809ad2e8e41,
            limb2: 0x1be8a68b9abe9c88,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x8d315409cefcbcf9b54f8851,
            limb1: 0x5fa1f4c02af49ebc8a304291,
            limb2: 0x256c06e5367a4125,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xf168cee4fe8b9cb1a3ccab2e,
            limb1: 0x92df4e02765c868469cc3295,
            limb2: 0x205d155dcc5d18db,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x17ec8bb389c41d75bf6a1525,
            limb1: 0x6173be3785b4a23d28e4c039,
            limb2: 0x873f047d6fe38e3,
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
            limb0: 0x48471c571fe29e3c2944e1f7,
            limb1: 0xd704fadb736ca05920185989,
            limb2: 0x9ff5b3e0c251834
        },
        r0a1: u288 {
            limb0: 0x498585031808989fc97b0e14,
            limb1: 0x272179989705348c85c9ee7a,
            limb2: 0x257e7efe29cfb3cd
        },
        r1a0: u288 {
            limb0: 0xb95f464ff38b89e5f1552d91,
            limb1: 0xe0df6acff5995b1718d70d15,
            limb2: 0x11246350b2fce3c9
        },
        r1a1: u288 {
            limb0: 0x452f5d14ad0cfc4dfbf07b56,
            limb1: 0xd2e6d97fd5b5564a546ab9b6,
            limb2: 0x8da11675f37fcf1
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
            limb0: 0x202aae361c3deddaaf381b50,
            limb1: 0xe14b4adb0e14b80477691108,
            limb2: 0x2664f334d50c87f4
        },
        r0a1: u288 {
            limb0: 0x1eec458a2417f3770f01ef33,
            limb1: 0x912ecc1dea7c23d111b77c17,
            limb2: 0xae5cf74b761ec5c
        },
        r1a0: u288 {
            limb0: 0xaf12843d48950230e727cfb6,
            limb1: 0xd770dae68be7fd467eaa5d7b,
            limb2: 0x1f3feb222e34bc5f
        },
        r1a1: u288 {
            limb0: 0x23426d788f138fc8dc8c81f1,
            limb1: 0xe5696c36abcc02134316b0db,
            limb2: 0x278a3d0b81f9a337
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc73d143eefc7dee6075eb7ce,
            limb1: 0x20dc3a1a28b5531388b18699,
            limb2: 0x89554ee862a1c9b
        },
        r0a1: u288 {
            limb0: 0xad61f7429891ea13938ec4df,
            limb1: 0x833102a2490ef477d5d445c3,
            limb2: 0x2339355dbe9e99fb
        },
        r1a0: u288 {
            limb0: 0xb9caac52ed6cdcdcc067c95d,
            limb1: 0xd5184b2d1067ed90ffeac0ed,
            limb2: 0xbd8a9d6dc9c3a22
        },
        r1a1: u288 {
            limb0: 0xe7132d1a83e5a6e93a535efe,
            limb1: 0xd9e64fc9c8512e011d19e8b8,
            limb2: 0x53dbaf489fb38ae
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
            limb0: 0x2029cc9ee9b8186d980a6362,
            limb1: 0xe4812b95aea868751c703e3c,
            limb2: 0x3017e184437031c6
        },
        r0a1: u288 {
            limb0: 0xc19183f681dd743c391f367c,
            limb1: 0xbc46e5e8999922c5d0c338d2,
            limb2: 0x8d52d2a8ae3b61a
        },
        r1a0: u288 {
            limb0: 0x24e34dca84652534c4f242de,
            limb1: 0x811449b786f3e873700b57ce,
            limb2: 0x18716128aeb58841
        },
        r1a1: u288 {
            limb0: 0x4d7d95a11cf64f5f5c454cc7,
            limb1: 0xc7462db67522969d02c93681,
            limb2: 0x7db1f9224dee92b
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
            limb0: 0x7e66b0c7651890a7af30a212,
            limb1: 0x3d6036281efe1e63acd873e0,
            limb2: 0x18a370259f2c1563
        },
        r0a1: u288 {
            limb0: 0x389d5e65d01da5be5e6a9e7b,
            limb1: 0xe36d8f9fbfd31d4336fc9fe3,
            limb2: 0x19642225a1775cbb
        },
        r1a0: u288 {
            limb0: 0xb9be8b0cb114877e439eaffd,
            limb1: 0xf5b4071778d493dd285855f5,
            limb2: 0xf3650175ff42ad2
        },
        r1a1: u288 {
            limb0: 0x20cb329d92b2629b89e887e0,
            limb1: 0x75acb5e0e1d8e113a6397ce2,
            limb2: 0x2d7ff71fd2c0cb3e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d8515bd45d57a65e0a47307,
            limb1: 0x15b38457fd46ff71dc7bd138,
            limb2: 0xe997848b2503b4
        },
        r0a1: u288 {
            limb0: 0x6d56c123f800c44a6432cb0f,
            limb1: 0x488495ca7f9be180ee3506cb,
            limb2: 0x9546c25dbfdaf47
        },
        r1a0: u288 {
            limb0: 0xf624033c4b51b137a5119c60,
            limb1: 0xd40cc515cf193275821abe11,
            limb2: 0x25488cbd6a4b18c
        },
        r1a1: u288 {
            limb0: 0xa8651858c7a98496ab0e8492,
            limb1: 0x963ec98cb10bf79f9e540074,
            limb2: 0x1ba345ea88e6086d
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
            limb0: 0x7c29f30820d9a4825d7a70b9,
            limb1: 0x416362d0499e80806deca7f1,
            limb2: 0x86f5a0e2a99c07
        },
        r0a1: u288 {
            limb0: 0x8ca436249f22bef7dc58144d,
            limb1: 0x152cc4f96c3112cc2be611c9,
            limb2: 0x423b6e8cb3a30b6
        },
        r1a0: u288 {
            limb0: 0x139a6d925cea357510e83de7,
            limb1: 0x35e6d4e7b8fa68e802e0f14,
            limb2: 0x18a4b9888182c8bf
        },
        r1a1: u288 {
            limb0: 0x46d908bb2774f9dff89c17ce,
            limb1: 0x2ff206634396a2fcbfe8f174,
            limb2: 0xff83f18f82e4bee
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
            limb0: 0x813dab424f6264607d007179,
            limb1: 0x4735342d302e6a330fdf7687,
            limb2: 0x158024612941b028
        },
        r0a1: u288 {
            limb0: 0x556c3dd4fffd00ef6c92a7da,
            limb1: 0x38fec6bc9b4a9b925279896f,
            limb2: 0x1633223836fef4ef
        },
        r1a0: u288 {
            limb0: 0xc48b62ade1b76d3b2da956c6,
            limb1: 0x7f404027ca1a191829571d5,
            limb2: 0x2f5daf5b44ee24a
        },
        r1a1: u288 {
            limb0: 0x26942ba8585de8dc4f4d39ff,
            limb1: 0xbce9b883419928397cf0da81,
            limb2: 0xf7955a0e447c139
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
            limb0: 0xef573d1c7aeb85d834cff8d,
            limb1: 0x56a8bb36d9e1281120db55bd,
            limb2: 0x1b6d42acd1bd0b69
        },
        r0a1: u288 {
            limb0: 0x5f3c4d31d9dee94b4196283a,
            limb1: 0x7896c0bdbca38e5c77c4cd2b,
            limb2: 0x2de251b13830433a
        },
        r1a0: u288 {
            limb0: 0xc283e68faebdd059ad121e4b,
            limb1: 0xe26a457d75b06a4b7e4231e9,
            limb2: 0xbb48355925c826c
        },
        r1a1: u288 {
            limb0: 0x7ca34bb244f0134a5fa287bc,
            limb1: 0x8a06f4701978d0bb3b39a93a,
            limb2: 0x24c98d3007443725
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
            limb0: 0x81ac5444c90456de4118287c,
            limb1: 0xcdcd3ff19b64c0e45a23536f,
            limb2: 0x1656aa2414cebce0
        },
        r0a1: u288 {
            limb0: 0xfc5d51600fe288d767cd953b,
            limb1: 0xf15c6d43281ad5fb0c57aaf4,
            limb2: 0x1a8b72c77325b61e
        },
        r1a0: u288 {
            limb0: 0x3a9af04db80b3a3158a7e1ea,
            limb1: 0x3ef5ae8e29f6ccc155493d2a,
            limb2: 0x6839e54df42c0e9
        },
        r1a1: u288 {
            limb0: 0xd65b8bb70a76b6d89df18f2f,
            limb1: 0x808a2c93113a3098b4efd3ae,
            limb2: 0x1aceb97d289db8e2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xef25b31a4feaa357a42341,
            limb1: 0x2f93a130bccc6ea214f81e64,
            limb2: 0x2ff10d43c72d126e
        },
        r0a1: u288 {
            limb0: 0x43818766c5c7fa263cb31c15,
            limb1: 0x528991b62728672cad62f893,
            limb2: 0x2b3e18212a33f66f
        },
        r1a0: u288 {
            limb0: 0x22fbdeeeaaf710ab7a25c39a,
            limb1: 0x5e149a5a7250e0f257e0b805,
            limb2: 0xec0b1f10d72e7c9
        },
        r1a1: u288 {
            limb0: 0x3a34af2a829399d7c7dc9e47,
            limb1: 0x22b2d4d13bc626c730f9e86e,
            limb2: 0xd54caa549226fd
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
            limb0: 0x4ecc4d423522b46d89d4bee0,
            limb1: 0x88331522b3a270fa4a1c35e4,
            limb2: 0x2c464815b678cb6b
        },
        r0a1: u288 {
            limb0: 0xfbedeab61516f63e48536c87,
            limb1: 0x625c4106b66a076cc346a0cb,
            limb2: 0x1e236872679b0c0b
        },
        r1a0: u288 {
            limb0: 0x3311cad88f92876fd70f7016,
            limb1: 0x271d81438880d64bb5696d63,
            limb2: 0x27062d026cf8ba91
        },
        r1a1: u288 {
            limb0: 0xdb431b878a7230fc23b9bd29,
            limb1: 0x23268cf79b4e7bb0d9bbdc57,
            limb2: 0x1af9da040d85402c
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
            limb0: 0x8b87b36d8a563235a91aa656,
            limb1: 0x84ad95ee04721b0b0f511c4e,
            limb2: 0x2383ba0b264ab13e
        },
        r0a1: u288 {
            limb0: 0x5139d7ca9a3459211190bec3,
            limb1: 0xda2ce66699db77261c96c12e,
            limb2: 0xd3fbdf02723760c
        },
        r1a0: u288 {
            limb0: 0x3eb75bce3f0f81fdd45b1872,
            limb1: 0xf123d69a1d3ae021048d8287,
            limb2: 0x2b0715f8e9684008
        },
        r1a1: u288 {
            limb0: 0x7371fca59feff7ef3b3d9866,
            limb1: 0x835e52f392d57b472f3efe90,
            limb2: 0x2b4d6087d397fa96
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e88e52558343d08482b44ae,
            limb1: 0xbe854557d87c6b679b32255,
            limb2: 0x12cbca397df982dc
        },
        r0a1: u288 {
            limb0: 0x5a22b9423ac949a16a8e1c87,
            limb1: 0xb98f37f5d13e4addfcf0f283,
            limb2: 0x9cc9aa5ee12bfeb
        },
        r1a0: u288 {
            limb0: 0xa296c7a421722ce08ce6dd2e,
            limb1: 0x8c5b43f37d3a4fb2195e6dc2,
            limb2: 0xc35814925fa54aa
        },
        r1a1: u288 {
            limb0: 0x109f8f3e9430fdfa18e96fa3,
            limb1: 0x9757f57c4c12cb771c4c1598,
            limb2: 0x2e705c246abefc09
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
            limb0: 0x1e48009592c8a6ef6ccac5c0,
            limb1: 0x927198bf1af54ebd07c5a232,
            limb2: 0x3047cd1ac993abb
        },
        r0a1: u288 {
            limb0: 0x5c0290827a3da80d0c92d395,
            limb1: 0x4e9df513cf6c9fec6b6fbd9c,
            limb2: 0x21ef385f101c74ca
        },
        r1a0: u288 {
            limb0: 0x787fa6ef70c70e8e70a23953,
            limb1: 0xaf8b9c744a05ff82973e42f,
            limb2: 0x13b3e51e70c247c6
        },
        r1a1: u288 {
            limb0: 0x85e4056f246fbb21baf99aab,
            limb1: 0x6dd5b7bec7b5e8f5b2021a7c,
            limb2: 0x378f524ef6c10ed
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
            limb0: 0xbe5784bcafb2d1fa7d32a629,
            limb1: 0x820babecea2df8bec6650b9d,
            limb2: 0x257e4d9f83962b79
        },
        r0a1: u288 {
            limb0: 0xff58a0dd953b70d32b4c26fd,
            limb1: 0xf60adf692551ba5c35575053,
            limb2: 0x2cb8cd219392c535
        },
        r1a0: u288 {
            limb0: 0x3cdee51aff9adcfa7786490e,
            limb1: 0x65b8c1b00ae622f8621aed0a,
            limb2: 0x1d98082595ae75a
        },
        r1a1: u288 {
            limb0: 0x365a24631efc9181401eca3,
            limb1: 0x7f80d88eacce0c704015d054,
            limb2: 0x15c09e2dfb69ab15
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
            limb0: 0x214dbb5b4199f55f4044528f,
            limb1: 0x6f86974176ea21fda9142d28,
            limb2: 0xc4e33a91de36b9b
        },
        r0a1: u288 {
            limb0: 0xb7ef0299dc58c2d8e4d00f7a,
            limb1: 0xc04308485dd61914046ee656,
            limb2: 0x1e71eb17ba9affa7
        },
        r1a0: u288 {
            limb0: 0x8cfa5d73c8a1f57b5a9460ca,
            limb1: 0x53d4bfbf1535ebffcd2fe49c,
            limb2: 0x5ffd93efa36b704
        },
        r1a1: u288 {
            limb0: 0x186536e760158428afb21931,
            limb1: 0x48936651e8718318dd45d445,
            limb2: 0x206f3b49aaa05fee
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
            limb0: 0xac19be62a498fcc817f20edb,
            limb1: 0x7f9a98780a222dac90ff79d9,
            limb2: 0x1b3c869897278842
        },
        r0a1: u288 {
            limb0: 0x9e8b4148897b948f05727ede,
            limb1: 0x9edbfcdb0fa2249aac96195,
            limb2: 0x165f0f255757bd92
        },
        r1a0: u288 {
            limb0: 0xc985962b9d1f4f278d29021,
            limb1: 0x50c831011c420be196d9eecd,
            limb2: 0x14a0e0791570c217
        },
        r1a1: u288 {
            limb0: 0x2f98d194f7fb9b336ead58e2,
            limb1: 0x2b4d4d9dad25db7f1a07f2c4,
            limb2: 0x614dccd5d26f376
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x20cdae4e89f464f6efe6d8f6,
            limb1: 0x3f6943c0d070ee0b59015233,
            limb2: 0x10988bd376428a6f
        },
        r0a1: u288 {
            limb0: 0xdff8cee1c74097c3ee0c89a0,
            limb1: 0xab8dedc909df8ce0a749975,
            limb2: 0x276869c8dbf62391
        },
        r1a0: u288 {
            limb0: 0x9f1fb3f0b0649673c657dc9e,
            limb1: 0xb1de67e023c06d4cedd09545,
            limb2: 0x1be7939843773c18
        },
        r1a1: u288 {
            limb0: 0x87233f16de3e207db3b15bbd,
            limb1: 0x6a88aba846bfd463520f52c0,
            limb2: 0x10c9acea7206453b
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
            limb0: 0xfb33b1b92a6981adc2f6cd2f,
            limb1: 0xeb07f065b9fa6dd1023f117c,
            limb2: 0x3012c768e271f16e
        },
        r0a1: u288 {
            limb0: 0x6abcd45a1cd372bc340cd014,
            limb1: 0xdbfe651fe13548728e0ddb27,
            limb2: 0x1e8567a6e584a68e
        },
        r1a0: u288 {
            limb0: 0x4d3c25fe42eb012c1f57e345,
            limb1: 0xa8d2e5a1040cbacce3baabd9,
            limb2: 0x257681dc38ab396
        },
        r1a1: u288 {
            limb0: 0x88f060c10c472a5c64c73876,
            limb1: 0xfa61e80c03a5fadf593e2667,
            limb2: 0x1c884676de73d1d0
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
            limb0: 0x4e13a91f6881cb37eb321c0e,
            limb1: 0x149ac4ffd6e2bb427b1cd501,
            limb2: 0xafbae640d045306
        },
        r0a1: u288 {
            limb0: 0x8c19cf1d7b78534dd57dd0e7,
            limb1: 0x44e69a779aecb5953854d03b,
            limb2: 0x2882d9b93301ee9d
        },
        r1a0: u288 {
            limb0: 0x40bdaa2105697a1a27119e64,
            limb1: 0xaf08c1e83aee58f28660669d,
            limb2: 0x90924361ef8201d
        },
        r1a1: u288 {
            limb0: 0x47db755412bd6d4a1fccb62a,
            limb1: 0x321091c5432707b73998dbf0,
            limb2: 0x231dbe102f71064c
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
            limb0: 0x405a6e063590f5666b7d4363,
            limb1: 0x272fa202fe7c07ce28083fb5,
            limb2: 0x16ee58d0cd1f4cfd
        },
        r0a1: u288 {
            limb0: 0x9893f2d4de2a8542a3778059,
            limb1: 0x813eadc3d17f5a8be2018060,
            limb2: 0x14c1a09eaeefd526
        },
        r1a0: u288 {
            limb0: 0x491b4ad535d671691253a09f,
            limb1: 0x8ff5db3055292a0ce31e5b2c,
            limb2: 0x1969ff23d652f361
        },
        r1a1: u288 {
            limb0: 0xbcba4391180c09c70f8d1943,
            limb1: 0x96bdee671a02b2681bcd09f5,
            limb2: 0x1d8837b1f457c24d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xae88c54d4c9078c64acf2296,
            limb1: 0xac3d2d75d5afe8b42f45efbe,
            limb2: 0x11238875ed2ffe8c
        },
        r0a1: u288 {
            limb0: 0x50ba19bd0c8afbb29ba326d9,
            limb1: 0xeb3c92da425cc0b91f35b965,
            limb2: 0x290bd163be2541b5
        },
        r1a0: u288 {
            limb0: 0x44477e46a34de4bf03c32ff9,
            limb1: 0x4f7761ac44ca302d3afb9a46,
            limb2: 0x15dc8a9b2bef8368
        },
        r1a1: u288 {
            limb0: 0xa3a75491089bf3c4e92c3bef,
            limb1: 0x8cf146a3bf97e8e4c00852f5,
            limb2: 0x8ea0cf0692a10aa
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
            limb0: 0x47e9c1d346c1f4cd2f528669,
            limb1: 0x23915c2ad400c71447a9dca,
            limb2: 0x1194a04a86ed7135
        },
        r0a1: u288 {
            limb0: 0x7cae64e04bcf0308e0de166c,
            limb1: 0x75136d0c4d6f609b90a63bc3,
            limb2: 0x12d8ce563b39159d
        },
        r1a0: u288 {
            limb0: 0xdf5abf322aee801c8d246373,
            limb1: 0x558aa1a08ff70c4be1072941,
            limb2: 0x20d29258e70f2b71
        },
        r1a1: u288 {
            limb0: 0x306de6ed566af9d13dc9a380,
            limb1: 0xf5aa73be50fc64e1bdc8b37e,
            limb2: 0x22ea61d6009d9e1c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x40d981e5ff3d87fe04532345,
            limb1: 0x431f2b57fceb55d25acee769,
            limb2: 0x1f5cb9c1883805b3
        },
        r0a1: u288 {
            limb0: 0x2aeb7fb1c2542bcaa5a49171,
            limb1: 0x5d058ae1cb65ba29a4b9bc74,
            limb2: 0x52c1b7ee67d28fa
        },
        r1a0: u288 {
            limb0: 0x21590107a6f44c760efdb39d,
            limb1: 0x28f7badeb2161d05cd0507d7,
            limb2: 0x1895147d0c34d7f3
        },
        r1a1: u288 {
            limb0: 0xd6174c6fca96a7fcea51e8e3,
            limb1: 0x1c672f0b4c19baadc3bf474c,
            limb2: 0x208402502cf525a7
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
            limb0: 0x4dc1e44f4fd6d3ad946f04b4,
            limb1: 0x757d6303f75f69a5f339178f,
            limb2: 0x2825ac6b2ae99b6f
        },
        r0a1: u288 {
            limb0: 0xd15491df150e8d12d0fd9c55,
            limb1: 0x247cb3e0c8688572534c1c0,
            limb2: 0xa9bbce7928435cd
        },
        r1a0: u288 {
            limb0: 0x17b8df720f7ea8c4984827e5,
            limb1: 0x1eed11ee30c88a06b6e4f771,
            limb2: 0x1188efd2e314fb1
        },
        r1a1: u288 {
            limb0: 0x2fe2fc56ca8fab10d87cef5f,
            limb1: 0x5b3cc04ff502ba4f2febc844,
            limb2: 0x15ee84c3bb814a57
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
            limb0: 0x9783b677d167904079faba68,
            limb1: 0xe2a7aa956f39868a45c1abca,
            limb2: 0xaffb3df0d57f215
        },
        r0a1: u288 {
            limb0: 0x89617b40065cee6148d33b1d,
            limb1: 0x9c170b0c49818ab641c17fda,
            limb2: 0x26558d25fba35b61
        },
        r1a0: u288 {
            limb0: 0xfb08d67592fac9b71f7903f6,
            limb1: 0x5d36619f88ce60d091dbfae8,
            limb2: 0x116ea45c959e25fa
        },
        r1a1: u288 {
            limb0: 0xf845a878bcf33005ade897b2,
            limb1: 0x7fa55d793df0cb7fd79bcb05,
            limb2: 0x22a449151ff68f7a
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
            limb0: 0x3bb6f1ee26908769c0c7af86,
            limb1: 0xc0f21f78a172491d8045459d,
            limb2: 0x1e3e619edcd389c2
        },
        r0a1: u288 {
            limb0: 0xf2a5848b9b2acb81717d9888,
            limb1: 0x49125a7dd10bb054b9573d30,
            limb2: 0xeca97751de469a1
        },
        r1a0: u288 {
            limb0: 0x88d4dc86186ca81ae802b8d1,
            limb1: 0x886509217cbc3d3800eb95a8,
            limb2: 0x40f8638e7523e3a
        },
        r1a1: u288 {
            limb0: 0x7530fa51163751f57bf94ef5,
            limb1: 0x19190e9a4a9916490d5cd162,
            limb2: 0x2888e6c394ee2454
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe709f0bbc4fbc2c843905018,
            limb1: 0xab03c7c9e10aab85c0880330,
            limb2: 0x12cab19641b69ea9
        },
        r0a1: u288 {
            limb0: 0xc55d80947f0df5cd336e3b17,
            limb1: 0x8ececc988066e3da68511da3,
            limb2: 0x615a50b84dbeb15
        },
        r1a0: u288 {
            limb0: 0xee377e45776d92f09e30f5ed,
            limb1: 0xba3a76fa047c10ef4ca89e8e,
            limb2: 0x1d62a0b38a928d3
        },
        r1a1: u288 {
            limb0: 0xa70a4048e83f106f22174cea,
            limb1: 0xc6e44ce301fed47b34369e8,
            limb2: 0x9b927358fcf6f1c
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
            limb0: 0xbe1415a4b04bd0b14024c48b,
            limb1: 0xad145fd134e42385affba08f,
            limb2: 0xb69fcf67a9d0fb3
        },
        r0a1: u288 {
            limb0: 0x13df92c150cb4c47a7f132cb,
            limb1: 0xb386955a517f3e4b1fc2a0bf,
            limb2: 0x9819c26d218134f
        },
        r1a0: u288 {
            limb0: 0xdc408b492b149b1b29d81d3d,
            limb1: 0xd79a7659f338d26b53c26e7b,
            limb2: 0xc8c53ceb41d9390
        },
        r1a1: u288 {
            limb0: 0xcb21846a0f513a84cb6e6d06,
            limb1: 0x3b97c10b9aa8a683e404d60c,
            limb2: 0xb3cc277a8852943
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
            limb0: 0xde6048cee08614d1e6d2f96b,
            limb1: 0xbde0e8c1620d51440258216b,
            limb2: 0x14193cefad693dd1
        },
        r0a1: u288 {
            limb0: 0x9f7893c9da9d10c5b9ca8949,
            limb1: 0x4ae4dac77fb8ed1467905702,
            limb2: 0x6b64e34fd6bfb9d
        },
        r1a0: u288 {
            limb0: 0xa5f5c217447649e265e90373,
            limb1: 0x6dd7b000da37868731efa4c0,
            limb2: 0xa204a5e6613d344
        },
        r1a1: u288 {
            limb0: 0xdac2f046a5cea33c824cf3a1,
            limb1: 0xb04a80511790e75d64236d40,
            limb2: 0x1097ebd420def6bb
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
            limb0: 0xfcd54a1c43c8c170790bce34,
            limb1: 0xf6f830af1cc6452e3fd7b31c,
            limb2: 0x2bd00ceedb047f98
        },
        r0a1: u288 {
            limb0: 0xb3666620ab1d8c21a9fc8ffc,
            limb1: 0x5a139194fcdf158d530c5fc4,
            limb2: 0x1fc478c9ebe62f67
        },
        r1a0: u288 {
            limb0: 0x27c85c4d8509cbe2e6c21876,
            limb1: 0x33609729ad413115877aaff5,
            limb2: 0x20670353a786d6ef
        },
        r1a1: u288 {
            limb0: 0x6354d06aec8774aca61dd2b7,
            limb1: 0xc625dd1ca10ae18f942382b5,
            limb2: 0x136f58a05bbc4141
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
            limb0: 0xd4af1346e991f271cd5047f2,
            limb1: 0x48703238234e54f469c0a7b3,
            limb2: 0xb9b22c07159a0d1
        },
        r0a1: u288 {
            limb0: 0x8e313468d76ef52441b665a9,
            limb1: 0x85c305ae789c0fc7e173f340,
            limb2: 0x283d6be6457d0be8
        },
        r1a0: u288 {
            limb0: 0xecef6bfc1920d1ab213ef58b,
            limb1: 0xadabe415d5449f667d00757a,
            limb2: 0x14cfd90b3e9ab5e1
        },
        r1a1: u288 {
            limb0: 0x7860a56c646439e7856ed04e,
            limb1: 0x6d7ecb02c390e51b85c5c2ed,
            limb2: 0x1cfdf905ee31da2b
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
            limb0: 0x429de8598eb5b9c95eadf6bf,
            limb1: 0x5cf6f083a21ee72a88e72f81,
            limb2: 0x9f54ea7c5e48b3
        },
        r0a1: u288 {
            limb0: 0xcac7457dd404fd6253d5ebc7,
            limb1: 0xf4483b7d8a253d2e13df216a,
            limb2: 0x23db4049a261fdba
        },
        r1a0: u288 {
            limb0: 0x1d01f5dafcee9b10665d9f90,
            limb1: 0xa94729a5a218cf40bb9908e4,
            limb2: 0x784f85f44708e0d
        },
        r1a1: u288 {
            limb0: 0x3964ae9be5d94cc480de2f44,
            limb1: 0xeb4a78bfd19c671a4f9b2166,
            limb2: 0x29520abfe5fe1bc
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
            limb0: 0x6610e86c8af11f5e87829bed,
            limb1: 0x3c5685cb934c0158e48d37e8,
            limb2: 0x2dfa47c178d20450
        },
        r0a1: u288 {
            limb0: 0xc3d6752e5c5607eadad70acb,
            limb1: 0xef67e32cb73eca1e00785b3e,
            limb2: 0x23f659e5169034f
        },
        r1a0: u288 {
            limb0: 0x4a6ae25023122fb114dae750,
            limb1: 0xe902c80217c91b45f8670bb7,
            limb2: 0x27e7c2e68a4abaaf
        },
        r1a1: u288 {
            limb0: 0x4fed611d199162da1ed50769,
            limb1: 0xc436659f6901caf38a89a40a,
            limb2: 0xcd37572a009bc63
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4bedb88589cb11558092cb22,
            limb1: 0x49d35639fb7716a6723de05c,
            limb2: 0x2f6e4d0017f15d0d
        },
        r0a1: u288 {
            limb0: 0x437365165d9254b67670f805,
            limb1: 0x53b6d9ad3f6eb1d8f0f23d6a,
            limb2: 0x2d4b7cbee5accccd
        },
        r1a0: u288 {
            limb0: 0x3b9a7b545a043c80ab43afa2,
            limb1: 0x83cc0a7c1eacea288b32fa98,
            limb2: 0x18f172ed7c7f46b7
        },
        r1a1: u288 {
            limb0: 0xa1748cb7ff3ee3f0401e3dbd,
            limb1: 0x2ddb2f8bc6c0e5fb5632117d,
            limb2: 0x256415ed4ecfe05f
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
            limb0: 0x60349cc2ab70949346a4966e,
            limb1: 0xd3d91e007659042e6b182894,
            limb2: 0xaf752171c5ed39
        },
        r0a1: u288 {
            limb0: 0x3347c933248f98774dd156dd,
            limb1: 0x593468767627f51c3772bc41,
            limb2: 0x4e86e0a1ca408fc
        },
        r1a0: u288 {
            limb0: 0x70d349f678b249f69b3ac5fd,
            limb1: 0x2b40dd3db8b760dc15746f1e,
            limb2: 0x15ad629102f8697f
        },
        r1a1: u288 {
            limb0: 0x37d94bd21df43ce2eebfc245,
            limb1: 0x4ad7c117be08d25ee747ea4d,
            limb2: 0x2f34f89a9006caa
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
            limb0: 0x761c53bafaee3100f3bcda7a,
            limb1: 0x87b19462df75c199397adb82,
            limb2: 0x20d1065349493b73
        },
        r0a1: u288 {
            limb0: 0xfe6123b22f841f9d042b27d7,
            limb1: 0x8e802055039eae37211019bd,
            limb2: 0x2a9df8631ad882c8
        },
        r1a0: u288 {
            limb0: 0xd1adb11576796310988829d0,
            limb1: 0x7915486227b77b668d0852ce,
            limb2: 0xb0c399e63e41eb6
        },
        r1a1: u288 {
            limb0: 0x2c146971113d0105f4c8388e,
            limb1: 0x9d4ab24bb18595a3654be213,
            limb2: 0xeff0b64725c8654
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
            limb0: 0x609a7df609f415932e86cbbf,
            limb1: 0x1faf3bc743cb47f864fdf43a,
            limb2: 0x28ce431c05dfb1cd
        },
        r0a1: u288 {
            limb0: 0x446417ff01e14e5fb32021f4,
            limb1: 0xc2435ea5f4dc96c6132fda24,
            limb2: 0x5cd35ae260112c6
        },
        r1a0: u288 {
            limb0: 0xb7d3cd3dda04baa4c190db6e,
            limb1: 0xdcb5e1917721072c3263fc1c,
            limb2: 0x2e526a5bcef4d6a8
        },
        r1a1: u288 {
            limb0: 0x7bf65a7d8a6274d1a350ef08,
            limb1: 0xd2542b458a6aa0c7cc1e21f0,
            limb2: 0x16f33f0ec98da2de
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x771d72ff29c5a3a1ff88f198,
            limb1: 0xbe2c64c660be6e778e340f92,
            limb2: 0x2c019ce9c3728f7e
        },
        r0a1: u288 {
            limb0: 0xfd1744ea50b78cae187c5025,
            limb1: 0xd72f8179be73f96af8decac5,
            limb2: 0x2b5365adfd2532be
        },
        r1a0: u288 {
            limb0: 0x959d828db3de6437eac92b6e,
            limb1: 0xc9553a3b0f3580aac55ecf16,
            limb2: 0x7a8fa0021a4b3c7
        },
        r1a1: u288 {
            limb0: 0x9dfa39c2077ae5fcdea4296a,
            limb1: 0x107176bd23dc4c62a32bf2a0,
            limb2: 0x10549739f2db2c31
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
            limb0: 0xd66296c1b8c69b486339b168,
            limb1: 0xc726dd84f0353aae655633e3,
            limb2: 0x13fb91e3defcb0b6
        },
        r0a1: u288 {
            limb0: 0x516d4026e37a9d471947c149,
            limb1: 0x18436d0a9c0bb1de020ca3eb,
            limb2: 0x280cfb4d40344bff
        },
        r1a0: u288 {
            limb0: 0x166f95244c9bd4e25283b54b,
            limb1: 0x3a3abb337478379c38d5bd4b,
            limb2: 0x14ebe8ef3f851cdf
        },
        r1a1: u288 {
            limb0: 0x305e9eed4de4c4c699266706,
            limb1: 0x5f563d9f5e5a2a976d1c2805,
            limb2: 0x545866e0d0e921d
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
            limb0: 0x345a20d5e888f79e5d577165,
            limb1: 0x573341265fbc841e400ed256,
            limb2: 0x2a4f6e7f3200a297
        },
        r0a1: u288 {
            limb0: 0xf229685c07ee4b41f010b752,
            limb1: 0x1ae4890cef224f7bdad3c517,
            limb2: 0x231a1e296a8f5c90
        },
        r1a0: u288 {
            limb0: 0xe563b8c1a9b742fd6ff30281,
            limb1: 0xb3004b7a07291c96e552132e,
            limb2: 0x126c9b3994a4c48b
        },
        r1a1: u288 {
            limb0: 0xf10b3f5e553b0b4df069efb,
            limb1: 0xda2c0058b84be36d37ba89ef,
            limb2: 0x27e663cc32c6f539
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x840760c0c17f2465164c2260,
            limb1: 0x3374bc0501d6ae81d1c3843,
            limb2: 0x1c6ff38a78564381
        },
        r0a1: u288 {
            limb0: 0x3300d27d21c053cf95a5f0e1,
            limb1: 0x9eb2315c8cd6a925d689f8f9,
            limb2: 0x20f1730cfb46c00b
        },
        r1a0: u288 {
            limb0: 0xad2e0eb5001419c54f61a915,
            limb1: 0x27fd01e9626fbcaa55e91c86,
            limb2: 0x1e9950c8bdc8026c
        },
        r1a1: u288 {
            limb0: 0xa2b7ab6998b284614cc66dc,
            limb1: 0xdffcbcd1f852b7d9f4d5ce96,
            limb2: 0x2bed917c5a5031b0
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
            limb0: 0x906f3711cd17a15fd912352e,
            limb1: 0x31301323980d0de1483648a5,
            limb2: 0x2b306dae6d3a85de
        },
        r0a1: u288 {
            limb0: 0xefb8eecd9527323585a20c79,
            limb1: 0x55b0fdbc1f7955d739248a55,
            limb2: 0x1c9267ca2c7b23ab
        },
        r1a0: u288 {
            limb0: 0xfda40cc2d31a4233dac9c4ca,
            limb1: 0x83ed4efb3b0d4a19613c043e,
            limb2: 0x2d2bc96c2841e61a
        },
        r1a1: u288 {
            limb0: 0xe003f3f3b89650c02f647e81,
            limb1: 0x521ae1cefaaf569a2d0b47b4,
            limb2: 0x2c7636bdf47d89f4
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
            limb0: 0xb3f28d904bdd406f4753a87c,
            limb1: 0x716ae54ed4d03c981f2a5ab7,
            limb2: 0x235c7c50188df3b0
        },
        r0a1: u288 {
            limb0: 0x4795aa435b060c24cf2d4751,
            limb1: 0x2d1fe5f4becbed884fdd0200,
            limb2: 0x49d82f37a3910a
        },
        r1a0: u288 {
            limb0: 0xc63aa93dfe3737423056f2d6,
            limb1: 0xb1ac041b072f102a40cec949,
            limb2: 0x2f44dada0ba71672
        },
        r1a1: u288 {
            limb0: 0x80ee4881bdfd15cd45eb69cf,
            limb1: 0xa44e52f99c5fa323be03b017,
            limb2: 0x1297ed02624dfed7
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
            limb0: 0x40a2b183832b329bd2e8a83e,
            limb1: 0x3ac3f397519c02d0828a91a2,
            limb2: 0x1f2e0c5077b3c5bf
        },
        r0a1: u288 {
            limb0: 0xb207e26a3182b3cf4bc7b9ce,
            limb1: 0xc5cba29c9b5a3ffb6bc71c74,
            limb2: 0x2c6b38decadd2359
        },
        r1a0: u288 {
            limb0: 0x2523e80ca2c2970187e716d5,
            limb1: 0x33ec346f73fd4d50f6f6879b,
            limb2: 0x19878723c9c597f9
        },
        r1a1: u288 {
            limb0: 0xcb64cef341a9d94ec4c41e46,
            limb1: 0x7a4bd8f8bc1d6c8571fe93d2,
            limb2: 0x14f945fd2c321b4a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bcdb0b390d5d60ff4da45db,
            limb1: 0x8221faa918c2ec5f6f396cac,
            limb2: 0x192162c86a114376
        },
        r0a1: u288 {
            limb0: 0x425ccaa4f7c56a9072d4b5e9,
            limb1: 0xef3645bc49b7a23491956755,
            limb2: 0x7eaad343c9aa0b4
        },
        r1a0: u288 {
            limb0: 0x108783daf5e3f2b5c6b8bc2,
            limb1: 0xe4151867b25af1130e0df298,
            limb2: 0x28163c1d8996cefb
        },
        r1a1: u288 {
            limb0: 0x444a0fc9d8337e7bb960b535,
            limb1: 0x29f0a743068855e434a7ef9f,
            limb2: 0x2efffdf6d8966753
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
            limb0: 0x80c1054b6b9e46fac57be3be,
            limb1: 0xfe9929eb34b470e9afbd26b7,
            limb2: 0x1c0b0619354a1299
        },
        r0a1: u288 {
            limb0: 0x202a17ab318263e0025fde3e,
            limb1: 0x556d3f183e3fe19aaaa9fa85,
            limb2: 0x145a02ad3610e5d9
        },
        r1a0: u288 {
            limb0: 0xc2e23b18c7ead8e48321c150,
            limb1: 0xffa0b22ae7391f94ae6e5ef3,
            limb2: 0x2dbf29f97d37a481
        },
        r1a1: u288 {
            limb0: 0x28339cccee738b852c82b0c7,
            limb1: 0xe0fcef7b7b1108447ccb5879,
            limb2: 0xefaf100a45e260
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
            limb0: 0x59023e4d859aa7119d6c87b4,
            limb1: 0xfc65699bd4cc862cfe97c394,
            limb2: 0x5ec973f98af560d
        },
        r0a1: u288 {
            limb0: 0x423407ee08b19f527a658c9a,
            limb1: 0xe30251cce8ebaf9cd706d6fa,
            limb2: 0x1bc3300f5af4a7ee
        },
        r1a0: u288 {
            limb0: 0xfbeab7e0f2c76ffe82811465,
            limb1: 0x904f62b01e5c1d0d7c5da136,
            limb2: 0x251b900c3b0faf3e
        },
        r1a1: u288 {
            limb0: 0x49b10ee1ba53f7b2496c0de6,
            limb1: 0xf47774652977571164620a70,
            limb2: 0x1796e957fb64883b
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
            limb0: 0x5c5926747f866cb367d37490,
            limb1: 0x9bb370ce3f71a6f132425450,
            limb2: 0x18ae02bffb951d06
        },
        r0a1: u288 {
            limb0: 0xfec292edf0f9c25dc26ca4a7,
            limb1: 0x531b63dd7910dcbf17a9bf5b,
            limb2: 0xabbfdce77e3cd5e
        },
        r1a0: u288 {
            limb0: 0x9ec3ad172ca7d2f3441b4554,
            limb1: 0x1ddbf7e5e1ecd572eeb960f7,
            limb2: 0x23d2cdd33bc14889
        },
        r1a1: u288 {
            limb0: 0x32264b02368e4b940be89a7d,
            limb1: 0x905b9ffc713742cf74731deb,
            limb2: 0xadc9a0fbb89deb
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
            limb0: 0xdd826d851112377c1dc542ee,
            limb1: 0x6236934aa9392c72da1a8349,
            limb2: 0xfda8ed58a3f7d46
        },
        r0a1: u288 {
            limb0: 0xaa11bdf40291c0d59963c6a5,
            limb1: 0x821130167625111e1c759277,
            limb2: 0x246efde0e4697169
        },
        r1a0: u288 {
            limb0: 0x3204c816383a006997be1d59,
            limb1: 0xd8613a9e4e6abf8f1ef2cab5,
            limb2: 0x23f2a19565af8fae
        },
        r1a1: u288 {
            limb0: 0x4f713b8c5f4a5910e8d01c20,
            limb1: 0xa9d64df286bd1abc5b675401,
            limb2: 0x2a754e2ba688c608
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
            limb0: 0xd84b5dfb4df39d90d19a5daa,
            limb1: 0x45403f9c6d6e24bf9243e2f7,
            limb2: 0x16817c8f142a8e6f
        },
        r0a1: u288 {
            limb0: 0x2a25915f0a159e6bf0286857,
            limb1: 0xeec7ec4ed134ee85a187e737,
            limb2: 0x1ed3a28f61784863
        },
        r1a0: u288 {
            limb0: 0x17867e48754590ea70c195bc,
            limb1: 0xc753d79ff98b7116d9b3f3c3,
            limb2: 0x1f7b7e22cb05a59b
        },
        r1a1: u288 {
            limb0: 0xe9b9a04d0f9a40dd9d6d4f50,
            limb1: 0x2e3fee95a5665d06ec382836,
            limb2: 0x2d44c6e4d4da6851
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x33440b96919f7a69fd67b292,
            limb1: 0xcf9553764c44b73cdf25d118,
            limb2: 0x226ba06b5c2b5df1
        },
        r0a1: u288 {
            limb0: 0x15dad50f44f3ff916ea02c1a,
            limb1: 0x16d5c847c578ed5b45f57c8f,
            limb2: 0x1bed362c40249afc
        },
        r1a0: u288 {
            limb0: 0xcb0491babdc51635c3a36c56,
            limb1: 0xa12d7917c6d0081a19dbd6ac,
            limb2: 0xbcb92d5a1a9dc9
        },
        r1a1: u288 {
            limb0: 0xe1e7eca0c2539d93106d8ba7,
            limb1: 0x600d5db6ca37cf9af2b5066b,
            limb2: 0x11b4b6d379bdd8cb
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
            limb0: 0x37a1efa8af0a0f2f3413c9ea,
            limb1: 0xe2d7b0e1cd401ed7db1515da,
            limb2: 0x2a05478f7a2abaf0
        },
        r0a1: u288 {
            limb0: 0xd6d2d07fa963c2cf187a1027,
            limb1: 0x8c01d047245e40f52898b70d,
            limb2: 0x1f4e1a9cfce93a92
        },
        r1a0: u288 {
            limb0: 0x7c81b2024587013422ff88b6,
            limb1: 0xcae1f05f83a5ffb9b783397f,
            limb2: 0x1bf42628bf5f15a7
        },
        r1a1: u288 {
            limb0: 0x2b8cc4f495403f6a182326d9,
            limb1: 0x26221bc7ac97668b72798f82,
            limb2: 0xd309961916b2c90
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
            limb0: 0xaf9cb32b8ea335aaab0954b,
            limb1: 0x9863a56bd940aefc4214c510,
            limb2: 0x686bc4aa2f50e38
        },
        r0a1: u288 {
            limb0: 0xc8ea609fcb838a0be70685bc,
            limb1: 0x62110c509a53d133052a8938,
            limb2: 0x1c33728e7fc624d8
        },
        r1a0: u288 {
            limb0: 0xc218f234c026eb3492924d71,
            limb1: 0xa398693dc21369facfcd3ee1,
            limb2: 0x2de9cca20bc121c
        },
        r1a1: u288 {
            limb0: 0x1e034c32483d8f163528c47e,
            limb1: 0x18f10953a180afd3ab274426,
            limb2: 0x5b9094951b4e958
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xea7ba13780c7ba17d3fb8f94,
            limb1: 0x5309ad4e4ab31703627f15ce,
            limb2: 0xc2e05d673539def
        },
        r0a1: u288 {
            limb0: 0x56d74138feff86a8d43ef3c5,
            limb1: 0x54217ef8fb6e314566c38588,
            limb2: 0x19d2cce200dae510
        },
        r1a0: u288 {
            limb0: 0x5d475aebefece84df7c6532f,
            limb1: 0xce4427353a976b2984e87e96,
            limb2: 0x2c1378879845f2fa
        },
        r1a1: u288 {
            limb0: 0x1b8417005c64cb189c48b545,
            limb1: 0x464f91cd1012c82a260e78b,
            limb2: 0x2fdc160fc7f7c27b
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
            limb0: 0x34ef9608903a12f10e5c352,
            limb1: 0xa67a92e8f4356c7373f29540,
            limb2: 0x120b1cbba1eff9b2
        },
        r0a1: u288 {
            limb0: 0x8dc057e648360554c6342ad0,
            limb1: 0x9ee2d5f3092310a64f001535,
            limb2: 0x17ff8f8f93e1c807
        },
        r1a0: u288 {
            limb0: 0x779367e9abf8bee8497d3580,
            limb1: 0xe37e576b90f49f792a9fa49d,
            limb2: 0x50ae355157ba646
        },
        r1a1: u288 {
            limb0: 0x981c9d3ba68b79796b0db9d5,
            limb1: 0xed66eb14961fc810f8ed17f6,
            limb2: 0x19a75d940fd470fa
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
            limb0: 0xe88d98162b7d4dd3d5ce763c,
            limb1: 0xe4b189a94beae871a6fdd866,
            limb2: 0x1615c88d4efa488b
        },
        r0a1: u288 {
            limb0: 0xbd202f1d4a91a23b69d07f20,
            limb1: 0x380ffe56f7cce184cbc587b0,
            limb2: 0x145c29007dc833e8
        },
        r1a0: u288 {
            limb0: 0x5702f7553991dd9acc1a6305,
            limb1: 0xe7935f799df33336f82930e6,
            limb2: 0x22858bde1a793a06
        },
        r1a1: u288 {
            limb0: 0xb2605a84f6a5ff2a7c927f83,
            limb1: 0xaa6c407682531673cc76998e,
            limb2: 0x2b25d2ffc0447e8e
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
            limb0: 0x7670a8253c9c01c006803a92,
            limb1: 0xc1c3c919eaa836af8a435fb,
            limb2: 0x84d85e968bd71ec
        },
        r0a1: u288 {
            limb0: 0x7e9ce40c1529f754c9382ffc,
            limb1: 0x19e877f8e728690ce4cee362,
            limb2: 0x5b633c0cf429b3f
        },
        r1a0: u288 {
            limb0: 0xb33b066dbab3c1651a9ae180,
            limb1: 0x2abea2b5748b3fe39132e1b9,
            limb2: 0x2774e6df9ae230eb
        },
        r1a1: u288 {
            limb0: 0xea315313d145bb3fb849442b,
            limb1: 0x948821542ef421374df359a4,
            limb2: 0x75caffadb11f8c2
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
            limb0: 0x83b8f616f0a03e86f2b501bf,
            limb1: 0x6477e29d231cbdccd9fbf2c8,
            limb2: 0x4f8c26fd0bf7f52
        },
        r0a1: u288 {
            limb0: 0x91751a6c55193479bd576bb8,
            limb1: 0xa1b56db1fafb219d70dc47c8,
            limb2: 0x2c8cee66c6463d7
        },
        r1a0: u288 {
            limb0: 0x38513d23cfdc6f3ca209ba4e,
            limb1: 0x1e58669f2ec122f95da3da45,
            limb2: 0x1566c84e048e5511
        },
        r1a1: u288 {
            limb0: 0xe5985b7cf717a5ea2464b4c5,
            limb1: 0xebbbd784a98d058642a5eade,
            limb2: 0x2e819d9e8259b93e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd2c653cc335a326cfb22f93f,
            limb1: 0xb4a23e80344d804418194d0f,
            limb2: 0x2a8dee055bc4f88
        },
        r0a1: u288 {
            limb0: 0xd4ec283c73a63430981dbf44,
            limb1: 0x69ae38cf53f423554ccf8e47,
            limb2: 0x161ff51c23638e9c
        },
        r1a0: u288 {
            limb0: 0xc5298a2f695e8982433c0f97,
            limb1: 0x651c61a6f255ccc5788462dc,
            limb2: 0x10a7da87c8492665
        },
        r1a1: u288 {
            limb0: 0x80a065c4d7cdb0548aa6db69,
            limb1: 0x942282b83adf60ce1968a8d9,
            limb2: 0x1da8ef6de23f9236
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
            limb0: 0x61d285b7e29ae843791dba3b,
            limb1: 0xc1840f2751221e7b61579958,
            limb2: 0x2aafb17df6561f01
        },
        r0a1: u288 {
            limb0: 0x6ed938ed666f8bb96d62d444,
            limb1: 0x737012ce74635e396dfb07ec,
            limb2: 0x278a4060d45a5411
        },
        r1a0: u288 {
            limb0: 0x91aceeb07cb95da40441c97f,
            limb1: 0xeee7808794c52e292d6b3c5c,
            limb2: 0xd543f8f46400652
        },
        r1a1: u288 {
            limb0: 0x81e1f07bbecc797f847d6ec,
            limb1: 0xb0b62c9f12f409b29b3409fe,
            limb2: 0x2f0c7a94bbfad46e
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
            limb0: 0xf7feaf0b7230690b6dfb8a4d,
            limb1: 0x32c1b944e84a5e2492c4a591,
            limb2: 0x2956d3b0d6e88cfb
        },
        r0a1: u288 {
            limb0: 0x5d1b9608a5b6bd86c178f699,
            limb1: 0xd381f9f0f908b187ddc110af,
            limb2: 0xeb15418587bb6fa
        },
        r1a0: u288 {
            limb0: 0xcbe41b93cb144f46c2acf65f,
            limb1: 0x555b9d209cce6944a82b1b06,
            limb2: 0x2a1618aad2296fc8
        },
        r1a1: u288 {
            limb0: 0xa0954fc5b3e2e0c6c4a6eda3,
            limb1: 0xc75782560a7cd82a9911f851,
            limb2: 0x1c64a8d86227c834
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x248fa2ae85b16dd3563b2f3c,
            limb1: 0x2162df30980e667b3d87acb3,
            limb2: 0x18865e64d79fa90
        },
        r0a1: u288 {
            limb0: 0x6761e9fa71782430f7bcc7c2,
            limb1: 0xa0a647564a2d3133dc1d9dd1,
            limb2: 0x1d7cd5ae0d320b9b
        },
        r1a0: u288 {
            limb0: 0xe5af2a2f2742111fb3202445,
            limb1: 0x6068f6d04d698caee2aef4a0,
            limb2: 0x2a00ed25e9c8b952
        },
        r1a1: u288 {
            limb0: 0xe51083cc83ccdcdf99fef29b,
            limb1: 0xf2ed84e743de8e7c64fb1bf5,
            limb2: 0x18b6c08035e48995
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
            limb0: 0x5de31efa253969715f7556cc,
            limb1: 0x82313296ee6b5c61618ee8b4,
            limb2: 0x12888801afefcdee
        },
        r0a1: u288 {
            limb0: 0xd020f2557584eb37a6f8c9c9,
            limb1: 0x9d026d7738f26e294d478b08,
            limb2: 0x13e47a3f3313676e
        },
        r1a0: u288 {
            limb0: 0x71743bfe147c9938ca10092f,
            limb1: 0xe73b3cf6030f67b92e58bc4b,
            limb2: 0xf23d9372a1057f8
        },
        r1a1: u288 {
            limb0: 0xe92228e61d2f714ade8c36f1,
            limb1: 0x28262dbca5c66b379e6c6ecc,
            limb2: 0x12cb74c70906fb6
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
            limb0: 0xd95ad7152d70aa6c4c7f1ddf,
            limb1: 0xe995afeaa977bd7f0de513aa,
            limb2: 0xcaf6a800b9c3311
        },
        r0a1: u288 {
            limb0: 0xb26663c771804b9b401b70c7,
            limb1: 0xb5526d99906bb7018f708c8e,
            limb2: 0x2abfaadfe40f7214
        },
        r1a0: u288 {
            limb0: 0xff80171a73791ad853cb2737,
            limb1: 0x2965c2749112aeb5d1cd6c42,
            limb2: 0x1ff55198f8204d2a
        },
        r1a1: u288 {
            limb0: 0x6d7480c350c12ddb8565e1b3,
            limb1: 0x3b894ab1f2e44e7551cb22a6,
            limb2: 0x20a71cea98d4b952
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
            limb0: 0xe4e4428d1eeb6c759c62f85,
            limb1: 0x20d0c9ec178ed28827081056,
            limb2: 0x67521087d1f9279
        },
        r0a1: u288 {
            limb0: 0x1bcec236e7a637d4e5142769,
            limb1: 0x2c7fb8cdc1cd2805555b46c9,
            limb2: 0x22322dba439f0104
        },
        r1a0: u288 {
            limb0: 0x41ab641c5e465265c676ed83,
            limb1: 0xf42550e571dcc9cc1d4090f7,
            limb2: 0x1d7b76de057d447c
        },
        r1a1: u288 {
            limb0: 0xd7a16315256e9e408d78cb58,
            limb1: 0x498693e400eb9a378967dbaa,
            limb2: 0x2d73f56729c799c3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1176984c1ae434084986da,
            limb1: 0x471467d296ee1b90defb435d,
            limb2: 0x2a1d642eb9445e71
        },
        r0a1: u288 {
            limb0: 0xbcdce28c75596caf36cf1bea,
            limb1: 0x138d2de8e3f192fd33688edd,
            limb2: 0x1e0fcf229f712408
        },
        r1a0: u288 {
            limb0: 0x4217a6cc9b696197aa5efae7,
            limb1: 0x85dd9323087bc8ab2fcc2bb2,
            limb2: 0x275f32bc7003062d
        },
        r1a1: u288 {
            limb0: 0x5c6d43c7468a9d0bb4b95820,
            limb1: 0xbc65c925f82ef98d8e06d2c3,
            limb2: 0x1779a8d8c0af2a65
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
            limb0: 0xb28ce6700e687d31d53c45ad,
            limb1: 0x84c84efa013846d2468edc06,
            limb2: 0x2b81297ed529e469
        },
        r0a1: u288 {
            limb0: 0xae584e987808c5b8b201c2bb,
            limb1: 0xf06b4b663a1e2cd2d7f98f6b,
            limb2: 0x1d082decb5eaab8d
        },
        r1a0: u288 {
            limb0: 0x8cc7b8ba9fa38671ef2e9323,
            limb1: 0x173f168c8f32ec24dbf11642,
            limb2: 0xf93ef269ccf2160
        },
        r1a1: u288 {
            limb0: 0xdbe91380c83e099b92329f2a,
            limb1: 0xaa74894856cf4bf5d3f634a2,
            limb2: 0x52bc46e575c2bf4
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
            limb0: 0x4e50ddad9b68b285771c981b,
            limb1: 0x6e6e0e24775af2c792e7bcbf,
            limb2: 0x1be19ea3dccb3e0a
        },
        r0a1: u288 {
            limb0: 0x500a9f83581a4ba5cfcee0a0,
            limb1: 0x5b4a3910b633dcb0fad7f11d,
            limb2: 0xf5545d4e355ec47
        },
        r1a0: u288 {
            limb0: 0x35969f0c5287a731e19b47fa,
            limb1: 0x1c48b3f709f790c79ba3ebed,
            limb2: 0x28d8277b7954cd14
        },
        r1a1: u288 {
            limb0: 0x9b88d039443bb4fb6dc6607f,
            limb1: 0xbddf7049f4996e664d85acd5,
            limb2: 0x2e3a8ad353e518af
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
            limb0: 0x6cd830b06f82d20a9cc12e5a,
            limb1: 0x2894aef112892fe51686d0a0,
            limb2: 0x2407390508db89fc
        },
        r0a1: u288 {
            limb0: 0x7c7d74862b4d6ece6fb5aa66,
            limb1: 0x61696df1f0ad878ba610fad4,
            limb2: 0x125557e798553d98
        },
        r1a0: u288 {
            limb0: 0xc3a79acf64172d07e33a9825,
            limb1: 0xbfd60500c0be9dddbe563a15,
            limb2: 0x1df9d9a53b28102a
        },
        r1a1: u288 {
            limb0: 0xf26a44ee3aba4116e5201122,
            limb1: 0x3cf55076bd23978a3aac1f57,
            limb2: 0x29d04b85ad442508
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
            limb0: 0xff6bd771d47c040dbbb89f3d,
            limb1: 0x8334a858f2efb9f34f4e213b,
            limb2: 0xd994975fbcb3c46
        },
        r0a1: u288 {
            limb0: 0xd31deab13825db8d3be9932e,
            limb1: 0x478469fc67d40ee8514e2a0c,
            limb2: 0x1b8330d65cd15d1d
        },
        r1a0: u288 {
            limb0: 0x20526d57165690279b51adab,
            limb1: 0x7be783cf386fb202ed162920,
            limb2: 0x2fdf12108a0834af
        },
        r1a1: u288 {
            limb0: 0x65cd08826ec394e7331294cd,
            limb1: 0x89dc04bf6ccca217d1e7ef15,
            limb2: 0x1f660104a5265add
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3b8ccf29a2213b58c1e0244,
            limb1: 0xe5256c30f3aa37f916f052a1,
            limb2: 0x318b95669111c6
        },
        r0a1: u288 {
            limb0: 0x7d7f5214c2c04f910819c553,
            limb1: 0xa3caca830233bb4d8f93f9f1,
            limb2: 0x22f20bd392eb1b21
        },
        r1a0: u288 {
            limb0: 0xb42dd736daca517590cc04b3,
            limb1: 0x12f3ffb676c9c6fe361083c1,
            limb2: 0x94a06ff72bcc5fb
        },
        r1a1: u288 {
            limb0: 0xa844cc7b8ec560f04333865b,
            limb1: 0xe9f549d61cea11f1fc29845b,
            limb2: 0x2beea8f5c5675733
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
            limb0: 0x2edb0c4f21504f4301005ed1,
            limb1: 0x119375c7b5a2ef797fb62cb,
            limb2: 0x1ddbd0732429b456
        },
        r0a1: u288 {
            limb0: 0xba8a63b8f8633c2a911e435a,
            limb1: 0x6ee672405af5e9b8638888d3,
            limb2: 0x2eb5c6cd23b4ec2b
        },
        r1a0: u288 {
            limb0: 0x82a97f0f843345a9576ad353,
            limb1: 0xffef60c737e82b69ae3d311,
            limb2: 0x5fd6fc9a5f96028
        },
        r1a1: u288 {
            limb0: 0x9380c4090535c7839e5da608,
            limb1: 0x41f66e9d34c0950103713ee9,
            limb2: 0x25747748bac46a67
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
            limb0: 0xe34552afd790687689b3e538,
            limb1: 0x86db68647d6db60d0b028f53,
            limb2: 0x6dd6b2c517968d
        },
        r0a1: u288 {
            limb0: 0xc148e9b2a2ed60e51dc5b5f5,
            limb1: 0x5d0f967162cc863ba5e2a25c,
            limb2: 0x2c355eb4a8b9c94a
        },
        r1a0: u288 {
            limb0: 0xa472590d9eee7099ab4de0ba,
            limb1: 0xa212520b6c7331d0979e08d3,
            limb2: 0x2f268ce9c301d678
        },
        r1a1: u288 {
            limb0: 0x56f9dabe73fa85f3ff2518c6,
            limb1: 0xa10329564fccf5fe6e193f61,
            limb2: 0x25550bf57f3f7788
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
            limb0: 0x81402d7dd6b022966f1dcd5c,
            limb1: 0x3499660a1ea92dedbeb37ee0,
            limb2: 0x1ca1dfbf3f6623c4
        },
        r0a1: u288 {
            limb0: 0x57568fd0d394d7e672431941,
            limb1: 0xb27ef2596d23b28ffbf8684c,
            limb2: 0x163106d7a1dd7781
        },
        r1a0: u288 {
            limb0: 0x8efaafcc548dd8a19d2ec524,
            limb1: 0x3c573cdcb7130b6533ee649,
            limb2: 0x1595fe8196e2c677
        },
        r1a1: u288 {
            limb0: 0xa894c2a9404b172ebc1b9f08,
            limb1: 0x5a45cc086398d71a839479fd,
            limb2: 0x26b03883792e0bb7
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
            limb0: 0x681b07d77b22d70184f4a086,
            limb1: 0xf9061f06a00de0fd29f6e2c1,
            limb2: 0x2b3313c8a1d21671
        },
        r0a1: u288 {
            limb0: 0xdc51d00716500fe1608cc083,
            limb1: 0xa3fc478cba0754a2a1462199,
            limb2: 0x11ae2f2a8716fd7f
        },
        r1a0: u288 {
            limb0: 0x44de1f4d5a0490aa88d374e6,
            limb1: 0xa5b154acbd917c120fae3d5f,
            limb2: 0x247a60d3b7d821ad
        },
        r1a1: u288 {
            limb0: 0xff201b5283b276ddce36e372,
            limb1: 0x5ea80ae13d1dc9d9da158670,
            limb2: 0xfb6ddc9b9af8de9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xef4e0e34f536814aad0ef0e2,
            limb1: 0xcc378051be42cfe55f912449,
            limb2: 0x25870043e329b8c9
        },
        r0a1: u288 {
            limb0: 0xbdbf0e9a8ee727a0bae8cd4,
            limb1: 0x611c25acae5a2f22073e08b8,
            limb2: 0xf4f3fb620686f4e
        },
        r1a0: u288 {
            limb0: 0xd84c63427edebdc528e46dae,
            limb1: 0x4efd0e4df5d9455dc3d554c7,
            limb2: 0x13382eda95767c0
        },
        r1a1: u288 {
            limb0: 0xe5e49b0dc226b803362e9e1f,
            limb1: 0x3653d88869f4ef54ebbaf277,
            limb2: 0x28a3b5fb4fabf1d5
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
            limb0: 0xc88b91e9c96984c7b746cbff,
            limb1: 0xf4e97894aeb72b99b5928dd,
            limb2: 0x5f59ece5bd1acd8
        },
        r0a1: u288 {
            limb0: 0xc3679330d667fe5495c94f3,
            limb1: 0x48435d87de459fb535d8dab3,
            limb2: 0x1f0e0aa3be1c4dd5
        },
        r1a0: u288 {
            limb0: 0x1cbc7b1f0d8f10f4dedd405,
            limb1: 0x91682fd985e1e20e8e59bd7f,
            limb2: 0x2c52eeb7b043bdb4
        },
        r1a1: u288 {
            limb0: 0x35cf76f2ddd220a9ac10964f,
            limb1: 0x843cbdf1cee3193bf32130a5,
            limb2: 0x19b3fa2fe802cb80
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
            limb0: 0x5aa66601fc9a9dc7fc5525a8,
            limb1: 0xbe2530f8c687ed0fa3dbbcc4,
            limb2: 0x1ad681a9e53717a3
        },
        r0a1: u288 {
            limb0: 0xb78a9b69e327e6ae6a2abf57,
            limb1: 0x73091dc50c4a28b572db2466,
            limb2: 0x1c5055078dbd506c
        },
        r1a0: u288 {
            limb0: 0x97c4d57120cb191d0e2f6a62,
            limb1: 0x5f7c5b92643d770af94568d8,
            limb2: 0x12d81d2eeeab97ab
        },
        r1a1: u288 {
            limb0: 0xa78ab97499740ee74d9de49b,
            limb1: 0x4ec2a11c5e6f581ebb46306f,
            limb2: 0x2adafcbe8eacadb1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4c4e42e3f12147749329eb5,
            limb1: 0xf0289063e8528b0f44d04b7f,
            limb2: 0x66a220001d21322
        },
        r0a1: u288 {
            limb0: 0x32ee98b746615e0da1b208db,
            limb1: 0xe908b21c0af0ce47435b8f69,
            limb2: 0xd0e6632b65a79d3
        },
        r1a0: u288 {
            limb0: 0x173e39f617677ecb85759265,
            limb1: 0x515932e12d284839a77f203d,
            limb2: 0x1a4d4fe8c59b5830
        },
        r1a1: u288 {
            limb0: 0x45939f2433ae8a31de073820,
            limb1: 0xd1e2a76ff0dbc60ab5623d74,
            limb2: 0x16b04532ed7e3540
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
            limb0: 0xe6b22afe03e024ca3f90789a,
            limb1: 0x85c4b4e2f74f4b2c771ccaad,
            limb2: 0x29f1f07e24d9e7a1
        },
        r0a1: u288 {
            limb0: 0x4ae67edac249c3a22be40acf,
            limb1: 0x6d8cc81c02202ad63a005549,
            limb2: 0xd08124457011e4a
        },
        r1a0: u288 {
            limb0: 0xca9d68cb199ed7cc5c872112,
            limb1: 0x5a8d9ffc3235faa81fe863f4,
            limb2: 0x2c8022eb24d485d1
        },
        r1a1: u288 {
            limb0: 0xe4c1078b0beda02bb0ec76ad,
            limb1: 0xa83f51e1afc4400ed0ec347,
            limb2: 0x2cf0dec39e552849
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe8cbe54c5ed1e2a32395d4cb,
            limb1: 0x6be52bec1ea52371380af764,
            limb2: 0x1e35ec49b4a4529b
        },
        r0a1: u288 {
            limb0: 0x61871c10b3d243a4f9c24b7b,
            limb1: 0x3a72b4dc79eba3c21e2732c7,
            limb2: 0x2e603349b6408e2e
        },
        r1a0: u288 {
            limb0: 0xe917fa11dd95f46678e69b41,
            limb1: 0xbea966c90edaf434c88462ba,
            limb2: 0x88d3e0a882d8b05
        },
        r1a1: u288 {
            limb0: 0xf566545c0874e372943d2b96,
            limb1: 0xb7a7abcd55c01a01d8b46e5e,
            limb2: 0x1c4d3f33f26fbf55
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
            limb0: 0x27eae793c1968fa8bd8a8dd3,
            limb1: 0x7d45dd59b8780a769c0e2b0c,
            limb2: 0x170737fe4583675a
        },
        r0a1: u288 {
            limb0: 0xd8e77c5104bac19df3d0bbd1,
            limb1: 0xff92069f38ca414c6ac32db9,
            limb2: 0x1edb14b56d03731e
        },
        r1a0: u288 {
            limb0: 0x36f640d45717beb628a52e41,
            limb1: 0x8506a09f6779f71dc5366c0f,
            limb2: 0x1e8e4d587112c08
        },
        r1a1: u288 {
            limb0: 0xb2f3e6256d09a0eab5511ad2,
            limb1: 0x279e92dd267702ff68bbd900,
            limb2: 0x258d4db8bbda9046
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
            limb0: 0xb779d31f22c69e53ace2c800,
            limb1: 0xb45e0fa7e13b7c9979c2e7ae,
            limb2: 0xc45ebe8d8c156fc
        },
        r0a1: u288 {
            limb0: 0x328a746f7f4450117b34657e,
            limb1: 0xa46b46eeebe947025ef1ec5d,
            limb2: 0x198dfea75f0d48c4
        },
        r1a0: u288 {
            limb0: 0x5324d6021f5b747d13bf5595,
            limb1: 0xdf3a5a9910e48e1f3505e040,
            limb2: 0x150a620a3c8d44ee
        },
        r1a1: u288 {
            limb0: 0xab3d0fa7f6a429528ac21971,
            limb1: 0x53bb6dcc796ad23cc7757d5e,
            limb2: 0x1adfb464eaf6a3f3
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
            limb0: 0x8a61b3cc7d6d9fd30db71dba,
            limb1: 0x9ffea7933483da89bc23d054,
            limb2: 0x1f30c6c853bf6582
        },
        r0a1: u288 {
            limb0: 0xa197f482529f46c01a7bb551,
            limb1: 0xab5bd53f2d90bdf3a1de58b0,
            limb2: 0xcc4ef4776284a54
        },
        r1a0: u288 {
            limb0: 0x68b1e068bb7650e118d1a752,
            limb1: 0xd65d26596e753e31c0d583d,
            limb2: 0x274a5d7bc86d6a09
        },
        r1a1: u288 {
            limb0: 0x4c75658ce94d4a8a8a327c6f,
            limb1: 0xaddbd623b55e895b0148fce1,
            limb2: 0x1a17305b4063b3c8
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
            limb0: 0xcd125819352e995897986b2b,
            limb1: 0xac6094941d1205390ae8c1d2,
            limb2: 0x25dbcc7ee245f242
        },
        r0a1: u288 {
            limb0: 0x52eaf61985eee4d1fffb6701,
            limb1: 0x40cb2a20512c634d6e9985ea,
            limb2: 0x1118c209f400e9ae
        },
        r1a0: u288 {
            limb0: 0xe18e5f389511c157460d2512,
            limb1: 0x600422eff811fc63b61cef48,
            limb2: 0x222582cc34b396de
        },
        r1a1: u288 {
            limb0: 0xe4c62e65b8d7397b5c6dc33c,
            limb1: 0xbe8137bda2cae14677432e1,
            limb2: 0x2b99084bfd833c2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbe14dd3285f1be6f9887f922,
            limb1: 0x19b9d0e8aa8c2ad7aa4616e5,
            limb2: 0x25ff80c26b6d61ec
        },
        r0a1: u288 {
            limb0: 0x94de1cf5ef66e8720fbba753,
            limb1: 0x6dcf15e634e28a6445d25e96,
            limb2: 0x26407bf40555b67
        },
        r1a0: u288 {
            limb0: 0x77f8a3bc43cb7e980bcbe6e5,
            limb1: 0x666eb2b9c842f0963d9a70cd,
            limb2: 0x19f42630e22d7866
        },
        r1a1: u288 {
            limb0: 0xa5dc7226ee6780b2b217f9c2,
            limb1: 0x4a68a30be5edf260e0d99479,
            limb2: 0xd15b332da8ee5c4
        }
    },
];

