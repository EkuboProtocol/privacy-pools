use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0x233c423bd9952a87a0e34a04,
                limb1: 0xda9ea25d9b132a5389728c9c,
                limb2: 0x29e60176fa67b1ab
            },
            w1: u288 {
                limb0: 0xda66f00f855748fe7fa12d3d,
                limb1: 0xe197902e18d4cc4977cd920d,
                limb2: 0x1725e687475802ea
            },
            w2: u288 {
                limb0: 0xf2ce7e7ea661b0c53802dc58,
                limb1: 0xc9d17651e56aeee2d38104aa,
                limb2: 0x19787464e918d91f
            },
            w3: u288 {
                limb0: 0x9b5768307017f5b716dc9c6e,
                limb1: 0xc9fab9c1713f075830e07e36,
                limb2: 0x110263a57e96c674
            },
            w4: u288 {
                limb0: 0x20b942ddfed80537582134c7,
                limb1: 0x740f0ed5be080ef791784453,
                limb2: 0x2a80c9011630fd3b
            },
            w5: u288 {
                limb0: 0xf82345fc6d38d4ed8eab9e66,
                limb1: 0xeb509f4e6d7a1162fb6adc,
                limb2: 0x2e1689ae2232c014
            },
            w6: u288 {
                limb0: 0x2275ccc599929f1c26ded377,
                limb1: 0x869da62237df5a44e21abeb1,
                limb2: 0x67e3928136d00c1
            },
            w7: u288 {
                limb0: 0x58ee20ae6c9ef1e7bef6e912,
                limb1: 0x447eebf17337611b572530f5,
                limb2: 0x2d391276fe880bcc
            },
            w8: u288 {
                limb0: 0xb5bd0b291589d80e3249f11,
                limb1: 0x9d7449f6f32dd2ad36df1f55,
                limb2: 0x2678786d3f3603d8
            },
            w9: u288 {
                limb0: 0x293409bfd412817326d56a0b,
                limb1: 0xc425d31463bb4ee8b4085dd9,
                limb2: 0x1429eefe5284cce9
            },
            w10: u288 {
                limb0: 0x590191adb22cc5808f1b1db9,
                limb1: 0xc4d2bb66ec068d33cc8d6e3c,
                limb2: 0x14853c9ab297c30c
            },
            w11: u288 {
                limb0: 0x3ab65abb3706d672d8aee541,
                limb1: 0x2c32e1cd0b98c7aa0052bc3e,
                limb2: 0x2482cd1a230a959c
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
                limb0: 0xbe1974c09464159bb2e05308,
                limb1: 0xa3c9ad0e89d7155b1d6e972c,
                limb2: 0x101df8a47b1d4700,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0xc4f6f95fc6b6ae003bfdf584,
                limb1: 0xba7131bcaf9fe175e5f65ca7,
                limb2: 0x240efc005ea70a7d,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xdcf9a69a1a27429d6641b367,
                limb1: 0x308083f38bfa42f0542e8ad9,
                limb2: 0x1f7e9e2d9feee04,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0xc05b3dad32524ed67a002c72,
                limb1: 0x7c1aaf2685e3cd84b6f21f21,
                limb2: 0x4c5133786f8954d,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 8] = [
    G1Point {
        x: u384 {
            limb0: 0x74bb1f50e56327d04fde8a76,
            limb1: 0xb70bb2d8657bb2dfeec26e23,
            limb2: 0x98f4d74d831236c,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x3099a0ddf987c54351f5a0ec,
            limb1: 0x76c15973a6e4e283d7c68119,
            limb2: 0x8001fb56d68a3a,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x51c0c21abe95a0c76dc18eaf,
            limb1: 0x1f768b4e3c1f86d99750d3ab,
            limb2: 0x26fa323790137e67,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x59dee9355b9a2bf26d73c252,
            limb1: 0x6bbe5f1b9f3e88eb5451fbbc,
            limb2: 0x2e94b34974dea1f7,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x1e6d04035c715964508008ee,
            limb1: 0x82842486d297b9f0f3b8de98,
            limb2: 0x1137ef323321fa0f,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x3d193163e407ad0630ba6dbe,
            limb1: 0xf8bbec909ae76278eddc70ee,
            limb2: 0x2198a00263e3acdb,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x5635208e8d7e52c67b3e5ba5,
            limb1: 0x13cf9847acbc6c2d970678ff,
            limb2: 0x260d18f7e8a6000b,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x156653a9e2b4b22582b76912,
            limb1: 0xdbf8620ca418207e21d7f6fe,
            limb2: 0x205900f0d6ff46ca,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x3bac85004b9160d02986b5c5,
            limb1: 0x13f490f92e79017641e2358f,
            limb2: 0x14ffeb42b8bc2abc,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xcc399a1d8a3522153c8060b8,
            limb1: 0x2e69dc21f146e98abb6271a7,
            limb2: 0x3ead899a4722679,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x341875403502d4aa045add4e,
            limb1: 0xa61e0570d8848e81322c1074,
            limb2: 0x1fc56d9aa5b50a65,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xfc105b9ee6f4f0d13060626,
            limb1: 0xff4339a46c7d62bf75f9ed64,
            limb2: 0x2c0f945c3516afeb,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x62b09627b5fc44e4fb00acda,
            limb1: 0xd9149b61d5d90d6c35d0b3b3,
            limb2: 0x1e90bec85aafd7bf,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xbe9a6b4c635cddd7bac3f798,
            limb1: 0x60d07022826cacc7dd7eaec4,
            limb2: 0x1bc40ce972e46c7d,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xc94dc88741f537e3ee7279ab,
            limb1: 0xcc88ddbe555c5e38e945c07f,
            limb2: 0x11ea6658dd153daa,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x185a3808fb0093d63fdae557,
            limb1: 0x1375621fdbbc32f43d5e4171,
            limb2: 0x17f79871936982e,
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
            limb0: 0xc3efe083cb313bd6f5dba76f,
            limb1: 0x1582e1a50c15f892b295af72,
            limb2: 0x2edc9133fd589e90
        },
        r0a1: u288 {
            limb0: 0xbfe65fab257e8444dc6441f,
            limb1: 0x58d89ddf17637a317398a0ef,
            limb2: 0x131707d8702964b3
        },
        r1a0: u288 {
            limb0: 0xdc69abe45001bfad05eae38b,
            limb1: 0xdf91e48e2e86e813308e3321,
            limb2: 0x220b8e683b269976
        },
        r1a1: u288 {
            limb0: 0xacf7647c8e20810bb1100c4d,
            limb1: 0xbe610e01125bfd950d4cecec,
            limb2: 0xa276d061664ad1b
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
            limb0: 0xa481ea0970ef503fe2a155d8,
            limb1: 0xa2cd6411756b5fcae4ebbb1e,
            limb2: 0x187bd3ee3d90199
        },
        r0a1: u288 {
            limb0: 0x5c73649289c8a3d28ab6b928,
            limb1: 0x5f77a7d76a1dde2c23e8c9a2,
            limb2: 0x1d4d469a71083b76
        },
        r1a0: u288 {
            limb0: 0x8c081ea8ec1ecc69d29219bc,
            limb1: 0xd8be612852fa704a66f3376f,
            limb2: 0xe58c00aa60b06b2
        },
        r1a1: u288 {
            limb0: 0xbb7a6610ae000b0b276cf0fa,
            limb1: 0xf9ef37b56f255ac88a347da4,
            limb2: 0x263ce16ccaccf30d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1a922dafa410c7dda72b0886,
            limb1: 0xf04a8bc298874313a57ee228,
            limb2: 0x10a3857f0e8ec40b
        },
        r0a1: u288 {
            limb0: 0x3c8b49523b40a8539e5aa8be,
            limb1: 0x86336a2c3c85ee10cea4f82,
            limb2: 0xcf8a76e3c30097b
        },
        r1a0: u288 {
            limb0: 0x49dd52d1412d626fc99ce593,
            limb1: 0xad09946512ac53d94293b8c1,
            limb2: 0x2910252489c77516
        },
        r1a1: u288 {
            limb0: 0xbf70579bf8ec0b0a5ac43d27,
            limb1: 0xf85a73b23d72629a7d8944b4,
            limb2: 0x1500cfa3e5314936
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
            limb0: 0xdf52d010ac8e8dee872c77ed,
            limb1: 0x6201ea049074c19356ad0f8,
            limb2: 0x5868b350a14740f
        },
        r0a1: u288 {
            limb0: 0x16651854abaa64fd0d93cb87,
            limb1: 0x3caef2e5f12f5f368a872941,
            limb2: 0x127ba8fc9863115
        },
        r1a0: u288 {
            limb0: 0x751c2631d4aca51d4d643c24,
            limb1: 0x8ca9cd2a613127fb81ded92c,
            limb2: 0x11753b309dc8e686
        },
        r1a1: u288 {
            limb0: 0xcf101477d931ba3d76f61595,
            limb1: 0xf12bde75774c6748465c128c,
            limb2: 0x1b9499decd384e29
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
            limb0: 0xc34ebaeae1c2c76e9f28f7db,
            limb1: 0x603e4880f7baa579b904a79b,
            limb2: 0x1c13a461b4fbb165
        },
        r0a1: u288 {
            limb0: 0x836725b3171b02d41429e7ab,
            limb1: 0x7eb6ee984a367752c59b7923,
            limb2: 0x14516d25c38eefa5
        },
        r1a0: u288 {
            limb0: 0x2bb632a99ad4f4bc6f6a0080,
            limb1: 0x513f5fc6ccde08cb179534b5,
            limb2: 0x26bf6131cbdfcddd
        },
        r1a1: u288 {
            limb0: 0x1691b98fee4a7abb00539f33,
            limb1: 0x6886bdd841edc97be5b9b51,
            limb2: 0x163e04845e020a94
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x371583b54961e589fd7b672,
            limb1: 0x56f7e28fe4aaf11408b6094c,
            limb2: 0x1b76c5ac3014c4bf
        },
        r0a1: u288 {
            limb0: 0x3e78de01ac139fda1bbf3827,
            limb1: 0x52960854c725a59fbfa025c9,
            limb2: 0x1226de4d952b21
        },
        r1a0: u288 {
            limb0: 0xc7f64564fc5ff10d05542c9e,
            limb1: 0xf2275a438cdad79b5dc45011,
            limb2: 0x2c57a67b70621384
        },
        r1a1: u288 {
            limb0: 0x29c29da92acd8608bed2e0c6,
            limb1: 0x585a2ce10a1862b9522e151f,
            limb2: 0x229472a3bf8aecd4
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
            limb0: 0x2c372d13d9b5965e83df6e2b,
            limb1: 0xc49ad203d03b0196061e2607,
            limb2: 0x94965399275955
        },
        r0a1: u288 {
            limb0: 0x4d7dad522d39716c81c14e04,
            limb1: 0xc6c4586256c7ae960ba1b2ac,
            limb2: 0x2539eb6a4a7e79b7
        },
        r1a0: u288 {
            limb0: 0x815e36f5c052c938ca44ae54,
            limb1: 0x25d274a4f3438f39d1ba347a,
            limb2: 0x2141d7c657a8ffa8
        },
        r1a1: u288 {
            limb0: 0x3ce9a5a8d4f16c8175a1a163,
            limb1: 0xafe292abf2f7598cf2ad7164,
            limb2: 0x2d6418ce8fa48303
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
            limb0: 0x9d220701b40da2d0edfd15ed,
            limb1: 0x75708d47166cdec9a7ee916e,
            limb2: 0x1e42a14bfd012d4c
        },
        r0a1: u288 {
            limb0: 0x959587f964298f67dc425aa2,
            limb1: 0x74ce2596263f0509ce720735,
            limb2: 0x159d2f1ebb0587b7
        },
        r1a0: u288 {
            limb0: 0xcba8ea9071f5da91fd9c989d,
            limb1: 0xf9a19ca87ff1448f03ba439f,
            limb2: 0x2c843d1a888ecdcf
        },
        r1a1: u288 {
            limb0: 0xb8363891f802890efc4e5b20,
            limb1: 0x21179d094c32469ab5cca27d,
            limb2: 0x281d5a486007cad3
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
            limb0: 0x9054f7ca4c69ee33e45bf620,
            limb1: 0x838afab72dcd7de7ac157ebb,
            limb2: 0x20ffab4b9a22602d
        },
        r0a1: u288 {
            limb0: 0x14e5a2930f09b68946ac0c79,
            limb1: 0xf104d18769ea6de5ca1fc00b,
            limb2: 0xb9e4b3ec6f5a371
        },
        r1a0: u288 {
            limb0: 0x46ef058f23a84efeb9c67886,
            limb1: 0x55b22af04612396c76f9c15f,
            limb2: 0xd3088bb5cd149d2
        },
        r1a1: u288 {
            limb0: 0x498aed0d13abc3e8f367242f,
            limb1: 0x7c44dcc4fcacf986d8c4cce,
            limb2: 0x2d33a104a38e8f40
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
            limb0: 0xef847321788e7f5d7d9b10a7,
            limb1: 0x7d7cb55277bebacd4aec3f41,
            limb2: 0x504af4b70f187e3
        },
        r0a1: u288 {
            limb0: 0x82bcb93520d095d960837db,
            limb1: 0x569ebf77798b111cc72d3ff8,
            limb2: 0x1903f7279ecacc7e
        },
        r1a0: u288 {
            limb0: 0x5010732e0ad59d792c02bfd3,
            limb1: 0x6833d198ae595dcf4145660e,
            limb2: 0x13c0b08d4713b28d
        },
        r1a1: u288 {
            limb0: 0x372daf2287f16872d93bed38,
            limb1: 0x499b76004f0b17289462364,
            limb2: 0x3024ef306467712e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfa29f1d5e5808f61d138e933,
            limb1: 0x792e888356f98927d169db6e,
            limb2: 0x215f32110b172619
        },
        r0a1: u288 {
            limb0: 0x2209b353f3e91fd0460ef844,
            limb1: 0x64cc9b5ffb7cd99d3b08f21d,
            limb2: 0x6e273f1a376d8ba
        },
        r1a0: u288 {
            limb0: 0x3a45e28de72556998b51775c,
            limb1: 0x57a580eda9a113dff297386b,
            limb2: 0x5b8d4f6b97ae4f4
        },
        r1a1: u288 {
            limb0: 0xcef6d25af446d1b9d4b7b052,
            limb1: 0x9d6db49a10742d4ca17d3c06,
            limb2: 0x2ff1f34b781d33d8
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
            limb0: 0xbfefebbf1e5759ded660f711,
            limb1: 0x2565ccd53f7378a8178509f1,
            limb2: 0x272598ccd0ae4a87
        },
        r0a1: u288 {
            limb0: 0xab2c4d0d1baab411acfc7fd8,
            limb1: 0x1009bf9ae134646059365a3a,
            limb2: 0x21f88ba07b2d769
        },
        r1a0: u288 {
            limb0: 0x3ea0902a853138c372bd03b7,
            limb1: 0xe00a6f7a6d9e48b8e41173b0,
            limb2: 0x1c5e20cd5411dfe
        },
        r1a1: u288 {
            limb0: 0x3a3cb81dfd175a2d5c9649bb,
            limb1: 0xcf3b01098776c77f7cb2e2cf,
            limb2: 0x16dbe6804e16f559
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
            limb0: 0xa1972891b069a6ebbc7c9115,
            limb1: 0x4ba9139b7dc3ba777646b4aa,
            limb2: 0x2975e5deb1404b1a
        },
        r0a1: u288 {
            limb0: 0xe4c73e8371d72e13d2966ab2,
            limb1: 0x302424ea2805a483e9a7f811,
            limb2: 0xf94bee10aeae9a6
        },
        r1a0: u288 {
            limb0: 0x73709b96cf3539e863aef830,
            limb1: 0x5f242ae520b74be30201efc8,
            limb2: 0x1026ec5db2da98eb
        },
        r1a1: u288 {
            limb0: 0xf5493880404adff93a42852b,
            limb1: 0x44ec77465ef1748750df0d2e,
            limb2: 0x176df7bc9020c79e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ee16d2cf8212feedb45d2bb,
            limb1: 0x696fcfa45cc35bb390f8ec90,
            limb2: 0x12bdd5679796c583
        },
        r0a1: u288 {
            limb0: 0xaa7841d93abb6240e01ffcce,
            limb1: 0xdd83981edd5b4f2528c718aa,
            limb2: 0x4ec87dba1a2ba02
        },
        r1a0: u288 {
            limb0: 0xbcbd002cbd3249f038cbdc8b,
            limb1: 0x1265986bd04a5a3d42eb2da7,
            limb2: 0xaa69421dfe25a61
        },
        r1a1: u288 {
            limb0: 0x7abe35f35f50dffa2e89efc7,
            limb1: 0xb37ceef0efe87226e0d33c0a,
            limb2: 0x1168b999010cc19d
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
            limb0: 0x7bed9b3f9122689a39dc9963,
            limb1: 0x5c1de582bd4687139698905e,
            limb2: 0x1adc308c56a99b29
        },
        r0a1: u288 {
            limb0: 0xa3974357f0c4aa438fb1ce90,
            limb1: 0xcac0946408169e125a165d9a,
            limb2: 0xf5fa4a22da1ddf
        },
        r1a0: u288 {
            limb0: 0x915ab694258f733b990a46c,
            limb1: 0xb7a945d1e601987bf5b28cfa,
            limb2: 0x2848f15039a4fc7d
        },
        r1a1: u288 {
            limb0: 0x716b90231eea2956be03f591,
            limb1: 0xa5fb558614e41ee8847fbf5,
            limb2: 0x1214ec7e5fbf4529
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
            limb0: 0x2d4fcf718cc780fde5401f70,
            limb1: 0x101aade334d86908cade84dc,
            limb2: 0x13cd2b4ba0a7d2d6
        },
        r0a1: u288 {
            limb0: 0xfa029a420d5235e539436297,
            limb1: 0xc8a4eabf23fc3afe558c8947,
            limb2: 0xa1cde910e7d8e31
        },
        r1a0: u288 {
            limb0: 0xc705fddd84a12407ee1429f0,
            limb1: 0xf48f9dff585ed434d33d1125,
            limb2: 0x23986141b66f88fc
        },
        r1a1: u288 {
            limb0: 0x9ccbf1958903854a6d7e5adc,
            limb1: 0x22eef0121f877fde3466ad84,
            limb2: 0xd4bf38549ede8d
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
            limb0: 0xdebcbd03a4c9469eaa575c14,
            limb1: 0xc5bc5b6a5af44ffcfb07692f,
            limb2: 0x188299f5d506512d
        },
        r0a1: u288 {
            limb0: 0x6809b8fdd87345bb3674c4e3,
            limb1: 0x3bcbb591bad9eea328e9a305,
            limb2: 0x2a8368fc243fb37d
        },
        r1a0: u288 {
            limb0: 0xd8da9f644e42d0480e3331f6,
            limb1: 0x7140df1073ed5916aeaa5f2f,
            limb2: 0x1dd5028c53c9809d
        },
        r1a1: u288 {
            limb0: 0x6c94a8de91c882e433b1be0f,
            limb1: 0xd08729a30a55e80e6a0ea330,
            limb2: 0x2917a1bf8084ec9b
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
            limb0: 0xcab91cf252033eb0f8fd24aa,
            limb1: 0xd2223a7ca38d3647074d081,
            limb2: 0x106c10c3a9820b73
        },
        r0a1: u288 {
            limb0: 0x7bd3a217342c1a14d43f20a6,
            limb1: 0xaee01d7ad5c9ce752a412986,
            limb2: 0x2b54afb4a72bc9c
        },
        r1a0: u288 {
            limb0: 0xdb9d26d487aadcf46f917024,
            limb1: 0xce2250c0b42e79615f2c813b,
            limb2: 0x1256fc5b1c1eb6a6
        },
        r1a1: u288 {
            limb0: 0x6531f576364c63c44e295cb9,
            limb1: 0xa7351696344cb21de6974110,
            limb2: 0x299eb383a6f5bc9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x477604a83635aacc0d7b4fba,
            limb1: 0x48d2f94affc55534466d787f,
            limb2: 0x20492f227d5ebf35
        },
        r0a1: u288 {
            limb0: 0x395cbba512fa59b5e7a8e25b,
            limb1: 0x4b5b6f591de8fee5c91b5ac3,
            limb2: 0xf9f0ccef278545d
        },
        r1a0: u288 {
            limb0: 0xc0a5864c0384d7774b4a21f0,
            limb1: 0x44c6adee515daabe5bfda445,
            limb2: 0x2550b75710ab1dbf
        },
        r1a1: u288 {
            limb0: 0x9d789baaf4f1c3b432c5486c,
            limb1: 0x2602bd61106d3a902adfa0fe,
            limb2: 0x100d9ca3e7f94999
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
            limb0: 0x39fe0a3aeca850c80e6fbda5,
            limb1: 0x354df08dfd0c49e4467e047d,
            limb2: 0x1a00edb65737865f
        },
        r0a1: u288 {
            limb0: 0xfd40e7c37372fb9353fa4653,
            limb1: 0x9b781c61c82cc01ee3f9f4d4,
            limb2: 0x149dd0b28c252fa
        },
        r1a0: u288 {
            limb0: 0xc70c80c3b0229fc1fa6a1b43,
            limb1: 0xc7b2fb4f9ff92bb0de2404f7,
            limb2: 0x2283efa61f8d4857
        },
        r1a1: u288 {
            limb0: 0xa24a1faca19435ebee700c5c,
            limb1: 0xe7fcc7202fae2e8b61ce3dea,
            limb2: 0x2592a8f27d576b24
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
            limb0: 0x3a449c39cc2bd69c07e60d43,
            limb1: 0x42c676ff36950101ec3035e6,
            limb2: 0x43c54082a8b82b3
        },
        r0a1: u288 {
            limb0: 0x565b9a1186807f3aacd40c45,
            limb1: 0x385a9b301b0803ea2969618,
            limb2: 0x19f2d38987fb86ed
        },
        r1a0: u288 {
            limb0: 0xc155ebea4bf106e5f363d117,
            limb1: 0x29c3b260ad2d18a754620628,
            limb2: 0x1fb9d4cc04254116
        },
        r1a1: u288 {
            limb0: 0x8c285c6cfcd83d00da9b9262,
            limb1: 0x3565f29dca22edb09c420f9c,
            limb2: 0x173c877b789e6c64
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
            limb0: 0x293405bcfad081657da40190,
            limb1: 0x3daca7080dca91ce37f6da55,
            limb2: 0x518e905f635cafc
        },
        r0a1: u288 {
            limb0: 0x24424b363d979d31afecf4df,
            limb1: 0xa0b504dc36908c7b176b25bd,
            limb2: 0x22c4267514f7645
        },
        r1a0: u288 {
            limb0: 0xcf81b998a54f426e43282733,
            limb1: 0xdedcbcf610f875d3f78ec517,
            limb2: 0xef6dadbde5da4af
        },
        r1a1: u288 {
            limb0: 0xc596516523e0b5d2d58121ea,
            limb1: 0x5c4de10be6376550a32dd7e,
            limb2: 0x2570dbaa86e81d94
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcd869c011bd7933dd30f89d8,
            limb1: 0xe714ff01c6bef29082a3dfe2,
            limb2: 0x5d608e939e961f7
        },
        r0a1: u288 {
            limb0: 0xfde7e8e202727c6dda615eec,
            limb1: 0xb7d87b14fa14a4a81665b157,
            limb2: 0x291dada40b2102a7
        },
        r1a0: u288 {
            limb0: 0x8f43925d30c969cec3b3ff4e,
            limb1: 0x80f1dabd13c6d221b3019382,
            limb2: 0x112289e839b559da
        },
        r1a1: u288 {
            limb0: 0xd0226ceb84ad059dc179d2b9,
            limb1: 0xa7c0fcf837ccdd07dfeedbe0,
            limb2: 0x1c0d7c8aeed24a9f
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
            limb0: 0x46b29cf4f56345500fdbd7df,
            limb1: 0xdc31e871804efbd33d1cdddb,
            limb2: 0xdea729fbe54069a
        },
        r0a1: u288 {
            limb0: 0x620d2c8fc847f15313a13635,
            limb1: 0xed8692229633b49f1af9c5c4,
            limb2: 0xeec72d081b966f1
        },
        r1a0: u288 {
            limb0: 0x423e04c7034545c7bf9d2837,
            limb1: 0xa6ccbeafc964ca6b7b926075,
            limb2: 0xd598f2e204b7b71
        },
        r1a1: u288 {
            limb0: 0x833509e14ca0eb5cff0b0bf1,
            limb1: 0x6d033d2f932e0fcbc1ddd4f7,
            limb2: 0x380b3d3c03ec0d7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6a06894f3611316778aac5f1,
            limb1: 0x2f34aff1ecf67bf076759a22,
            limb2: 0x5a02fa67753dcdc
        },
        r0a1: u288 {
            limb0: 0x5528962d885bc18199c96b8c,
            limb1: 0x6b8e059a0651d7494f5d96d4,
            limb2: 0xc9fc7e9023a7a65
        },
        r1a0: u288 {
            limb0: 0x4dfaa45f08757a19bbee2d89,
            limb1: 0x708f07bfcd16883ac050c0e4,
            limb2: 0x79ed012c11adc28
        },
        r1a1: u288 {
            limb0: 0x867b316113c7293a9722bb85,
            limb1: 0xe9fd193b56f7e459417ff74e,
            limb2: 0xdfb2c6c4f95ac1b
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
            limb0: 0x34707e81477764f3cc225d87,
            limb1: 0xc081015c636e2a1a760aebcc,
            limb2: 0x9f5b78f1ea1d5b9
        },
        r0a1: u288 {
            limb0: 0xcee3e1917abc513e4af7eab5,
            limb1: 0x1cb7e1424d9a4a1e03fdcd9a,
            limb2: 0x23bf2c1e49311e9b
        },
        r1a0: u288 {
            limb0: 0xc222ffd48be708755ad4c73c,
            limb1: 0xf93b06f7d1575c6ac14e7889,
            limb2: 0x293417435dbc0d55
        },
        r1a1: u288 {
            limb0: 0xd3fe2a97b312097cd3e5bc9f,
            limb1: 0xa80a1fb2c5505f4467c704ad,
            limb2: 0xc0df53ae2141116
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
            limb0: 0x258ab6e8e1e356f9c0e740ce,
            limb1: 0x35d87a4ef24b46fabba125a2,
            limb2: 0x16631bf818f8fea1
        },
        r0a1: u288 {
            limb0: 0xcbc2ebe0f29f55e2d6360739,
            limb1: 0xeab96520c360e9f12d6b58e3,
            limb2: 0x2b32f56850c9018
        },
        r1a0: u288 {
            limb0: 0x3e895f52b22db9a89afe51ca,
            limb1: 0xd239db0aefe271888afcc22c,
            limb2: 0x6ef9dac80aad9bc
        },
        r1a1: u288 {
            limb0: 0x2f5ebb6c515288291f6c6a56,
            limb1: 0x1176ddb91ddae2c7426db9d9,
            limb2: 0x6f9ce3e7b082d09
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
            limb0: 0x7a1191a59e082c582ff9afa4,
            limb1: 0xa052aae94aaf5d12e7d4be18,
            limb2: 0x8239e412d4b7efd
        },
        r0a1: u288 {
            limb0: 0x6cae85f0e220237de3da4650,
            limb1: 0x792211783984f7e954830370,
            limb2: 0x27348208f6672833
        },
        r1a0: u288 {
            limb0: 0x635675440dfe73879708799a,
            limb1: 0x94728be60e293bc703c014db,
            limb2: 0x23b26f59461b7fb5
        },
        r1a1: u288 {
            limb0: 0x44ef0887590c3553c767cda7,
            limb1: 0x2e8be3c8ef97c1cc6def3d03,
            limb2: 0x173035c53a567076
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x590ca8d5d557509eecbb9e7a,
            limb1: 0x6645df58ba5699426387e40f,
            limb2: 0x792695bc8ed8c83
        },
        r0a1: u288 {
            limb0: 0xb894c5fc82d84ef359b8e699,
            limb1: 0x7d932d22e05c70326a05072,
            limb2: 0x24689d862d4068d8
        },
        r1a0: u288 {
            limb0: 0xf061066d9c9a0a917c251fdd,
            limb1: 0x50c7feef263a3a9e33ad5734,
            limb2: 0x230e5f66e75fc4f2
        },
        r1a1: u288 {
            limb0: 0xaf8fb6f22e8dfcfbe7062627,
            limb1: 0xadff3e66a7ccca0612580225,
            limb2: 0x1b671caba777028e
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
            limb0: 0x354ccaab50fc25a9e5ce1c79,
            limb1: 0x4337642d6120dcb563c56ca4,
            limb2: 0xb65314423e66499
        },
        r0a1: u288 {
            limb0: 0xc001f9b30e5e0382906c76dc,
            limb1: 0xa7e92fd8cdc500d4eb7a6f15,
            limb2: 0x70b5c2391e724c9
        },
        r1a0: u288 {
            limb0: 0x7d3fbc5e49b8ebdd240690e1,
            limb1: 0x2943dc233f40cb8d09b0d3,
            limb2: 0x14929c0813876264
        },
        r1a1: u288 {
            limb0: 0x71bb6d5f7d4e453a97ae53cb,
            limb1: 0x4477add88ba223cec9592b30,
            limb2: 0x12c57c97aea28b5b
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
            limb0: 0xcafb5a2e003e4c14f5e0bef6,
            limb1: 0xf099491cd8a6b0ea3ff4d000,
            limb2: 0x186e7d2fdcfb2406
        },
        r0a1: u288 {
            limb0: 0x913573ad6038211187cc7878,
            limb1: 0xc50242b1063420912c9f9172,
            limb2: 0x1d4714b36b0a01ac
        },
        r1a0: u288 {
            limb0: 0x6afe991d5e4dd0b19ae610ce,
            limb1: 0xeabd81aedcf4bfe503be9f20,
            limb2: 0x1cccfa90781531ae
        },
        r1a1: u288 {
            limb0: 0xad4320f9f6304955e171a2d,
            limb1: 0xb64aeb67bdd56fe965fb4768,
            limb2: 0x18139271f24b0f61
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
            limb0: 0x736f71d5ce1dd1e05504aaa2,
            limb1: 0x4a9a9ad28783165091bd49f6,
            limb2: 0x1cc4fc4a52d2db60
        },
        r0a1: u288 {
            limb0: 0x9a87829d5f5833b9beb7392f,
            limb1: 0x52da93c390ad4612d9588310,
            limb2: 0x156c3b06978eaa29
        },
        r1a0: u288 {
            limb0: 0x312881ff125253f93af5a3a9,
            limb1: 0x5afa2a4d740b5cf9f96f1679,
            limb2: 0x17b208993f89eab7
        },
        r1a1: u288 {
            limb0: 0xfb63ec405f0879d404d64430,
            limb1: 0x5b828e62cf4d3acc1dc1e20,
            limb2: 0x2ffb65514c0f779d
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
            limb0: 0xa67c61c9f047eedb1bea40c1,
            limb1: 0x28df700802eb2aad5c7e8ed7,
            limb2: 0xab55d87e130963c
        },
        r0a1: u288 {
            limb0: 0x248836e0a06315f39ad76b0a,
            limb1: 0xd12e7ffb047cd40d03eaa374,
            limb2: 0x1632add58025b196
        },
        r1a0: u288 {
            limb0: 0x224c92acb81077b0b1f1e1f0,
            limb1: 0xd18b02d4c009239105a4b67a,
            limb2: 0x2486c3d46551c46
        },
        r1a1: u288 {
            limb0: 0x5354287009de02cb95cab049,
            limb1: 0x97619ac93fe469c0323aa0ac,
            limb2: 0xd61b50f4f181adc
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
            limb0: 0x65f379bbf12520929d85edf2,
            limb1: 0x33f6b35161b1b6a1aa55b819,
            limb2: 0xadd0b39512d56be
        },
        r0a1: u288 {
            limb0: 0x1f241d56d9736f73c620a2b3,
            limb1: 0x81832f5c94e954c5f3689d11,
            limb2: 0x3b3faaaf301f3d
        },
        r1a0: u288 {
            limb0: 0xe542803c24ba45466f04b51f,
            limb1: 0x4978cbecfc6bd0c97ea8fa62,
            limb2: 0xbeff1fb3d0986be
        },
        r1a1: u288 {
            limb0: 0xce237522fa939e5d01a5391e,
            limb1: 0x2d83b1d17b52692cac89f6eb,
            limb2: 0x2439d7cdd61b1dd9
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
            limb0: 0x8fe3b1a789b00789e2e11ae4,
            limb1: 0x4d0e36f60b5e835ee85801ed,
            limb2: 0x11904fdea253da1c
        },
        r0a1: u288 {
            limb0: 0xb1e027d8dc346e58ddbf9e1c,
            limb1: 0x53ebc8697dc6d9eca89e0250,
            limb2: 0x1602f8ba5da7ee11
        },
        r1a0: u288 {
            limb0: 0xfb095bb5c9202c9c20cb8074,
            limb1: 0x1250d9221e06c153c58739b,
            limb2: 0x9be0bfbae97905e
        },
        r1a1: u288 {
            limb0: 0x8412173c74c4983e421c1172,
            limb1: 0xa9fc5bb10b32e1cb1164cc8a,
            limb2: 0x12f558618853de41
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc8a5e632cde44c19d287785b,
            limb1: 0x1903d9b40443a8bd4e184e8b,
            limb2: 0x10f0e4121607879b
        },
        r0a1: u288 {
            limb0: 0xc31f782c6e2718ab36084e0,
            limb1: 0xa69c4723086ce1e017ced448,
            limb2: 0x101e078c0f5056b4
        },
        r1a0: u288 {
            limb0: 0x6bb990e0ee683c7f2766eaee,
            limb1: 0xf56e9594bf78006a30c08332,
            limb2: 0x118705f6b56de0d0
        },
        r1a1: u288 {
            limb0: 0x4a23b2ac8974c1d50b095eb,
            limb1: 0xab9dc7a113984c9f50fd378e,
            limb2: 0x2140f4e8a1c51c36
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
            limb0: 0x855705b9e568abaf61687426,
            limb1: 0x102ed9a56cbb6d058772404d,
            limb2: 0x11b2c7fe772e2b
        },
        r0a1: u288 {
            limb0: 0xe960d5c5c9da39777f66cf37,
            limb1: 0x7142a9dfa15b0b968335fa71,
            limb2: 0x2485ed35b8539026
        },
        r1a0: u288 {
            limb0: 0xf5429ce7c7593155bab1bb3a,
            limb1: 0x34cd3745bfeac23e0b0a9d27,
            limb2: 0x19155af93817ef59
        },
        r1a1: u288 {
            limb0: 0x580ffd2fc78353999b7a097b,
            limb1: 0x67b7d7bb8f2460d616bc695,
            limb2: 0x1bf4fe52aa7b4e3d
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
            limb0: 0xeed0bd9420a0482e054353d,
            limb1: 0xaafccf704d8a77008fc0c593,
            limb2: 0x182c1ab9988be78c
        },
        r0a1: u288 {
            limb0: 0x92501d6da145d33e97e745e3,
            limb1: 0xa22a6b4a3b5a99f4b4168b96,
            limb2: 0x2f1f9f7a866e8b54
        },
        r1a0: u288 {
            limb0: 0x305ee41324bd8893abb469d6,
            limb1: 0xab75ab83bc0d6e7b39471fae,
            limb2: 0x260109b7c6d3925a
        },
        r1a1: u288 {
            limb0: 0x721800b176a2a86bfa6e3a2c,
            limb1: 0x3335ff8c2dc7a542da592621,
            limb2: 0x1fa3725044b8467
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
            limb0: 0xbfc15e510f556d2d3b72c16,
            limb1: 0x9aa2862830a55b89ea39ee87,
            limb2: 0x24f3eff77374acf8
        },
        r0a1: u288 {
            limb0: 0x6c9a66304dfb0468fa9d53c7,
            limb1: 0x13802f8fd3a133f0ec9d9085,
            limb2: 0x1198d87df3fa6b59
        },
        r1a0: u288 {
            limb0: 0x2785248efb818db7fc90524f,
            limb1: 0xdbaa07db531c9d221fcea43f,
            limb2: 0x23fcf65822cf46c1
        },
        r1a1: u288 {
            limb0: 0x2f9cb9522449ab1282958b4,
            limb1: 0x685e4a39564eb04afa895df4,
            limb2: 0x24eb85ae56fb9c7b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x219c99999fcba1edd9eba487,
            limb1: 0x768802dd8202701a48c54661,
            limb2: 0x7cd92457525d731
        },
        r0a1: u288 {
            limb0: 0x49dc48b5ed80a6dbfd4aebe8,
            limb1: 0x36c97b18079a4d99d72b719f,
            limb2: 0x20fbc70b0870cc65
        },
        r1a0: u288 {
            limb0: 0x942503a7c49f179fe612a87f,
            limb1: 0x694516001801438b54f56ec0,
            limb2: 0x1fb256ed4cfd181a
        },
        r1a1: u288 {
            limb0: 0xa62c5a3bfbd9056b26ae0bb3,
            limb1: 0x1ee41896ffd2c761de1adb11,
            limb2: 0x11aad974dc4407b6
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
            limb0: 0x62770e44d3b894bab862fde6,
            limb1: 0x7d7fc93a0e9128826a0736f2,
            limb2: 0x7e7f225bc2ca89f
        },
        r0a1: u288 {
            limb0: 0xae14fc15461e5beeb65507d9,
            limb1: 0x7d13266176183e9f3349391e,
            limb2: 0x1456ed8b05816d92
        },
        r1a0: u288 {
            limb0: 0x471e30d4bcf6e491c3d6b799,
            limb1: 0x4b7418f05aa22d39a916e172,
            limb2: 0x6c91185b903fe40
        },
        r1a1: u288 {
            limb0: 0xc80bf73be59597d08a0e4eb5,
            limb1: 0x305188ae2bfe6ae8f0d24bf4,
            limb2: 0x1becf1afcf0cd644
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
            limb0: 0xdac6a5f8903be655389a1cde,
            limb1: 0x407a424df701f34983f3f2f9,
            limb2: 0x673a11950c40ffd
        },
        r0a1: u288 {
            limb0: 0xc472efc02ba55fffbd878ec1,
            limb1: 0xa5f85b4a4398d229548d48a4,
            limb2: 0x2b575473dc85fef8
        },
        r1a0: u288 {
            limb0: 0x9375a71d2ef56f4acc13274e,
            limb1: 0x986f7a75a4a04685e9b6d1a9,
            limb2: 0xb55dbc00734d63d
        },
        r1a1: u288 {
            limb0: 0xa509b9cc037ea81d5c746005,
            limb1: 0xa31bbe68c1b73c13155c2c61,
            limb2: 0x14fbbeb4cab92eef
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9026e9274b95324ec5278d9,
            limb1: 0x20c08774f42f32085bcdd5c0,
            limb2: 0x2cfee987a6b74805
        },
        r0a1: u288 {
            limb0: 0xfce959161cb29effe6c31962,
            limb1: 0x21a3f11a7b374cc677e0b5cc,
            limb2: 0x22394a98b19e2e4b
        },
        r1a0: u288 {
            limb0: 0xdc30f2d5175bfdd66640af3a,
            limb1: 0x2ea93161f85466c49e94ef2d,
            limb2: 0xbdfb37586d6b4ef
        },
        r1a1: u288 {
            limb0: 0x36832401c44be716eb75b511,
            limb1: 0x99e8f0c0440705ebfa82c4e7,
            limb2: 0x163faa2bb80e576e
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
            limb0: 0x8f23ad7b4dc153dc62f18e08,
            limb1: 0x3c3289e5478439a2f6a5251,
            limb2: 0x5dd8c0c35a79230
        },
        r0a1: u288 {
            limb0: 0x68ae507ba2ca89c88163c7ec,
            limb1: 0xa013a258b231c5de70b025a1,
            limb2: 0x200ec74a1f61281a
        },
        r1a0: u288 {
            limb0: 0xe85734e95bdbcc5fac6d792c,
            limb1: 0x9b085170f244bd9022db0115,
            limb2: 0x2d618252337bdd79
        },
        r1a1: u288 {
            limb0: 0x35c90e9941588899d3df9d84,
            limb1: 0x6397c61555f63d0ddfcc13f5,
            limb2: 0xe2ca7b4e1bdfef9
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
            limb0: 0xedd518977593de5ae7a03960,
            limb1: 0xd8df09cfe1c9ee53199937dc,
            limb2: 0xe39979e1cdceef6
        },
        r0a1: u288 {
            limb0: 0x5938c9f244b524d5aaaeddb1,
            limb1: 0x80546ae3ff3ffe990be6ae87,
            limb2: 0x44f1c55f222235b
        },
        r1a0: u288 {
            limb0: 0x6bd1cb920c985b7f4f7df629,
            limb1: 0x1cd6bfff37472ca772daa5db,
            limb2: 0xedbc43614a6dadd
        },
        r1a1: u288 {
            limb0: 0xb1577f48fbc248727e1b818c,
            limb1: 0x31e8e4710dd1dbd247d7aa38,
            limb2: 0x20379181ddd183eb
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
            limb0: 0x822065b75d2d4f2b54eab2ba,
            limb1: 0x9444e87d6ab108dda999944d,
            limb2: 0x503d47c9a93ee51
        },
        r0a1: u288 {
            limb0: 0xd71fcd0be6c204c62d3b74ca,
            limb1: 0xcb0b65df4dcacf8215a2e641,
            limb2: 0xd65cbfb1ab548af
        },
        r1a0: u288 {
            limb0: 0x4b14928cc9d5bac5bb547d1d,
            limb1: 0xf3efd5f7e94a6c03da8880c1,
            limb2: 0x19fc63f10eefb200
        },
        r1a1: u288 {
            limb0: 0x3ff48cb98de7bc755ae9db1f,
            limb1: 0x2c3ecc0a730f86376793ff7c,
            limb2: 0x360f991add497a2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x46693acba6750660aa63a514,
            limb1: 0x1e565917e0fba1d49bf7b718,
            limb2: 0x53c5fa721a09d42
        },
        r0a1: u288 {
            limb0: 0x78b024446282f03c606f9a3e,
            limb1: 0x97edbec2aa8facdcc6c9e54b,
            limb2: 0x2f08a54a1108efcb
        },
        r1a0: u288 {
            limb0: 0x9c21253392e83dc659ddf3,
            limb1: 0xae9d9bcf83510627259fbd15,
            limb2: 0x8b54e95b39a0506
        },
        r1a1: u288 {
            limb0: 0x8c46575a6b3c02860d5155be,
            limb1: 0xa32d9657e8e7dcb9c9d3fa9d,
            limb2: 0x2caf9d64f53056d1
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
            limb0: 0x64758f98b6e7794f59d76d54,
            limb1: 0xc513f81fc5c4f16fa0d5e6f3,
            limb2: 0x149b615803375890
        },
        r0a1: u288 {
            limb0: 0xc7db96a98812d1a637c08d5b,
            limb1: 0x7195a29d2ad2f8768a0a4d7b,
            limb2: 0xc3ac685583006d1
        },
        r1a0: u288 {
            limb0: 0x107734a8c76a6ff3c61e686a,
            limb1: 0xbc7ff467fe7c0acbaeb57495,
            limb2: 0x29bdc165f5fb82ee
        },
        r1a1: u288 {
            limb0: 0xc0146b83aa70fadd4df3f3dd,
            limb1: 0x4041b977d897a1c907f563b8,
            limb2: 0x16db0910a0467c16
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
            limb0: 0x35196cef39908907a8e9b314,
            limb1: 0xd7d13680defda9ba516db3f6,
            limb2: 0x14f9da2d748604e3
        },
        r0a1: u288 {
            limb0: 0xbf24e786d088a696541c53ff,
            limb1: 0xe4f4f7d63220166b8cc44446,
            limb2: 0x1c82539c8fa4f45f
        },
        r1a0: u288 {
            limb0: 0xa2c3e034f22b4e36b6a3f095,
            limb1: 0x9dfb1fd19c711c06888719b7,
            limb2: 0x2164aee1489c814d
        },
        r1a1: u288 {
            limb0: 0x572fd348f2c8b3f70f0dd239,
            limb1: 0xf2288005cd13ae57ac860244,
            limb2: 0x7edf3d2dee659ff
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
            limb0: 0xf2280742e70d7ef5ecb1bec1,
            limb1: 0xceaac8250c60c1c454dcc702,
            limb2: 0x23103cf1abbf1e4c
        },
        r0a1: u288 {
            limb0: 0xa723e4c6b6e0f47c5d390812,
            limb1: 0xfaa2d17cc4072f66636e2586,
            limb2: 0x2fcba07345b38f87
        },
        r1a0: u288 {
            limb0: 0x4ea61632f118edebbe6cdee,
            limb1: 0xcd31fde5c9e9d83ffe71daa6,
            limb2: 0x1e7b76314ea6d8df
        },
        r1a1: u288 {
            limb0: 0x55fdadd214585ada1d739a7f,
            limb1: 0xeb2170dba523a47a5707dacd,
            limb2: 0x6f86ad93287426b
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
            limb0: 0xd14d76ba4313d7976335c9b7,
            limb1: 0x306183e36eb5073733890dbc,
            limb2: 0x19aee1884836a157
        },
        r0a1: u288 {
            limb0: 0xf83e2fa59b94d7dac35e270a,
            limb1: 0x53ed0cdc63241f1e01e7e55f,
            limb2: 0xafec0f62d94a246
        },
        r1a0: u288 {
            limb0: 0xc376c0c1b5ee86f9112f3a60,
            limb1: 0x2235d663a6fbda108ade1b3a,
            limb2: 0x1f0fe07c6439ee0a
        },
        r1a1: u288 {
            limb0: 0x4818929e36135781927e54d7,
            limb1: 0x7dcaaa7641bfc77173ccd8d,
            limb2: 0x1e676e2c96cefd19
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
            limb0: 0xeb59ae2d9c6d9307cfa686d1,
            limb1: 0x5bc50eb80b5a150424770d12,
            limb2: 0x1fa2fbde2c9f23f7
        },
        r0a1: u288 {
            limb0: 0xb9f59ac68fbf075aa1edb085,
            limb1: 0xf7094eb64d1d2fdad2d4b747,
            limb2: 0x2c7d67a313347c65
        },
        r1a0: u288 {
            limb0: 0x7d3ed519ed3d6450991dbc88,
            limb1: 0x7047142dd955748d2fce5e89,
            limb2: 0x170f370b02f25610
        },
        r1a1: u288 {
            limb0: 0xbadb3810f0cf58c645657ff5,
            limb1: 0x60317475dfd5627eeb51e61c,
            limb2: 0x2659b1fe01fa6b1a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5424450713c678eac1f6399f,
            limb1: 0xca52600448a7eca8ab21ab25,
            limb2: 0x2698476616ca59ce
        },
        r0a1: u288 {
            limb0: 0xf4f831d56f018c6e41511137,
            limb1: 0x46dcd2c76c159364cbf82fc1,
            limb2: 0x21a725435d590743
        },
        r1a0: u288 {
            limb0: 0x8b16a5a1bb4b0e16334b4e03,
            limb1: 0xaa37bf7561ce854782910227,
            limb2: 0x1dad685b108a7fe
        },
        r1a1: u288 {
            limb0: 0x807c6f603e9a92877964c175,
            limb1: 0x56943600f5a91a85b7bb10eb,
            limb2: 0x39aa9829e66fdce
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
            limb0: 0xc769827dc01f1a402de7b702,
            limb1: 0x8124ec25ba8ae3cd24c39258,
            limb2: 0x23746deb795b6197
        },
        r0a1: u288 {
            limb0: 0x77025eac80d74e75b8932b2d,
            limb1: 0x8c1c68be22f3a4e389ce9895,
            limb2: 0xd9a1edf14d54d6
        },
        r1a0: u288 {
            limb0: 0x5f126da9b73383df388a40c4,
            limb1: 0xd345e8c1344395626e58b9bf,
            limb2: 0x585eba560ae7297
        },
        r1a1: u288 {
            limb0: 0x4a7f5319d41a29a94d9d7525,
            limb1: 0x553d285def0ea87e2e1f22aa,
            limb2: 0xfddcf84ec06e901
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
            limb0: 0xc83a05a039cf74925410bdfc,
            limb1: 0x7797ff9c85c47b3f7c331bee,
            limb2: 0x258670fe1ecd15ea
        },
        r0a1: u288 {
            limb0: 0xe6bcef17a7fb01c2d942fb6d,
            limb1: 0x7156bb911f4f3928d9b7f958,
            limb2: 0x188449a5fed727f5
        },
        r1a0: u288 {
            limb0: 0x8dee77d03ac17a4c366c7587,
            limb1: 0x562ba99da4ef483cef4803d7,
            limb2: 0x45f0c41052939d7
        },
        r1a1: u288 {
            limb0: 0xe80e9c30c246262fc4e6591,
            limb1: 0x256d4203af4b26e2d196ccff,
            limb2: 0x2588cda857915ca
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfa04b6ab4456404fecd1eafe,
            limb1: 0x1a8f39e216a47d4c1532fca1,
            limb2: 0x12e1b651ad6fe121
        },
        r0a1: u288 {
            limb0: 0x8d997497542649e81a9e7cb9,
            limb1: 0x59bcce48eb04e8a0c045ef40,
            limb2: 0x29393e46bee73c9c
        },
        r1a0: u288 {
            limb0: 0xbf9292796f1002c4be50c563,
            limb1: 0xe257433a611d2cc3c0f89ece,
            limb2: 0x12e31126e4f15acf
        },
        r1a1: u288 {
            limb0: 0xff933b0bb3c20fdc027b63eb,
            limb1: 0x276b16011784cd0242196288,
            limb2: 0x7391c354efcac59
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
            limb0: 0x99be77d70050c5f922c3b6f8,
            limb1: 0x3cd25076c536e427d1eb8e48,
            limb2: 0x1153ec305039be5d
        },
        r0a1: u288 {
            limb0: 0xc189655fa43c1779a2993315,
            limb1: 0xfc64371906c2abcd2218a34f,
            limb2: 0x155e7898d4d007ec
        },
        r1a0: u288 {
            limb0: 0xbb321b60598a66f2ae4ae56a,
            limb1: 0xd2ee055914e93d1b1da7aa17,
            limb2: 0x26e038dc3060ef4d
        },
        r1a1: u288 {
            limb0: 0xbd1b4103229960b56520ed1f,
            limb1: 0x831ecd046d5d6c7509f5d8a6,
            limb2: 0x1b04507b479ed0a9
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
            limb0: 0xbd9598a9aff3e261d8c887a0,
            limb1: 0x8ac61c15abeb7fc18fe1f054,
            limb2: 0xb4578d26519ddc4
        },
        r0a1: u288 {
            limb0: 0x4565ab0c065af9cbd1cb66af,
            limb1: 0x4d1471c8795f98ba8c435c57,
            limb2: 0x198c318819ac9c7d
        },
        r1a0: u288 {
            limb0: 0xc33052b6e3767a4c04c29a20,
            limb1: 0xbbf9282bdda77e4295130600,
            limb2: 0x1bd56648bd1587c8
        },
        r1a1: u288 {
            limb0: 0x583eb66fe87137851e94124b,
            limb1: 0x6e023cd8774ef49f18b2e66a,
            limb2: 0x10375b4d775eafd9
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
            limb0: 0xc127e2ba60e6c6783aaf349d,
            limb1: 0x108576e450f5f504a5cd829a,
            limb2: 0x27bfcaa70675cf28
        },
        r0a1: u288 {
            limb0: 0x95678820eee162198abc94cf,
            limb1: 0xf09afd5a7e84d8a1ef728763,
            limb2: 0xf667bb193ba7c76
        },
        r1a0: u288 {
            limb0: 0x6ed38292817d72fe1532f311,
            limb1: 0xa1f7a31b52fb90c798881b33,
            limb2: 0xed38efa7726cdd0
        },
        r1a1: u288 {
            limb0: 0xc82f95b580266ad058674f77,
            limb1: 0xa1d8ed2f49861e06a875e386,
            limb2: 0x1fce46c966100ade
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
            limb0: 0x155b886a5a14135cad06cefe,
            limb1: 0xa63b4b793462ac6097929446,
            limb2: 0x1babc5f29ba39bab
        },
        r0a1: u288 {
            limb0: 0xc653569886726ed8865cb8b6,
            limb1: 0x98a7d7868e988b5ee04e5479,
            limb2: 0x11a9ad081a9fc816
        },
        r1a0: u288 {
            limb0: 0x8002aa118a8d6ff53bee2053,
            limb1: 0x6ca587dc3f9fc857ace20c94,
            limb2: 0x119e3e30f03353ec
        },
        r1a1: u288 {
            limb0: 0x3478c3a2c3d3c8f99501448b,
            limb1: 0xe5bf5e978c0eda23d63029dc,
            limb2: 0x1d48de6e08be1090
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x99745053872b5dfaf948e5c,
            limb1: 0x5a6b1f38d2ddcd9860e49080,
            limb2: 0x1afa1281a98791fb
        },
        r0a1: u288 {
            limb0: 0xf41cd825c0009aef9f5a22f1,
            limb1: 0x254c6dd7cc99cbcac77f54f9,
            limb2: 0x27e231cab60045ce
        },
        r1a0: u288 {
            limb0: 0xd1ab5497756f69f2626e2987,
            limb1: 0x7eb3e2c71f0141562bf892f0,
            limb2: 0x2c461094ffe5928c
        },
        r1a1: u288 {
            limb0: 0xa71a2bd92bf8090ac84bba79,
            limb1: 0xa08bed33a4a75eac184133bb,
            limb2: 0x1781e56f40759e1a
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
            limb0: 0xa890b6068ad8a336b1bca080,
            limb1: 0xa86895ff20db53219aba152a,
            limb2: 0x2184661a57cf6ce1
        },
        r0a1: u288 {
            limb0: 0x19c2caa954235c40a0831c1f,
            limb1: 0x6cb77f2f5dcefa3c0643df52,
            limb2: 0xe95ae9ff7979dfd
        },
        r1a0: u288 {
            limb0: 0xe9b93ce51e0f62fdd714635d,
            limb1: 0x11aab2cef5ebee3bdb049d46,
            limb2: 0x187b671c5b58018a
        },
        r1a1: u288 {
            limb0: 0xc49f94f30e913a1554fec60e,
            limb1: 0x7cf806d864cb729262f36da1,
            limb2: 0x1413636dfa553a33
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
            limb0: 0xca890c1450050808a3c716e3,
            limb1: 0x4366311c4e4bd4a0c87f0bdc,
            limb2: 0x26e4e8b03e252bc1
        },
        r0a1: u288 {
            limb0: 0xa0f50ebefe6c7c4be63aa8f0,
            limb1: 0x88e0dd24c6794297045bd8bc,
            limb2: 0x1128380c52f74c1b
        },
        r1a0: u288 {
            limb0: 0xf3d0bb59130ddb6251f43911,
            limb1: 0x6b0e82da07b9b6c15a390c3a,
            limb2: 0x2fc2b450f303ee95
        },
        r1a1: u288 {
            limb0: 0x518a3ebed5ea0414a2e3fed7,
            limb1: 0xb423de3c0b60eb8e311321a7,
            limb2: 0xa4254f5bf8603cc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xae9bd854eb2c189cf7eec9e4,
            limb1: 0x5b61a791bef2b641db6bc6a5,
            limb2: 0x2f17d73ef823fb6d
        },
        r0a1: u288 {
            limb0: 0x57f99de87a3e7b43ef45120e,
            limb1: 0xc9eaa31951b747ef6e955501,
            limb2: 0x2442bde07a0007bd
        },
        r1a0: u288 {
            limb0: 0x7a8b08412bb4521a0c623d12,
            limb1: 0xe84e61974464b4710405d1e,
            limb2: 0x3640bcadb119ea1
        },
        r1a1: u288 {
            limb0: 0xdad553bd6d3408b3b5928061,
            limb1: 0x64152abd060bb94b2555ce78,
            limb2: 0x2ef7f215b42c784f
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
            limb0: 0xeffa00f1ca9384595f4143db,
            limb1: 0xf6a7f6f9f479185338acdb5c,
            limb2: 0x285eab4cb6f7dc7a
        },
        r0a1: u288 {
            limb0: 0xc78762ec86c4155edbb42e67,
            limb1: 0x1906694fa3a8b7da7a1ba19a,
            limb2: 0x1f6329bea5faa0cd
        },
        r1a0: u288 {
            limb0: 0xd9f88a72cab607ab79e19cda,
            limb1: 0x7dfc065738e25cdfb5ee4ef4,
            limb2: 0x1f52dd5c8d835a7f
        },
        r1a1: u288 {
            limb0: 0xf357f42137ef12b42422660d,
            limb1: 0x1b3f9b46e52580b1afd77b51,
            limb2: 0x561062db7e67c48
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
            limb0: 0x97717f565c497d66d379222,
            limb1: 0xadb59f983d883f1a835f2ec5,
            limb2: 0x2de781e336ffad23
        },
        r0a1: u288 {
            limb0: 0x8135fac987055bf106a0eb9c,
            limb1: 0x2faab6eb4e88782b1b87e28a,
            limb2: 0x249ae28eb7cbe4a1
        },
        r1a0: u288 {
            limb0: 0x22664dc15e05d66b61f68a51,
            limb1: 0x6046a79d1d5053006281a90e,
            limb2: 0x3dc8625fc73d9d7
        },
        r1a1: u288 {
            limb0: 0xbd6518a1ae5c8e4a759f97de,
            limb1: 0x613b3bb204ea046efcf1b12,
            limb2: 0x265d4de050dbe3cb
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
            limb0: 0x247fde3ef4a5b758e3387364,
            limb1: 0x43171d4c4bf8dee41f41469c,
            limb2: 0x1789e3a5608ce169
        },
        r0a1: u288 {
            limb0: 0xad8683f242e3125ba31cf88f,
            limb1: 0x9d741275b321f9744136dda4,
            limb2: 0xc25329dd81a3184
        },
        r1a0: u288 {
            limb0: 0x84b39cef61b177033b33306f,
            limb1: 0x9b1bd054ee03fb66a8bf69ee,
            limb2: 0x930228540b763be
        },
        r1a1: u288 {
            limb0: 0x6ebc34c276714c012f44c3e4,
            limb1: 0x9a43c5c33e53603d20fa5c5b,
            limb2: 0x2fd386287a4efdfb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x48cdc9c5dcae6bd672ef746b,
            limb1: 0xe77a4ce7a626a16a905afeb8,
            limb2: 0xc7a507f333807a7
        },
        r0a1: u288 {
            limb0: 0x864caacfff938977fa3fc68a,
            limb1: 0x771d7e67ad582d762685a54d,
            limb2: 0x1f97c38adb0d1c53
        },
        r1a0: u288 {
            limb0: 0x6aa54f72c5b310aef83950a2,
            limb1: 0x5940e2800b4d7e349d510196,
            limb2: 0x276338870edfee66
        },
        r1a1: u288 {
            limb0: 0x6e08da34fc9935c0d5406664,
            limb1: 0x48de8b3926916556fe22c982,
            limb2: 0x18af9bc4cbd34b15
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
            limb0: 0x7bca7662adb90e9b7851aeb4,
            limb1: 0xadca8e2596f67ea37b66c76c,
            limb2: 0x978c90c3ce293c6
        },
        r0a1: u288 {
            limb0: 0x773cd0b752c4dff209a70b57,
            limb1: 0x2930c9a660d6f7e99c88e909,
            limb2: 0x5b58fc53f39dfd5
        },
        r1a0: u288 {
            limb0: 0xf5f20c4470b6e75ff57e3f58,
            limb1: 0x445074da68dfb5de6959a715,
            limb2: 0x1b9b03a9304aa036
        },
        r1a1: u288 {
            limb0: 0x5d7537cd45029ca07910f9e6,
            limb1: 0x897ac11f90aa11509f692acb,
            limb2: 0x2e53e6313708af12
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
            limb0: 0x3c9ee26f0bdbd64d7d037c1e,
            limb1: 0xe711d6eb2d8e83754b3dcefb,
            limb2: 0x2d55e1c222c49540
        },
        r0a1: u288 {
            limb0: 0x70377bf299cee4dd7f7c13ae,
            limb1: 0xb5da189cae00556e0c2ab923,
            limb2: 0x2ca6c2003e5529cb
        },
        r1a0: u288 {
            limb0: 0x6b9e2ebb2e67ef8c1b30515f,
            limb1: 0xb13ddc95f4f02ddc5b7b2e4a,
            limb2: 0x285a2aa950728d2a
        },
        r1a1: u288 {
            limb0: 0xda8395b2cc3e7b72127d7c21,
            limb1: 0x8aefd56888473b2d13582ffc,
            limb2: 0x146065fbffc3f36e
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
            limb0: 0x6f8d410fc997781be479fa9c,
            limb1: 0x937a1e32402e50814481cfb2,
            limb2: 0x2f194cc17c6c8dd6
        },
        r0a1: u288 {
            limb0: 0x8e7d50347621cf20da00369c,
            limb1: 0xc0de1b75e26bebe7ffd71834,
            limb2: 0x2f3a8ec2d73c4f12
        },
        r1a0: u288 {
            limb0: 0x7bfa8675ad8ac263cab3ced,
            limb1: 0x3379d43cc7ac2216d7d60703,
            limb2: 0x23e9e7522572c2a9
        },
        r1a1: u288 {
            limb0: 0x110aafa7559b8faae8d58421,
            limb1: 0x2e05e5c4264b934a66d000a6,
            limb2: 0x27c5f45cc14f3f40
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
            limb0: 0x160a730664e9e3bc3ef65cdf,
            limb1: 0x5b5716c0f416929f70b6e3f8,
            limb2: 0x1af2dd5c5f814f50
        },
        r0a1: u288 {
            limb0: 0x1f5ca4439712846d574d6d84,
            limb1: 0xbf187908d85ff24ff985e0e3,
            limb2: 0x249b06688a53bae5
        },
        r1a0: u288 {
            limb0: 0x9f56c94753ccb2e37c9432db,
            limb1: 0x41428ad682ef31b2d6301da5,
            limb2: 0x272a3ca21afad0f2
        },
        r1a1: u288 {
            limb0: 0x1b5979641cd55d4f11499f3a,
            limb1: 0x62d3d27052cecab19d51a756,
            limb2: 0x19fd72b06df6356f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x66bb691027bdf2b17999e367,
            limb1: 0x1d0ed61446c991ca9d1ee748,
            limb2: 0x14f2d71a450d41bb
        },
        r0a1: u288 {
            limb0: 0xa2fa68acab28f5174391c827,
            limb1: 0xc5e0526e4f77fa9ac0a9a437,
            limb2: 0x1bd95a445da509c
        },
        r1a0: u288 {
            limb0: 0x5a7369f8a161544b4804d2a0,
            limb1: 0xbc6260d1ee6d810748132c19,
            limb2: 0x168a505914103114
        },
        r1a1: u288 {
            limb0: 0xaf82ab24c8a85b4379020fba,
            limb1: 0x4485790b0fffb15717303ea0,
            limb2: 0x1138a6f78187b115
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
            limb0: 0xb533a871760101ed70770a6e,
            limb1: 0x310b81f03b6eb6343c10939d,
            limb2: 0x119c746b9838825c
        },
        r0a1: u288 {
            limb0: 0x3dba89134373f16dd739d57e,
            limb1: 0xa066c9f51f902ec717d40799,
            limb2: 0x1dff8a8e42c22791
        },
        r1a0: u288 {
            limb0: 0x433829333b2a5fca24093191,
            limb1: 0x73b424116869a6906a4a0278,
            limb2: 0x63c8267d3764442
        },
        r1a1: u288 {
            limb0: 0xa0bc25d4dbe9b5cea4e9cc19,
            limb1: 0xaf4bfd9006d7f54cf646c32,
            limb2: 0x209afd67bc05a8bc
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
            limb0: 0x20aa39f76648634972c9ece1,
            limb1: 0x27018f25352af5b5ba757d09,
            limb2: 0xd89b2d8a927e682
        },
        r0a1: u288 {
            limb0: 0x96221189e21535acdfdcac10,
            limb1: 0x482e0df3a74a6a7c2b4e6126,
            limb2: 0x2fddeee9a9ad0694
        },
        r1a0: u288 {
            limb0: 0xb00ba0c222ade95b015fe52e,
            limb1: 0x125cf714b488cc9525d1db72,
            limb2: 0x2460d3f818d93d56
        },
        r1a1: u288 {
            limb0: 0x8746b7b2c1b6d7e118e4ffbc,
            limb1: 0xcf0e3670060bf0c5562e7ddd,
            limb2: 0x1db7d5188c399055
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
            limb0: 0xf05ac9bbe03656ecfd94ca86,
            limb1: 0x85c3645dbb20e8b1a00e0a22,
            limb2: 0x3179a010d3f7b7f
        },
        r0a1: u288 {
            limb0: 0xdef66f0672a37dd2611a99a1,
            limb1: 0x9dbcb6a26b836a218cd024b9,
            limb2: 0x1a5937f329d3a22d
        },
        r1a0: u288 {
            limb0: 0xb61639e28c24b4d26c3476f2,
            limb1: 0x70d833939a72fd4364df8a31,
            limb2: 0xe2a8c1d2fd231c9
        },
        r1a1: u288 {
            limb0: 0xb718875b03b1408977a97369,
            limb1: 0x2ac6fedf0097fa3baff30880,
            limb2: 0x15c23e473e369d0f
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
            limb0: 0x80a52cff646189d00b2f2e08,
            limb1: 0x6296e53e66a78ca886a9220e,
            limb2: 0xfde338a9e6ce0c0
        },
        r0a1: u288 {
            limb0: 0x5077b43d9f4989d6d9685a96,
            limb1: 0x8ce31ece93084b69150efa38,
            limb2: 0x1c7fe492477cb10b
        },
        r1a0: u288 {
            limb0: 0x49cd1886e85df6a67f6e2dbd,
            limb1: 0xaffab4da64763b9e82ff03e6,
            limb2: 0x18be83af771e5c51
        },
        r1a1: u288 {
            limb0: 0xbe4fcb167ebb9b1060f8812,
            limb1: 0xdd4e91e3bf9d983a69fed3f7,
            limb2: 0x16b9b21618ec26cd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xae3a3d95c3b21f2df5b5757a,
            limb1: 0x93e737555be0fef138912ff6,
            limb2: 0x142ab3e9ac1d00e0
        },
        r0a1: u288 {
            limb0: 0x9ebc157108c983638b59949f,
            limb1: 0x9a673ffda968fbb27be2d13c,
            limb2: 0x1a1950804360e8f2
        },
        r1a0: u288 {
            limb0: 0x5db8ea036f1c2e829a1685a0,
            limb1: 0xfb1e0c958c0f0bdfd3adfd5a,
            limb2: 0x89d33262879c85c
        },
        r1a1: u288 {
            limb0: 0xc73e470843442979876fe9c9,
            limb1: 0xa743603476a81f5ca1d6c30,
            limb2: 0x64ef61375997a4f
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
            limb0: 0x9ed3d6363e2c46b60544a3e8,
            limb1: 0xa289a395c77d1eb1bc578b92,
            limb2: 0x43ba3633482f550
        },
        r0a1: u288 {
            limb0: 0x66146af715ebabaa352c965b,
            limb1: 0xa98ee271143084d30bec6b7,
            limb2: 0x6ff94641ccdd9fe
        },
        r1a0: u288 {
            limb0: 0xf2aa675f32730d95ef1dbd67,
            limb1: 0xd030529875aff1238844649b,
            limb2: 0x19b554da8e8c71aa
        },
        r1a1: u288 {
            limb0: 0x373798331432e861f1b29b56,
            limb1: 0xe1e83023f80d817d440b03a0,
            limb2: 0x19a3d3c32d93009f
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
            limb0: 0x54a86a9dc6cbc90de3461658,
            limb1: 0xff9945b28a0af146a2cf90df,
            limb2: 0x1f8de5c078b80ca3
        },
        r0a1: u288 {
            limb0: 0x11dd6e55182980933a492fe5,
            limb1: 0x68b78054b43f7f677d55fdb8,
            limb2: 0x2a5c67c214e4e8cf
        },
        r1a0: u288 {
            limb0: 0x24a908bf6c38efa933361cb5,
            limb1: 0xce1929f196c8bd4d8ad28669,
            limb2: 0x16276b862292eee7
        },
        r1a1: u288 {
            limb0: 0xfeb0455525fc68d6ac4e26fb,
            limb1: 0xddf44b8bb8f75d294782bcd2,
            limb2: 0x2316de7ca81eed30
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d3d52628098d3401b7f3712,
            limb1: 0x6b76767dbc91804c673b8986,
            limb2: 0x2453585e1201202a
        },
        r0a1: u288 {
            limb0: 0xf1997893695f5a30942f5917,
            limb1: 0x58b80dfe281dd8a34038a66b,
            limb2: 0x2bec455de8dd1ca6
        },
        r1a0: u288 {
            limb0: 0x5f85c57065740b7bde6259cd,
            limb1: 0x7d3171554d8a042cbc37471a,
            limb2: 0x175ba987a3b8dc3c
        },
        r1a1: u288 {
            limb0: 0x711640d2a5e82c882775f82c,
            limb1: 0x9b82a571be8669b983df81a,
            limb2: 0x2c9cccc942355395
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
            limb0: 0x95b07d9b93a3069e8da622ea,
            limb1: 0x9e6467f50eb97ac3c047b0d3,
            limb2: 0xd7bcb9c5219fd1b
        },
        r0a1: u288 {
            limb0: 0x716187c752bb3a1af4d44e07,
            limb1: 0x6e544adb0d17319a2e1d7ee4,
            limb2: 0x29df62bdafe261cd
        },
        r1a0: u288 {
            limb0: 0xd1932f02886119c0872f1fd3,
            limb1: 0xef169c883e9d0b8ba0679f36,
            limb2: 0x1704c6f16c2b37b0
        },
        r1a1: u288 {
            limb0: 0xa6eb4e03c768a5f3ed2769f8,
            limb1: 0x9915e9ca0e6690dd78413cf6,
            limb2: 0x1d82de3d7cd92288
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6be0998f377c15a583a022a,
            limb1: 0x18865dee5864112eea0214b8,
            limb2: 0x2daa38c4a3fd1df2
        },
        r0a1: u288 {
            limb0: 0xdcfde6338359abbb5b2bd069,
            limb1: 0xd282ad25fddbeeb123107301,
            limb2: 0x33ef6928b2e355c
        },
        r1a0: u288 {
            limb0: 0x94a5c9dcfbcb78010d60ee6c,
            limb1: 0x8365cf9460fa11651a2903e7,
            limb2: 0x2a8bb674ed4203b
        },
        r1a1: u288 {
            limb0: 0x199f926bb69cfc8e833361c2,
            limb1: 0xe95dc1b1864c5614849d60be,
            limb2: 0x15f21cad320d53b9
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
            limb0: 0x118a004beaf5d90b164631a0,
            limb1: 0xe03829f977fa4294086046ca,
            limb2: 0x218e8ce9f3ef16b7
        },
        r0a1: u288 {
            limb0: 0x1719264f7951a3e33a16f8f8,
            limb1: 0x56eaa2bdb9484e73b64333dd,
            limb2: 0x161dc175dfe0185c
        },
        r1a0: u288 {
            limb0: 0xb3f89ce397f58e9ac198c01d,
            limb1: 0x2504f39b3b50fdb4e67465e3,
            limb2: 0x21522ae9bec4b707
        },
        r1a1: u288 {
            limb0: 0x5018f0bcaf2a77dc89c4b65f,
            limb1: 0x7bca01d2350a4fa7ae03dcff,
            limb2: 0xde22885855e5eae
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
            limb0: 0xf031043161b48c0f39026488,
            limb1: 0x5eb5ac1d1c12e4ac3d6b405b,
            limb2: 0x19db8fdc9a26c7c
        },
        r0a1: u288 {
            limb0: 0x43c88b1043474cb8d863c919,
            limb1: 0xdd944e47f0731e3340776586,
            limb2: 0xab322eccfce64e7
        },
        r1a0: u288 {
            limb0: 0x576f14669620bf0d30100eb4,
            limb1: 0x110d7fab4cd0ddc790b07eb5,
            limb2: 0x269857e5a6fe1e75
        },
        r1a1: u288 {
            limb0: 0x85845851638ef940e66f34b9,
            limb1: 0xa27e3d30e9605888341045b9,
            limb2: 0x264bcb1d1b393b22
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
            limb0: 0x228c0790e7d5d5d1afbda9f3,
            limb1: 0xdc83b06539641baeaa721abd,
            limb2: 0xa70d62cd5397a51
        },
        r0a1: u288 {
            limb0: 0xa7432dd40fb086ced8254548,
            limb1: 0x8d482c014b79a2d68631f518,
            limb2: 0x1406be8d930af2a1
        },
        r1a0: u288 {
            limb0: 0x9a303df91637dce0cd55d112,
            limb1: 0x1d0064f76294533be2f9a5ec,
            limb2: 0x25d1ee244298d042
        },
        r1a1: u288 {
            limb0: 0x22d4b7d591c00427a009aac6,
            limb1: 0x9d623b1c30b8b4993cefffc2,
            limb2: 0x239b72e36c2f323b
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
            limb0: 0x58d20205be2a81f8f7ae5a0d,
            limb1: 0xc701922734e1bc3efc5a6b37,
            limb2: 0x1f20e3c8e116f0e4
        },
        r0a1: u288 {
            limb0: 0xfe731fc63647f4dcd2040b6a,
            limb1: 0xa67c7211ac2257b0f4dba819,
            limb2: 0x2f899fecdab3fdee
        },
        r1a0: u288 {
            limb0: 0xf24cb86e1a7fbb3905db9384,
            limb1: 0xfb65421a07520b6eb7527352,
            limb2: 0x156834088e619597
        },
        r1a1: u288 {
            limb0: 0xea5fea50cf2cd60fa5cb4666,
            limb1: 0xe029e696e34b9e15ec59e886,
            limb2: 0x25618b7ccb0e76e8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x71da1e3f3aac1904b358af2d,
            limb1: 0x56ada7dba92578603f76b1f,
            limb2: 0x272d8346cee41254
        },
        r0a1: u288 {
            limb0: 0x4149ad503a45113c190206c,
            limb1: 0x90a2b41fcc51b30351e555ec,
            limb2: 0x29b2d464f57f1a97
        },
        r1a0: u288 {
            limb0: 0x5110acab27589251828b4f9a,
            limb1: 0x2f1b8549d6af2739bf3d3268,
            limb2: 0x7df864646c72969
        },
        r1a1: u288 {
            limb0: 0xdff380213e16fae141d514a0,
            limb1: 0x6f1eb39cb6751f221c97f6fd,
            limb2: 0x15902fa418d18201
        }
    },
];

