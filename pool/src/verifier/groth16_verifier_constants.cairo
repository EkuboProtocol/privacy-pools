use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0xadbe92d7c952459ab7a4113d,
                limb1: 0xfa0befdd89f255c0c6cd38e1,
                limb2: 0x45db9489cb08696
            },
            w1: u288 {
                limb0: 0x5b19bb145994bb58effc3d65,
                limb1: 0xd927e505a8971fa4496d31be,
                limb2: 0x2f2b462e537da1ca
            },
            w2: u288 {
                limb0: 0x138e8fc69053ac2fdf52cf65,
                limb1: 0x5254c7e1a01f92da53f79e1b,
                limb2: 0x1cf76ce80780e102
            },
            w3: u288 {
                limb0: 0x6109f94b2f20eafb660696f9,
                limb1: 0x65ec1225443135ebcc3f1abb,
                limb2: 0x22047a6bbbc0b21e
            },
            w4: u288 {
                limb0: 0x553bd08d94aea4360f976b0f,
                limb1: 0xf5c543dba8521bb6f6a6a2a5,
                limb2: 0x6d17dffff6ab708
            },
            w5: u288 {
                limb0: 0xb2f95abacde08e8da87741e7,
                limb1: 0x2361fec990a6449907620061,
                limb2: 0x25834c7cc0fbd121
            },
            w6: u288 {
                limb0: 0x356210f6f63c700218ec9580,
                limb1: 0x95490888ab0c5a209ca9e97d,
                limb2: 0x2d2021dc964ca933
            },
            w7: u288 {
                limb0: 0xc7a360d362d885e42139542b,
                limb1: 0xdb8d449704fc52dc173a62a1,
                limb2: 0xc305cc95447026
            },
            w8: u288 {
                limb0: 0x55bb7deefe95fc711fdb16f9,
                limb1: 0xf71e941cc5e01edb41088a97,
                limb2: 0x1f16d00b4032df13
            },
            w9: u288 {
                limb0: 0x4bfb0aa6ebdaae8cfc59e10d,
                limb1: 0xf337cf3c78ccf77f5fae31a7,
                limb2: 0x51f338113ab58e0
            },
            w10: u288 {
                limb0: 0x854d82c23e38b639ecb244bd,
                limb1: 0xd435e0d17c0f909756489c3d,
                limb2: 0x765beb4ab775b1a
            },
            w11: u288 {
                limb0: 0xbfbec70d562cafe2f5cf7a91,
                limb1: 0xea8fc9f1850adefc06dd4457,
                limb2: 0x2b255529e2301f29
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
                limb0: 0x1bc6277965453357481b55e6,
                limb1: 0xdea39b04f7954bac68f0065e,
                limb2: 0xaaa26e803a278a9,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x3df15923a0161df1311ee9b3,
                limb1: 0x9423737084151a0ebfbba7f4,
                limb2: 0xaa2b67747671dbe,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xc09c1657a4eda9e7d17cc547,
                limb1: 0xe70b653c573de4c6767d6c8a,
                limb2: 0x1846ab4f122be031,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x71c9c170e44dbd540d05edba,
                limb1: 0x2920648818ab33e7eceb015e,
                limb2: 0x1bf7244d5630af2,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 7] = [
    G1Point {
        x: u384 {
            limb0: 0x8ff74e2e339bd19a7ab03894,
            limb1: 0x886bf75f2c452928283fca4b,
            limb2: 0x24a86a1ce4d2479a,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xcbd3040aa05d8469ac909884,
            limb1: 0x2d20d2b069db4644facbd944,
            limb2: 0x23c0f26aaa59cb1f,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xa1c3f258be735f4ee2eed506,
            limb1: 0x12220d7e2ab02cc10b192312,
            limb2: 0x208e3af4478aacc,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xb82d76fe9dab373140dfe656,
            limb1: 0x5fc961533606d9d8ebf55e60,
            limb2: 0x1c6d91951a416371,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x2da37edeb562858696f1a1f6,
            limb1: 0xb89e291b90b2811c04b8ccda,
            limb2: 0x2b628248a7e0aff1,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x1d2ce1f7cdf0e2752af3bac6,
            limb1: 0xcd171490d4973f0a03135067,
            limb2: 0x281acb29539d6b47,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x22b9f8a49d46472447b17aea,
            limb1: 0xeb74265e67de816b08c5d9cb,
            limb2: 0x1823d6c34033d9c8,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x74e39ec6648baebc4f5d0b6,
            limb1: 0x28d61dac90c8ec2007f6dc8,
            limb2: 0x509d062b64f053a,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x5aa752155d507d6a37c80c98,
            limb1: 0xb40cbdbc9d57bd4d19226b23,
            limb2: 0x12d546049dd13e02,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xa8fbdf03addd052373a4b37c,
            limb1: 0xa7b445e44e967b431cc8e17,
            limb2: 0x12175f9f1fd9e3f9,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x63059787a8d0289d1b2a0d74,
            limb1: 0xea58226b3662c4548ecfe3dc,
            limb2: 0x512b2798a007db6,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x82105d2912d01f5d38f9fc88,
            limb1: 0x178435d3c6729d1058a88e95,
            limb2: 0xda13708f2de70e2,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x47bd7bc75e9ac376bae9b6ce,
            limb1: 0xe2eb58ebf8fdf3f792360844,
            limb2: 0x2b6123776b0eae9e,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x3e247c90a1624ecbf530cfd1,
            limb1: 0x58fe9167a2b80547f1576e78,
            limb2: 0x2cc28a037aa8d1d,
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
            limb0: 0x740ef881db9d49222b03a04f,
            limb1: 0xe3d08fabd643094ae7e315f3,
            limb2: 0x17c73a3e0887d9bd
        },
        r0a1: u288 {
            limb0: 0x87740606d87f260c89a5e82d,
            limb1: 0x2e6e43c0056621b8ec0fcc59,
            limb2: 0x19889e9065deef58
        },
        r1a0: u288 {
            limb0: 0x94bb46bcb678764da2f818ac,
            limb1: 0x67a1c591ab25f08f650595e7,
            limb2: 0x4974bdc508c2c39
        },
        r1a1: u288 {
            limb0: 0x14d5a0fe4d2537c0934acf37,
            limb1: 0x625b6d206a8d120a526cbbe,
            limb2: 0xd5e3b0a8b3d49d2
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
            limb0: 0xf462d20b608342f4ad795cf8,
            limb1: 0xd47fb60aab3e4f12af9e549d,
            limb2: 0x189d1434d8a9c66b
        },
        r0a1: u288 {
            limb0: 0xe0fdc48663a1660a4ed7151a,
            limb1: 0x89e201f67c1b36a4ab719e37,
            limb2: 0x16dbafe27b52b0d1
        },
        r1a0: u288 {
            limb0: 0xd3b683d085a815c93584e49b,
            limb1: 0x50ae8024d65b67ce327bd4a9,
            limb2: 0x2bcd029690a573f0
        },
        r1a1: u288 {
            limb0: 0x539c298eeefb545645322e10,
            limb1: 0xb22a8ee47ad8873cf25a9ed3,
            limb2: 0x2306136855f45657
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c68355c42047e1c36c714e5,
            limb1: 0xf9ae66ee797063aba58212de,
            limb2: 0x6ca22499a276258
        },
        r0a1: u288 {
            limb0: 0x9c7d266cda6a21b170d079f,
            limb1: 0x1926df8a2e4afe5979065020,
            limb2: 0x17cd120868233ff8
        },
        r1a0: u288 {
            limb0: 0xb987233ef1be0e3ff6c6f487,
            limb1: 0xec1275a0127bb16d20669d49,
            limb2: 0x19b4043f6f829b12
        },
        r1a1: u288 {
            limb0: 0xe73533c0ba0389d0a90560c0,
            limb1: 0x2e0db70015d52ed61cb58555,
            limb2: 0x158365990db079ac
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
            limb0: 0x22bb32f8109b2e38ab9dfdc4,
            limb1: 0x8efb75b011e2450197ef2ecc,
            limb2: 0x12dc7adddb6f0c2d
        },
        r0a1: u288 {
            limb0: 0x624256a9cf43af2a60f6b1e5,
            limb1: 0x56a68730c666d2a6939f51f8,
            limb2: 0x16d334a4c1bd05dd
        },
        r1a0: u288 {
            limb0: 0x76ddb735c5d6ab13041aef07,
            limb1: 0x39f026ad3b3428ddf83ee065,
            limb2: 0xeee3dbfd4fd499d
        },
        r1a1: u288 {
            limb0: 0xd6fbde080b2e3e2e57b275cc,
            limb1: 0x7aa227ac4a2b1b92eef2198f,
            limb2: 0x1dce42fb03eea31d
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
            limb0: 0x9f06e16aaf5c3435bc0dc57,
            limb1: 0xb914fd6c790a4c6c976b3557,
            limb2: 0x2461413c93b3808e
        },
        r0a1: u288 {
            limb0: 0xf880001b89941663f641d84,
            limb1: 0x2aff0662e1dfd629c3add873,
            limb2: 0x2eb48977c1d1658f
        },
        r1a0: u288 {
            limb0: 0xa3146d0d635b11c1e4750333,
            limb1: 0x13c8472e94c6f822ba0d4ed,
            limb2: 0x1681a166def5e618
        },
        r1a1: u288 {
            limb0: 0xd75feebbb8baf34819357204,
            limb1: 0x53d2ad41992c83cd2e11f859,
            limb2: 0x14ab1b9f36a137c6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xad9226cf905b25b9382bc3bb,
            limb1: 0x5b370461ae8ef60544bb3570,
            limb2: 0x6c65e583c40cf16
        },
        r0a1: u288 {
            limb0: 0x1ee74c2d4df5cb8d6f75b9d1,
            limb1: 0x31a039e757dfead49af7fb90,
            limb2: 0x1fdc91695ed4430a
        },
        r1a0: u288 {
            limb0: 0x7d8488b57f2d45ea618d8195,
            limb1: 0xec005c529cc0a1bcacdd35e9,
            limb2: 0x2537dfaaea7217bd
        },
        r1a1: u288 {
            limb0: 0xf32d23a92aac29877b3e8a44,
            limb1: 0x77682c24c640039fd1cab3a4,
            limb2: 0x1ac25647d4f5d37b
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
            limb0: 0x242549296bc1646ced01fdf3,
            limb1: 0xa03b43e52578a859f01eea8d,
            limb2: 0x1624d4daf13345bc
        },
        r0a1: u288 {
            limb0: 0x6772e98f3581dad3ccb7c1e9,
            limb1: 0x5cd18766479cfba6d7327f0f,
            limb2: 0x25315847ce5f5786
        },
        r1a0: u288 {
            limb0: 0x1c6964a927a256c969b6bdd6,
            limb1: 0xf93dd3d20417c5efdf26f23f,
            limb2: 0x2628da7628bc3bf
        },
        r1a1: u288 {
            limb0: 0x9151d7f1dde3c81aba0ec24f,
            limb1: 0xf7b1badea45ff9740b5f844c,
            limb2: 0x28387451ba8d1814
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
            limb0: 0xc16e9ee2b7f163a6c7458e16,
            limb1: 0x24afdd6f5c22a2f792561e70,
            limb2: 0x80e386884cf1675
        },
        r0a1: u288 {
            limb0: 0x962083f96de6358823399ab9,
            limb1: 0x4346fd009c075fb5657a0d0b,
            limb2: 0x21398505c73a7a1e
        },
        r1a0: u288 {
            limb0: 0x6ef2b484097c0ac2cdeffbb8,
            limb1: 0x45773bc31c3c011acd4ad493,
            limb2: 0x1ae5a0837192a8bf
        },
        r1a1: u288 {
            limb0: 0xf8faa7be067ec7d81fcefde8,
            limb1: 0x10737fb1de3508fe8bfe05b9,
            limb2: 0x20e2c5ba3238282c
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
            limb0: 0x6e331a6804af1f2029eca5ad,
            limb1: 0xb5b6bcf97c65876aeb7a9dcc,
            limb2: 0x108ac01688f4bba1
        },
        r0a1: u288 {
            limb0: 0xb3cf08ef438112bad0c37b63,
            limb1: 0x945920c62246f424dd5be33e,
            limb2: 0x155f1b61f17c2552
        },
        r1a0: u288 {
            limb0: 0x47cc0187cd92fcdf1c28e620,
            limb1: 0xb60b3daf02a7f354639c2fc8,
            limb2: 0x1cc5f200f3e0b843
        },
        r1a1: u288 {
            limb0: 0xbc7fb4bfd954a53b6a64a81c,
            limb1: 0xc4824f4c8dd79b20cc00c871,
            limb2: 0x59e8a8d2cc53f86
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
            limb0: 0x79f4b922a32a4a79eee45b6b,
            limb1: 0xc8905201c7fbe8ce29684877,
            limb2: 0xd0faba917d4b153
        },
        r0a1: u288 {
            limb0: 0x43102b677d9989aabd16b7cb,
            limb1: 0x6d56ec4c66c1e7e4f2e1b829,
            limb2: 0x281660104abd21bd
        },
        r1a0: u288 {
            limb0: 0x90e8dfc2fe03b6cc16270a4c,
            limb1: 0xe7ca9aabd6dd6dc14d8a5ea1,
            limb2: 0x9b499a770019ed
        },
        r1a1: u288 {
            limb0: 0xd3387217cf0e56a0783ea3f2,
            limb1: 0x621ef13b1d8e66c9bd320eda,
            limb2: 0xde0a2e3891a2fb0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcb6111a4b62043fb30785680,
            limb1: 0xd9ed7edf3443a235d80aae59,
            limb2: 0xb3c9bc5966b6563
        },
        r0a1: u288 {
            limb0: 0xffe37462e099e48e06ed875a,
            limb1: 0xcd3e206ae87be9179e7ddcf2,
            limb2: 0xd54a9ebf09e4493
        },
        r1a0: u288 {
            limb0: 0x55a9aa7fbafdca4766a078f0,
            limb1: 0x3213fc665038539042fec6b2,
            limb2: 0x13af870f36548770
        },
        r1a1: u288 {
            limb0: 0x24ee3bcd404caf9cf1a6c2a5,
            limb1: 0xf6001187924ebd14e57af2f1,
            limb2: 0x667be457fc80b66
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
            limb0: 0x895f59ad70a1ac276ace0cb0,
            limb1: 0x5779e6bf23f86f06ab9709ad,
            limb2: 0xbec19f1d7681f0e
        },
        r0a1: u288 {
            limb0: 0xedc12f333f6d5ae518b5aa47,
            limb1: 0xec85ef70a00afc15666af7b1,
            limb2: 0x120dba69bda46c6
        },
        r1a0: u288 {
            limb0: 0xae847694b49ed2520db5d0a0,
            limb1: 0xad44a5afeaffa27fb21df43d,
            limb2: 0x1150582f639e392b
        },
        r1a1: u288 {
            limb0: 0x50aa74143ccc5438a941d2d9,
            limb1: 0x2e2d75e4f807b8ff297590d8,
            limb2: 0x1fd93ae2a7e620e5
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
            limb0: 0xbf7aad5835be2103f6830a3a,
            limb1: 0x1926f90b02ba301403a258d9,
            limb2: 0x6e89e35e199eef1
        },
        r0a1: u288 {
            limb0: 0x2162cf499301190cc478541,
            limb1: 0x63f31ef45cf8a114d6ea50c8,
            limb2: 0x2a9a99a469ad08de
        },
        r1a0: u288 {
            limb0: 0x7f9a6e5f2f2c6e6d5ed55ee2,
            limb1: 0xf24796a075a6113c7fde849a,
            limb2: 0x80e8c1f10093652
        },
        r1a1: u288 {
            limb0: 0xced4a8a313924ee3d14265e2,
            limb1: 0x3e22ec913515ddc5bdf31e7,
            limb2: 0x1f75e9aca3768492
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xef739bc012ff3aca5387eb44,
            limb1: 0x90246c4bffff85fe1ac4c9f2,
            limb2: 0x2687afa0c8a87540
        },
        r0a1: u288 {
            limb0: 0x2cec5cc7ef6447bbfb2272df,
            limb1: 0xb6c45fa5f9da3937989a60b2,
            limb2: 0x28f4229e943775c3
        },
        r1a0: u288 {
            limb0: 0xeaf03f765d13d7ec0789ca69,
            limb1: 0x52e67e711eb01921fd865fa,
            limb2: 0x243f90bddd0df092
        },
        r1a1: u288 {
            limb0: 0x50f75b918fd922be46bd30c6,
            limb1: 0xaed86e877507fd47c3830b14,
            limb2: 0x15fa617d7cd2d033
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
            limb0: 0xe2f05da289df84ebfcb2d4dc,
            limb1: 0x6b6a0ac832625e8bc4bb0393,
            limb2: 0x808424bd8cda416
        },
        r0a1: u288 {
            limb0: 0xee6b5631f7ba3778b566e1f2,
            limb1: 0x16f599a37bab5304aafe15a1,
            limb2: 0x101adab3317df05
        },
        r1a0: u288 {
            limb0: 0x2300b14047057ffa9ec06c56,
            limb1: 0x7b6a8c94746a393c593a39b0,
            limb2: 0xfa4616728720ade
        },
        r1a1: u288 {
            limb0: 0xfad647003e853c91df219d73,
            limb1: 0x3b8701e9630d72fbeaf6bd72,
            limb2: 0xf4442596ebb6228
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
            limb0: 0xc68057687471b9d0583a86be,
            limb1: 0x63ad18042ac265183c1362fa,
            limb2: 0x16a4c9b274e7d6c4
        },
        r0a1: u288 {
            limb0: 0x2b09bc0c4d8feba7cca76a38,
            limb1: 0x6729e68524fa17073faa234d,
            limb2: 0xf695c9220cfe792
        },
        r1a0: u288 {
            limb0: 0xc4ed82f3799ac5ec086ea74f,
            limb1: 0x1900f966801f66bc59773b12,
            limb2: 0x109131fd0da09140
        },
        r1a1: u288 {
            limb0: 0x728f2c8aabe3aab43818e500,
            limb1: 0xaa5b16cf38271d60bc8ad009,
            limb2: 0x8529dddb2faaa16
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
            limb0: 0x796a47aafd89ab46dfb5ce8f,
            limb1: 0x1d2015839b483abb96ee7855,
            limb2: 0x2de2ddfb34998c4c
        },
        r0a1: u288 {
            limb0: 0x553b19d54fbeb3dc779b0b91,
            limb1: 0x57e7078560381b91f1b3b6ce,
            limb2: 0x1c27c8371a813b29
        },
        r1a0: u288 {
            limb0: 0xeb9848304f539c2829bf5035,
            limb1: 0xf26789da470982adde49af24,
            limb2: 0x1ba09451e133a792
        },
        r1a1: u288 {
            limb0: 0xa6b12f1536488322ec2b7451,
            limb1: 0xeebfd182cabbd8021e37ada6,
            limb2: 0x2e2848cb63c062ac
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
            limb0: 0x8538d3619540b28476e0738f,
            limb1: 0x23a3036d312956c2658300e2,
            limb2: 0x28ba3b284603e7ef
        },
        r0a1: u288 {
            limb0: 0xcb25eab3ae1959f93c330dd3,
            limb1: 0x9bec8eb68b8085ecf79fa720,
            limb2: 0x2af54f5f99faf078
        },
        r1a0: u288 {
            limb0: 0xc2121eb13dc3b7517ae9d5cc,
            limb1: 0x451139578c50ef65a43364c7,
            limb2: 0x4e8f8e3318b32f0
        },
        r1a1: u288 {
            limb0: 0x5cfff870ff722e8ac875e267,
            limb1: 0x146fc279f528f4054057ce90,
            limb2: 0x1e2f5adfc3e8cdb2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa665bcb3e2d83e8879827fbe,
            limb1: 0xd55cd260e35b656b4d1651ac,
            limb2: 0x21edb166106e3563
        },
        r0a1: u288 {
            limb0: 0x9385564942739d67a77020b7,
            limb1: 0xe7cb7444318526d31ca4ef72,
            limb2: 0x1dd1238c2edc948
        },
        r1a0: u288 {
            limb0: 0x225c399e6ddac28d7d2aca61,
            limb1: 0x214f9b5c086dc6dc659ad093,
            limb2: 0x2be2e445d66338fa
        },
        r1a1: u288 {
            limb0: 0xeaa56fa08e2cb7a338c251fc,
            limb1: 0x690a37059ec4bac765b405ef,
            limb2: 0x22efd2ac8547325e
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
            limb0: 0x8861d2ba57a59fff9c75b027,
            limb1: 0x3dfe1e36614907794e29dc8f,
            limb2: 0x28ae7aceb8275ba8
        },
        r0a1: u288 {
            limb0: 0x9b1bc4441bce13464822a3d2,
            limb1: 0xe5ff4edb437d52c22962161b,
            limb2: 0x16496ef45b273e23
        },
        r1a0: u288 {
            limb0: 0xd4f3ea6b741ae0bb2095f3d9,
            limb1: 0x915f7f5e14e3a9b41a10f4b4,
            limb2: 0x86dc409ae7a4acb
        },
        r1a1: u288 {
            limb0: 0xfd7e242811a36222ae057150,
            limb1: 0xd90b37cfdc84311e5640e93d,
            limb2: 0x2f6aaec6083e2ce2
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
            limb0: 0x47b935d0c5d57fa616a1c07b,
            limb1: 0x12784cf58bbf93c38752f861,
            limb2: 0x2b7f1e4a051cb689
        },
        r0a1: u288 {
            limb0: 0x121eabfd0332e0fc4abf3a15,
            limb1: 0x3ea69912326b2090cd2c1174,
            limb2: 0x22cd038b61a15ad4
        },
        r1a0: u288 {
            limb0: 0x77d19cb0aa03638979a1ad30,
            limb1: 0xcba51d071f2668617ecb40bf,
            limb2: 0x21e12109c9944075
        },
        r1a1: u288 {
            limb0: 0x3193d83f6b7137893160b69c,
            limb1: 0x3ebf9c6e7f980efd956675ed,
            limb2: 0x17cd23c8a572bf54
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
            limb0: 0x860656ac1cf28331919c870d,
            limb1: 0xf019a258acbca00afb50215d,
            limb2: 0x2ed0027f43df5583
        },
        r0a1: u288 {
            limb0: 0xf09f307906fbebeeef26e935,
            limb1: 0x501bdefe242f504b57bf1039,
            limb2: 0x2375410e7b78a95e
        },
        r1a0: u288 {
            limb0: 0x5d21915a05c158381bac5c29,
            limb1: 0xe49dd9390df1d2b297edd545,
            limb2: 0x234318c3712d001
        },
        r1a1: u288 {
            limb0: 0x9bf43eec5a5f731bba59a036,
            limb1: 0xa965f674860d3cd4764fe07a,
            limb2: 0x2b92d386c15ef1ae
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf0b713bc30103b6a37980f8,
            limb1: 0xd7c928fbc64b4ca40feafb39,
            limb2: 0x286643e7ae1e295d
        },
        r0a1: u288 {
            limb0: 0x180ee357721e33f002f4bb3d,
            limb1: 0xaacf68c1b87fb20d1a765dd1,
            limb2: 0x1d4fe9828719363e
        },
        r1a0: u288 {
            limb0: 0x60272cc8cd32b6bc746a20a8,
            limb1: 0xf579f06f4e1aeb1af732e5b1,
            limb2: 0x2354e5af62a4071b
        },
        r1a1: u288 {
            limb0: 0x7dcdaa6e916696fbbc515ccd,
            limb1: 0x4382234a826ff2a8e0dde4d7,
            limb2: 0x1111cfb028ebb998
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
            limb0: 0xa71c116a291d18cb94c19b46,
            limb1: 0xd05483283cf1b95c20e767c2,
            limb2: 0x283cd735a22cff94
        },
        r0a1: u288 {
            limb0: 0xb6c0ae0bd10ed6aedd15142c,
            limb1: 0xba712c77d3aede7f00a56adc,
            limb2: 0x25e0c603cb89bf75
        },
        r1a0: u288 {
            limb0: 0x2a2c9217412cd58c532104ce,
            limb1: 0xd8992df2ac8bda2faa1fdb8b,
            limb2: 0x101960c1db970a6c
        },
        r1a1: u288 {
            limb0: 0x931ee79b1b853bf1a9a3cc0e,
            limb1: 0xa16308d94b835b914dff215c,
            limb2: 0x2cbbef29d11ce891
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x71d9499a182674f779918196,
            limb1: 0x2cb2e439c4877de68ca41c84,
            limb2: 0x11228a2962bbb611
        },
        r0a1: u288 {
            limb0: 0xd8d9a058bc0819756e4c3328,
            limb1: 0x12857816e7724715792e3a5f,
            limb2: 0x231bd5b83626da7e
        },
        r1a0: u288 {
            limb0: 0x1ef89f30a4fc14f2875735cb,
            limb1: 0x82be02cca955a08eb7f1903d,
            limb2: 0x11adb84570c1c39
        },
        r1a1: u288 {
            limb0: 0x6fcf9ee9f20df2ae13906a95,
            limb1: 0x187c4aeff38d43580d70d40b,
            limb2: 0x26b283b4de84ced9
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
            limb0: 0xe31d429e357480993fb2af9,
            limb1: 0x278ae88eb71e3f3187c4586,
            limb2: 0x10a3f9ab27db6c37
        },
        r0a1: u288 {
            limb0: 0xc10d45a86e30f44e2297e3a0,
            limb1: 0x2ea6c0ad7d83c1cc05f20abc,
            limb2: 0x2a196cd2b6e5655d
        },
        r1a0: u288 {
            limb0: 0xdf5a847ae521f00c995694ff,
            limb1: 0xa757f3d0d35c7baffedd8355,
            limb2: 0x1745df3613573bc7
        },
        r1a1: u288 {
            limb0: 0xd78b98d6b06211328ae5892b,
            limb1: 0xf3732beaeaa4a799a21b167a,
            limb2: 0x1b700eb38b3a23f8
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
            limb0: 0x8ba9fedb91268a4bc260796b,
            limb1: 0x242efb298467096e17a09971,
            limb2: 0x26bf60e59f3f3b03
        },
        r0a1: u288 {
            limb0: 0x473d51b5258c58a0ce00ebcc,
            limb1: 0x349ee9efff6cfed2a0109ec2,
            limb2: 0x6e13603ae4b8b98
        },
        r1a0: u288 {
            limb0: 0xc67e4cb3f330f7f45120b677,
            limb1: 0x4c579e914d8d7cfaffba5c8c,
            limb2: 0x11ded83c46d503f0
        },
        r1a1: u288 {
            limb0: 0x409755a35baa00852c1e3f44,
            limb1: 0x41bcb10a6a932405a9035c6e,
            limb2: 0x1fa2206e36efa4b0
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
            limb0: 0x784233eae01749670df20a5a,
            limb1: 0xf11eb9c6a6d45ba9f0a93080,
            limb2: 0x18ade49bedb78df1
        },
        r0a1: u288 {
            limb0: 0x700270c1e15df0a6d800546d,
            limb1: 0x439fffce483c0eb9e0a0351e,
            limb2: 0x11b9b3b79a7b5b27
        },
        r1a0: u288 {
            limb0: 0xabde3d6523e3f37e54865312,
            limb1: 0x8e43220678fb58172024bb79,
            limb2: 0x14e5af31974a2ca1
        },
        r1a1: u288 {
            limb0: 0x8434e8866e445e4e07c4bb15,
            limb1: 0xaa81bf025b5f146b9017f889,
            limb2: 0x292107398785981c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x359cce8b289aa29774c1dfc5,
            limb1: 0x190e2555be9f30a66a77c1fe,
            limb2: 0x15f0dd36984b314c
        },
        r0a1: u288 {
            limb0: 0x940f5068a51af6f5b21f60f5,
            limb1: 0x663bc95862909d75c276fa96,
            limb2: 0x26cf91e9d5b93f2
        },
        r1a0: u288 {
            limb0: 0x4f7b896d5807bf042e00018a,
            limb1: 0x79e92790b63b737f1c5fdf5b,
            limb2: 0x7d75bd374f0d58a
        },
        r1a1: u288 {
            limb0: 0x2016c7bbadefb7e9fafe6df3,
            limb1: 0xf23d5af24b41f53144d2a90,
            limb2: 0x13c1d7b376f02563
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
            limb0: 0x21ff40fedb7f6910ffaceaa7,
            limb1: 0x61d77a8602cf8b5372d7e7db,
            limb2: 0x4434dfb8c41b667
        },
        r0a1: u288 {
            limb0: 0x23777c5cc4d26021fe21cb44,
            limb1: 0x6fe7ce598ce1afd7cfd20aaf,
            limb2: 0x147574fdf68a8e99
        },
        r1a0: u288 {
            limb0: 0x1c8e2d3edf9c00e1fe6febf,
            limb1: 0x75e68812d41d3cbcd8b98df6,
            limb2: 0x35d3e71010f586c
        },
        r1a1: u288 {
            limb0: 0x4a115ecde39bfc2f6c6ef7d7,
            limb1: 0x2fa744247ad52b9fca8e113a,
            limb2: 0x7b969936f18927d
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
            limb0: 0xe26d52c0e7793a3608dc9717,
            limb1: 0x709b5e3982e1b332b553dda2,
            limb2: 0x2e0458736c20adba
        },
        r0a1: u288 {
            limb0: 0x48acf16c77da41489fceea1c,
            limb1: 0x7f6dccb01f9d272c9af824b9,
            limb2: 0x1e15c5fb906cd373
        },
        r1a0: u288 {
            limb0: 0x9c9c6ed30879daf287446dc6,
            limb1: 0x43ae4db14b4c5fcb0c99f8da,
            limb2: 0xfbd7641127fca25
        },
        r1a1: u288 {
            limb0: 0x572e40d5dc3526b0fbee388f,
            limb1: 0x7409aa3d2adbe035bb715fd1,
            limb2: 0x15a6280baf1d7c66
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
            limb0: 0xa3fabbf8ee4d8f4de166c795,
            limb1: 0x5fdc16391260eca9edaf83d2,
            limb2: 0x132c6c1f0defdc3
        },
        r0a1: u288 {
            limb0: 0xaeab26e7fb45883b04b6d7bb,
            limb1: 0x54c55b85f9fa72b02e72025c,
            limb2: 0x23c23e18dee15ba7
        },
        r1a0: u288 {
            limb0: 0xf8ed318f621d738a08eff9db,
            limb1: 0x177d57e9b5448181cad4c6f9,
            limb2: 0x24ba740edb3e15a3
        },
        r1a1: u288 {
            limb0: 0x52744704beb1866e19ec28a4,
            limb1: 0x2a98acfe14a71dcf2e2798e9,
            limb2: 0x549b47d2cc49c4c
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
            limb0: 0x63c1d7ceaedec3bdd54728b8,
            limb1: 0x5b2614bbb9899f11ceb53dd0,
            limb2: 0x1b87e5c39e72a477
        },
        r0a1: u288 {
            limb0: 0x592a721b4080bb5edd87df07,
            limb1: 0x4105a5464f819f6b58a0f489,
            limb2: 0x1c02b3554379e2bb
        },
        r1a0: u288 {
            limb0: 0xc5d10313f3e1ad2e358df346,
            limb1: 0x1403545d75bd3f8ca0dca2e7,
            limb2: 0xb2bb020c6e9e989
        },
        r1a1: u288 {
            limb0: 0x14ec3c2cae1df6843e483df7,
            limb1: 0xafeeb5d97d3e4a1d6a9c283a,
            limb2: 0x20a511ab2a654815
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
            limb0: 0xbeafa2a40185d24225c8e452,
            limb1: 0x1f5a6c863ded491afbca6644,
            limb2: 0x2d0d75bf43b2de9a
        },
        r0a1: u288 {
            limb0: 0xd8064b48f7adcc5ae78321d7,
            limb1: 0x5278e7792662ad666f1a3a53,
            limb2: 0xa0bcea627740223
        },
        r1a0: u288 {
            limb0: 0x2f395d8f001b284f80cfcb7b,
            limb1: 0x7b0365ce46be339aa4989e07,
            limb2: 0x20528b3207b6bdcc
        },
        r1a1: u288 {
            limb0: 0x968c58b4876730b33a42d461,
            limb1: 0x26d8244ac66f9f00db2ea7da,
            limb2: 0x13ad3e42a3b481a2
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
            limb0: 0xb886dee684425f3c431d2f65,
            limb1: 0xd04ea604ffb8f8a6fb469219,
            limb2: 0xd785a6eaaa4e648
        },
        r0a1: u288 {
            limb0: 0xc80938b2ea05ebb8741965f7,
            limb1: 0x8b95cc2b5ba2360540e6f1db,
            limb2: 0x1d909aa91cc4d27a
        },
        r1a0: u288 {
            limb0: 0xf65339325b89c74d4bf5a142,
            limb1: 0xd70e89cb17a6139101ba515a,
            limb2: 0xf9b5239f264fa37
        },
        r1a1: u288 {
            limb0: 0x4b6a05c3d94ff1ca9c9751f8,
            limb1: 0x8316f36642bbdc431657e344,
            limb2: 0x1929ef63d88759dc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x22699eefc66ded28f2ab47bf,
            limb1: 0xf708ae5cd534680157c51ea2,
            limb2: 0xed4daadefc60d22
        },
        r0a1: u288 {
            limb0: 0x41012b1789399bbb1e71610d,
            limb1: 0x67d152ef14ef83c49c7b48f0,
            limb2: 0x22e8f2c61e2e5fe3
        },
        r1a0: u288 {
            limb0: 0x66798748b4903bb3920f5f11,
            limb1: 0xa64f84d6766e10920139ec4,
            limb2: 0x2e6ba98dc7910372
        },
        r1a1: u288 {
            limb0: 0xfaac804814498f0043a09b64,
            limb1: 0x7af0eaf8e422690db0a22f59,
            limb2: 0x79392f7b14b9c52
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
            limb0: 0x191b56f02546d8961dcd63a2,
            limb1: 0x902b90597ca31f8fce6a6fe6,
            limb2: 0x2d0982e7fff8909b
        },
        r0a1: u288 {
            limb0: 0xd9c58a8cf92710421692600c,
            limb1: 0x9b3baab84f7bbe14145045f7,
            limb2: 0x548da0ab2f7fe05
        },
        r1a0: u288 {
            limb0: 0x8b746f770a7c4314a8bbf7cc,
            limb1: 0x1ec83e56f51968e35a53ee52,
            limb2: 0x11f98e2a45447c3
        },
        r1a1: u288 {
            limb0: 0x50bc5e09e092e8dd25e8e678,
            limb1: 0xef44ac51e63ece4cb545fe12,
            limb2: 0x126e2600e7e36139
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
            limb0: 0x5a2f60165c94d1c4704d67a,
            limb1: 0x9537c9437af268e860def69e,
            limb2: 0xfa113f27dd01a26
        },
        r0a1: u288 {
            limb0: 0xbe352b61a082dc6936ce23b4,
            limb1: 0xbcc6ce43808812d7cecbd81a,
            limb2: 0x254d35f97ba98235
        },
        r1a0: u288 {
            limb0: 0x16b2358bef0f38fc89c2c6ba,
            limb1: 0xa32886cb434cf1d642b60c83,
            limb2: 0x19d0ef92332149c5
        },
        r1a1: u288 {
            limb0: 0xa991dd9e0f0d53ad70b2f916,
            limb1: 0x2ae3dc9e43bb0cfc2a82035b,
            limb2: 0x19e17e780528a419
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
            limb0: 0x6bf35ce32f306d6b2cd9ff59,
            limb1: 0xaaf5768b1fe652f6c5292963,
            limb2: 0x1576d62efba1f5af
        },
        r0a1: u288 {
            limb0: 0x50446483762d482ec9828f6,
            limb1: 0xfbea58ae6271adf607534e6c,
            limb2: 0x560cefdb2da5ff2
        },
        r1a0: u288 {
            limb0: 0x9284c5115dd8ab4ebc335dca,
            limb1: 0x689eaabd1255cdf8c71abca4,
            limb2: 0x13fef2229b26ede5
        },
        r1a1: u288 {
            limb0: 0x17a5dc3fac1599365477bbc3,
            limb1: 0xdc807b3185f5a766d73df930,
            limb2: 0xa92081220e01ad7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdcef69922fd3ac596a9e262b,
            limb1: 0xb2c342dcebb253594b0f2cb,
            limb2: 0x1df840a734380905
        },
        r0a1: u288 {
            limb0: 0x6d5370653c5d4163e0fd58b4,
            limb1: 0x34ee9b20c901175f7f3752ba,
            limb2: 0x7e84649bd07c948
        },
        r1a0: u288 {
            limb0: 0xbc37b2398c90a09a61989800,
            limb1: 0x6c6948acd9d9a8055c8f0a2e,
            limb2: 0x1c83d1f8637e4068
        },
        r1a1: u288 {
            limb0: 0xe660f2a0671f38e11b9c0f53,
            limb1: 0x3dd41bfd4cc3bbe42a42f23e,
            limb2: 0x2b5f7755e34b36a2
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
            limb0: 0x19980209515edcf8ec0cf536,
            limb1: 0x3a5615cbaeed51fe0bdf28c,
            limb2: 0x2dec1534a4613e71
        },
        r0a1: u288 {
            limb0: 0xb158c5be72bafc106954a30d,
            limb1: 0xfb1c647f21849c4a1325b4ac,
            limb2: 0x56f9d47039b5d64
        },
        r1a0: u288 {
            limb0: 0x804f804dfd82300cab5d750f,
            limb1: 0xbea9f72d5fb6e691c5a4aa80,
            limb2: 0x193b26cd47363909
        },
        r1a1: u288 {
            limb0: 0x87c57bda1d17783917922377,
            limb1: 0x3a59fec7578b701b85f010a0,
            limb2: 0x183633ae8afadd9d
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
            limb0: 0xc85cc8bdafe44a9262f44835,
            limb1: 0x64e0447639966c117161181d,
            limb2: 0x2e87c264a62def25
        },
        r0a1: u288 {
            limb0: 0x166bce7be7104f3e0445a58f,
            limb1: 0x8d90e37ab78660b2c874276c,
            limb2: 0x19812b5b9550e753
        },
        r1a0: u288 {
            limb0: 0x57202755edb796dc0492f99f,
            limb1: 0xf4765c121f2b521fe8d5f997,
            limb2: 0x11b034125b0b0b06
        },
        r1a1: u288 {
            limb0: 0x4d41120380fc79cc083a0a6f,
            limb1: 0x34f3db33015fee05b631e11b,
            limb2: 0x2289f4fb61d578ec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9098edf2fe611b4a5335dc5c,
            limb1: 0xe87e297e5ea636826e6a7c4d,
            limb2: 0x2c243cbd4be84b25
        },
        r0a1: u288 {
            limb0: 0xb94300ff857fd60a9ac26658,
            limb1: 0xfe066b9a3055c4303b394e54,
            limb2: 0x129797a4adbacc64
        },
        r1a0: u288 {
            limb0: 0x9ae890181d133ad25bc7d1f6,
            limb1: 0x1a5890e9167e64e90e783930,
            limb2: 0x20ee19db7d7067f8
        },
        r1a1: u288 {
            limb0: 0x40041bd9fa5b40b78937e02a,
            limb1: 0xdbc9352fcb3c1ccdd693e845,
            limb2: 0x1f5f1ac157623900
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
            limb0: 0x599d91f982fcbd4b63d19d14,
            limb1: 0x3bc24d9234bd9de5d2bf5a08,
            limb2: 0x1826f2547acfd535
        },
        r0a1: u288 {
            limb0: 0xed409f5a22055b47f9dc705f,
            limb1: 0x16600f7adfee9a515a86ae65,
            limb2: 0xeedbcdaa4ea9692
        },
        r1a0: u288 {
            limb0: 0x873d80fd09233c815b8823bc,
            limb1: 0xa40e720a86cee634d4013032,
            limb2: 0x2940eb849a6c61f1
        },
        r1a1: u288 {
            limb0: 0xeda39f08c893ecf7cf0024a1,
            limb1: 0x3a3229c61d8bf3e861b8f1e2,
            limb2: 0x29a4ea05ab4ed62b
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
            limb0: 0x82571c9fc195c6a81f2650d5,
            limb1: 0x422d7a7bb52afb390ce21c4a,
            limb2: 0x8404409b9f4a53a
        },
        r0a1: u288 {
            limb0: 0x13187f368bd3510ba05f7d0,
            limb1: 0xaf527dcf7e5b0da1faabe18a,
            limb2: 0x69df73ac647c2de
        },
        r1a0: u288 {
            limb0: 0xa96d47f7b26d5e0e759ed2b,
            limb1: 0xf421a89a7ba9643ba5e3aa82,
            limb2: 0x2160fb6d848c38cc
        },
        r1a1: u288 {
            limb0: 0x93200cae39b76eae2acff339,
            limb1: 0x14657e89f5536894fa93c4dc,
            limb2: 0x14356071502df5b6
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
            limb0: 0x5eff54f2578c644ab5b493a5,
            limb1: 0xdb2b3031581cd9764caa84f3,
            limb2: 0x7dad7556553ed4b
        },
        r0a1: u288 {
            limb0: 0x3b81869f5c8c5cf561021615,
            limb1: 0x4f04ac88265143dd1fe9865,
            limb2: 0x263772efefeca526
        },
        r1a0: u288 {
            limb0: 0xa0b797eae61565af275e6d03,
            limb1: 0x322e943388527f5fdf1c2982,
            limb2: 0x1c6e991975c14de2
        },
        r1a1: u288 {
            limb0: 0x851dbccbe4fab422f59f38ca,
            limb1: 0x8343e9cf9de0907e2dc1d049,
            limb2: 0x7345953eb4cfb7b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfa9f869ecef34f0fd80c08a8,
            limb1: 0xf737f4405db1126c80471155,
            limb2: 0x10b151666c5da712
        },
        r0a1: u288 {
            limb0: 0xb568057f664f88d23b4492e9,
            limb1: 0x34b238d50a60b5a5a5f4d3c0,
            limb2: 0x1f01785ffba42f1a
        },
        r1a0: u288 {
            limb0: 0xab09889206685f0ff912b918,
            limb1: 0xd9c70ac854e0d965db1caf20,
            limb2: 0x102617dd5cdea4e1
        },
        r1a1: u288 {
            limb0: 0x5cdd00a0fa723018967b66dd,
            limb1: 0x91cb69490b188e34bbc885b6,
            limb2: 0x19155c63c020bad4
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
            limb0: 0x30d509a384a522fbd8d2c308,
            limb1: 0x332a658e1df035b330cfc1ef,
            limb2: 0x20d1e808bb45accd
        },
        r0a1: u288 {
            limb0: 0x31e43e3a32bc42b1c4241fc1,
            limb1: 0xa3108f5d2c7d163370321068,
            limb2: 0x2521c3bd5a76fa9d
        },
        r1a0: u288 {
            limb0: 0x5efcb0895dffa20552a7a238,
            limb1: 0xa7adec51647883805705e684,
            limb2: 0x6dac09d29df98cb
        },
        r1a1: u288 {
            limb0: 0xc77a5add82223f0bac3aa4d1,
            limb1: 0xcbb7a8b8ccf4990b156f63bf,
            limb2: 0xcbf7cdc9b6a63b
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
            limb0: 0x60e9aa37d5d524f57f2ddd8d,
            limb1: 0xbf7a5fe50a0f24bc24de551,
            limb2: 0x254d3f391c414e8
        },
        r0a1: u288 {
            limb0: 0x164f19a931bf65e55c856833,
            limb1: 0x4b01ac12ee048792459ced4d,
            limb2: 0x11fde6e50412cd5f
        },
        r1a0: u288 {
            limb0: 0xc9bf0f731c7c5bf133f67c7f,
            limb1: 0x95046b125e7bc9c3e2201d11,
            limb2: 0x1183dbc2fef2a634
        },
        r1a1: u288 {
            limb0: 0xab54fcd3e710e1fadb343aee,
            limb1: 0x60b3ee62f37b8a47d9c3228f,
            limb2: 0x2ca143c689a37aeb
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
            limb0: 0x16376313f22d4dfc83ec9499,
            limb1: 0x1195e9b0e4d6aa36e2705d88,
            limb2: 0x286f3b05143de80
        },
        r0a1: u288 {
            limb0: 0x53f218d496f1ea3c2dcd2950,
            limb1: 0xa9586bbb6ab46a57a8f6cd76,
            limb2: 0x1be1b3a37e56b9af
        },
        r1a0: u288 {
            limb0: 0xc9487478c6ae01120f1689de,
            limb1: 0xe515e5b554ee736ce6b9a0a5,
            limb2: 0x1b0d72700697de3a
        },
        r1a1: u288 {
            limb0: 0xd0ae9dc4acfcca68d1258129,
            limb1: 0x9ada6b6d1dd74d3b3ea6fbc,
            limb2: 0x263e31ebbf7dbde3
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
            limb0: 0xfee92a1a44e2a37736d349aa,
            limb1: 0xfe42867549b0e31d0675fe83,
            limb2: 0x1e7831f65b774883
        },
        r0a1: u288 {
            limb0: 0xac5abb1c4b5b6407fc58e050,
            limb1: 0x424cc0763428fdc8a67ea0ab,
            limb2: 0x50e203ef679bd93
        },
        r1a0: u288 {
            limb0: 0xbb6cb982f4b6c44449bad361,
            limb1: 0x3165e9f7af7a72ec3125a376,
            limb2: 0x229a3e456e04874a
        },
        r1a1: u288 {
            limb0: 0xa4dc7d538c195a163a24c400,
            limb1: 0x1b26f40fc282ddc8105a5398,
            limb2: 0x19b5bbae501b72ae
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
            limb0: 0xa4fb9faee06263b2d3a16726,
            limb1: 0x6d062c8819cc9c1c64c5684f,
            limb2: 0x294ff71af20edf19
        },
        r0a1: u288 {
            limb0: 0x3c03e2f08a87767f990d07be,
            limb1: 0xbd8add63612eb4cc3fd24646,
            limb2: 0x26ee431f0ce82ed9
        },
        r1a0: u288 {
            limb0: 0x478327c423aca403f37e2769,
            limb1: 0xaf0e4c8166935febf9ad3b80,
            limb2: 0x2de8853870cdf505
        },
        r1a1: u288 {
            limb0: 0xa68ce8d582f351023d301a1a,
            limb1: 0x754910b2f62e6dd66335a7fd,
            limb2: 0x1078cd605d366a90
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d20622ab8875bade2bfa2ae,
            limb1: 0x8df3e63b583615f367d8c9c2,
            limb2: 0x38a5616ee3a0a90
        },
        r0a1: u288 {
            limb0: 0xe6321a8b69bda642e680ef16,
            limb1: 0x4f7dc9008cff54434018c9e8,
            limb2: 0x8abe6233b072013
        },
        r1a0: u288 {
            limb0: 0x7fafad536ad9d9f34c0d2802,
            limb1: 0x65ea381cdab1b3dba13d0734,
            limb2: 0xf9ea26edf0cfccb
        },
        r1a1: u288 {
            limb0: 0x8aeeff222ac126cd736d76d3,
            limb1: 0xbef14aa658ebefdeed546b05,
            limb2: 0x1ed3968302e6050
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
            limb0: 0x6f68a407be4f910a4684e953,
            limb1: 0x9fab47d1a1eaa0575a14ab0f,
            limb2: 0x26b87fa46ad5014c
        },
        r0a1: u288 {
            limb0: 0x5d22cc24cff21f8a94a24339,
            limb1: 0x34f1dbe071aefb160efdd7a3,
            limb2: 0x1ac0c53a8e10b7be
        },
        r1a0: u288 {
            limb0: 0xa4401d78719c5125daf8644,
            limb1: 0x4b792cb770260ee9710a7bc4,
            limb2: 0x927bb6d9b1691b8
        },
        r1a1: u288 {
            limb0: 0xf60a4d1d59dc737f689e1f84,
            limb1: 0xd849e5d97d6f5f1402c64dcc,
            limb2: 0x230fcbcfcea6690
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
            limb0: 0x304ab1baf3290a7e52ba6f4f,
            limb1: 0xeb5bfbe41df34be62233fa4c,
            limb2: 0x232f89760079e776
        },
        r0a1: u288 {
            limb0: 0x8df36e65d704643b3795c175,
            limb1: 0xe222fcf9ccf28961c167d711,
            limb2: 0x7ab82409f5020a7
        },
        r1a0: u288 {
            limb0: 0x7b2f31b209cbe4398719ee01,
            limb1: 0x8b869ea7c00134ae4ddd3ed2,
            limb2: 0x2bffe328b8a4a19b
        },
        r1a1: u288 {
            limb0: 0xfd0a9cc12583077aad2d71fb,
            limb1: 0xaec1fed8988f9f3cf66eed8f,
            limb2: 0x148ce33cb0ff25f1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x422080c6b1d45cf537d63e53,
            limb1: 0xc5408368b6b9c3cd8126f08f,
            limb2: 0x170edc93e0285b5c
        },
        r0a1: u288 {
            limb0: 0x50050f78118e34a80b59ad49,
            limb1: 0x95e5e2fc3ad019a6cb8f769b,
            limb2: 0x2e9b380a1071f19f
        },
        r1a0: u288 {
            limb0: 0x41b467c9bc6198c91ec7bc93,
            limb1: 0xba9883d5a3af404cd1cde4c6,
            limb2: 0x105e9b7e09024c63
        },
        r1a1: u288 {
            limb0: 0x6e097630b0602580873cca2f,
            limb1: 0x44973937768dd60b2919d540,
            limb2: 0x2e5959de1496bb74
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
            limb0: 0xdb7022b84e2e5fdc813f21dc,
            limb1: 0xef7adf5af4fd6498fc833c7a,
            limb2: 0x23096d86aa941e6d
        },
        r0a1: u288 {
            limb0: 0xe28e64a0f30f7e348a23dc6e,
            limb1: 0x8d3b032748fbaa7723722c1d,
            limb2: 0x20523da90f32b470
        },
        r1a0: u288 {
            limb0: 0x44ade5934ede4f8f160983f4,
            limb1: 0x46320c83b6aa618cfa306e09,
            limb2: 0xfd6939e3321e397
        },
        r1a1: u288 {
            limb0: 0xedd4b9b8fa3a8bdd9c15bace,
            limb1: 0xdbf978f06772ac4712bd4797,
            limb2: 0x2b606d9ab307961
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
            limb0: 0xf4be5f9ce2f1ff4d67191933,
            limb1: 0xffe620b3b403bd5a248f35aa,
            limb2: 0x228778a1cff58d01
        },
        r0a1: u288 {
            limb0: 0x2c0e77665570b82828853588,
            limb1: 0x7a4ef1d38812b30e2fcb02c,
            limb2: 0x5a59f8f0894fd4a
        },
        r1a0: u288 {
            limb0: 0x7a1e55c4952e5ea073d1c716,
            limb1: 0x15c90c36b5eb78097ffce298,
            limb2: 0x5ae10d7b046985a
        },
        r1a1: u288 {
            limb0: 0x291175e37f63fc9d49482f90,
            limb1: 0xec8d03d5653643cde5b7e73a,
            limb2: 0x1e04cf663254cd27
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
            limb0: 0xcbbd423c18817563c739bbf1,
            limb1: 0x8fe99f1f1b0321e689ffe496,
            limb2: 0x1b6c0f0c65e6fbdb
        },
        r0a1: u288 {
            limb0: 0xb1c9ae4def5e60c30b4f78cf,
            limb1: 0xa27969cd2368cbaaddd1e520,
            limb2: 0x207a84dd3a7d89e2
        },
        r1a0: u288 {
            limb0: 0x88d5fe3de4d0a4e79207c053,
            limb1: 0xe6b7d37530200ae433bb7e12,
            limb2: 0x1a2bf71595e884d1
        },
        r1a1: u288 {
            limb0: 0x37c94f4be621a2a5bbcac54b,
            limb1: 0x62acd3d2d467ab4992b428fe,
            limb2: 0x10a343dd46f2a0e0
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
            limb0: 0xc151e1527199d470a6da8a72,
            limb1: 0x7240291e625f8a72d0ee4a43,
            limb2: 0x2607d40eb15dd514
        },
        r0a1: u288 {
            limb0: 0x531111ac9207ecd6f03c214,
            limb1: 0xbbec579bfd41b08b794bdaa9,
            limb2: 0x851f94f6318533d
        },
        r1a0: u288 {
            limb0: 0x6374d875c111c502c6e2fbc2,
            limb1: 0x6b0f4de55a31a822fd04b3b7,
            limb2: 0x29295941f4204cf7
        },
        r1a1: u288 {
            limb0: 0x923d83d845c9a92fade9fe83,
            limb1: 0xa4962d94e77823d051f9f3ec,
            limb2: 0x21968d0caf0156f0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1e413739f3c480b12edaae0e,
            limb1: 0x3e0b061883c665948acb8093,
            limb2: 0x9083cb6819f9752
        },
        r0a1: u288 {
            limb0: 0x5f17f9476d5cf2b998c5ad37,
            limb1: 0x4556e4264b5212696f53becb,
            limb2: 0x1160980ce838ae97
        },
        r1a0: u288 {
            limb0: 0x427ef96c817141f1a6fd1575,
            limb1: 0xaaec48070428b3f0d89562b0,
            limb2: 0x147c839e0af2e861
        },
        r1a1: u288 {
            limb0: 0x37f4a8cfccd8cfbca3bbe30f,
            limb1: 0x4ba6fe2156ae5bcc7b4b6f23,
            limb2: 0x244bc96098224b45
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
            limb0: 0xb238e3a681a1f530dc2ba28a,
            limb1: 0xcd0ef4f9b8ad379b7118d91e,
            limb2: 0x1fc08c2827c220df
        },
        r0a1: u288 {
            limb0: 0x736a08632b3213fd65d1cb1e,
            limb1: 0x464769ce355e5d3b17bc0ecd,
            limb2: 0x285fa0da9e239204
        },
        r1a0: u288 {
            limb0: 0xc64aec196b41441e69c15f65,
            limb1: 0x968fd713d2ab3d657c846a54,
            limb2: 0xab22047387d8be7
        },
        r1a1: u288 {
            limb0: 0x2fdfa1cb28182f967274467,
            limb1: 0xca3508474991531495fe4249,
            limb2: 0x28cb1b9f4eda961
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
            limb0: 0x4ee24d677a62a699e3f40668,
            limb1: 0x2b1527101c9010c0b9a94936,
            limb2: 0x24c9f6a3ce9861fe
        },
        r0a1: u288 {
            limb0: 0x81433af172b6d2a37f588f55,
            limb1: 0x74c77e79862976d9e1562d08,
            limb2: 0x1722da8074680924
        },
        r1a0: u288 {
            limb0: 0x7ff594421bda646bcc3e88eb,
            limb1: 0x65a81b6c8f2b66e7ab8a6bdb,
            limb2: 0x2df39cea57441395
        },
        r1a1: u288 {
            limb0: 0x2d048081676b3b30d868b810,
            limb1: 0x21b621699749d58fae78dd4a,
            limb2: 0x128337987784c683
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x38a10307d3f1e1f4d44939b3,
            limb1: 0x65347421dbed0a11e159e89c,
            limb2: 0x2d59fbe5129eb278
        },
        r0a1: u288 {
            limb0: 0x1a86d6bb635be73bfc1b5513,
            limb1: 0xa477e45b688a633faef74f2,
            limb2: 0x1e6a79eaf856fa2
        },
        r1a0: u288 {
            limb0: 0x5ec4de47e8969af742a29db1,
            limb1: 0x560e312d1f55dc981832d92e,
            limb2: 0xc2da83b4578b3d7
        },
        r1a1: u288 {
            limb0: 0xa97e7952a0dcdca2a0b964e0,
            limb1: 0xb9f46cfa41b699daf8169827,
            limb2: 0x41661a641320c36
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
            limb0: 0xae855e98297d59d11d013d8a,
            limb1: 0x4ba664a858ddf4e615cc86c2,
            limb2: 0x24d54de7e2ba423c
        },
        r0a1: u288 {
            limb0: 0xa97254d95041dccfaab40f54,
            limb1: 0xa4d2a1cd912fc8c952643ef4,
            limb2: 0xfebed9f4216ffb9
        },
        r1a0: u288 {
            limb0: 0x735ef43c73cca8eaa6d7048b,
            limb1: 0xc6382d5765895e602eb9e51b,
            limb2: 0x18cc09be3ee7ce82
        },
        r1a1: u288 {
            limb0: 0x6a967fb8905a166c6a476928,
            limb1: 0xc3bf799dc93b84626043d8c9,
            limb2: 0x2e4733dcd6069b5a
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
            limb0: 0x4f52acdba2894e61042c17bd,
            limb1: 0xabf99c1b4a712ed7494f9d96,
            limb2: 0x2b8876007dc28536
        },
        r0a1: u288 {
            limb0: 0x9d5c3a55472aeff0adf8c191,
            limb1: 0x730922a33cf2af390caf0b5c,
            limb2: 0x168d78269f24728d
        },
        r1a0: u288 {
            limb0: 0x3cf76dfd5b6f1a52565fa,
            limb1: 0xc4111bf819007ee3300d49dd,
            limb2: 0x272c819cf328129d
        },
        r1a1: u288 {
            limb0: 0x595879adf65df44d309e78bd,
            limb1: 0x837f73bf44820b7d730cf34d,
            limb2: 0x24dbae3219fb6274
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
            limb0: 0xc164ab7aa2de005557a60a6b,
            limb1: 0xb490456c79ccd2396de1ea27,
            limb2: 0x2274216c276788d5
        },
        r0a1: u288 {
            limb0: 0xe5d937651b396a44354ff58c,
            limb1: 0x98ac4746e444acd0fae449a3,
            limb2: 0x209c5a356c7a78c3
        },
        r1a0: u288 {
            limb0: 0x88aff874be77a95cdfedc1e7,
            limb1: 0x64f026cd710d262f446a9e90,
            limb2: 0x10cf0b9b4038e3a5
        },
        r1a1: u288 {
            limb0: 0x6257ef44ec8092468398047c,
            limb1: 0xe5db3461f1d9b86301e58d8e,
            limb2: 0x2c6f1510cdd7f7e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c0f9c61683f7780cec19a3a,
            limb1: 0x467a710ffb91056a221a2c55,
            limb2: 0x2a263dfa85d5ac53
        },
        r0a1: u288 {
            limb0: 0x80a76fa378085e886388e913,
            limb1: 0xd1b4bcb9c70f64e1580da52c,
            limb2: 0x2ea88228a5015838
        },
        r1a0: u288 {
            limb0: 0xd25bf3a3fe47fb63d7673668,
            limb1: 0xef5b238b88b6ea7c7574aba0,
            limb2: 0x19c5c14297f1904f
        },
        r1a1: u288 {
            limb0: 0xe6b01454fb6c17400bdde1e2,
            limb1: 0xbf6a23a4fcab9a669fd9c71a,
            limb2: 0x126a768c2543d840
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
            limb0: 0x5c027c80db8fbb57737e43e4,
            limb1: 0xb5758ca9cb8ff2c094bc1f2f,
            limb2: 0x11edb02812ee7674
        },
        r0a1: u288 {
            limb0: 0x155a1b86e48e11aac4e6699d,
            limb1: 0xd515c2b7ac20025bdb9de03c,
            limb2: 0x1d24b83cf5e9f781
        },
        r1a0: u288 {
            limb0: 0xdbeaee6f498ce865f96e5e6c,
            limb1: 0x25ba4b42f124bad225bb6368,
            limb2: 0x241d7dccbab03e64
        },
        r1a1: u288 {
            limb0: 0x1956f6a7d97e821a5571d3e8,
            limb1: 0x9dce4bcc5c86234943d4dad8,
            limb2: 0x1126bf017c84e9cb
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
            limb0: 0xaa095b076ca331f679cc3bff,
            limb1: 0xac5ca1a19f88d65f75689241,
            limb2: 0x673effe4b383eed
        },
        r0a1: u288 {
            limb0: 0x2b4e00d9671e139b65619ff,
            limb1: 0xbd523c44843b6429f6690b86,
            limb2: 0x28b7e4b843ee0be1
        },
        r1a0: u288 {
            limb0: 0x15760115d392eb22b9fa0767,
            limb1: 0x4f55f7bd8605cdfc3508152e,
            limb2: 0x102d212e39e598b4
        },
        r1a1: u288 {
            limb0: 0x6a21590ba5649b89f4f47c82,
            limb1: 0x82d7116c104c2df889b589d7,
            limb2: 0x907909d6e14abfd
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
            limb0: 0x1512bfd51e0110827cefadda,
            limb1: 0xa4869647f2cdade09fde6b0c,
            limb2: 0x25bb6c5a4e2a1e45
        },
        r0a1: u288 {
            limb0: 0xdbfe49ca720b3e25de984a6d,
            limb1: 0x6f474decd95cb6e94192434d,
            limb2: 0x2509bc75b725833c
        },
        r1a0: u288 {
            limb0: 0xab9ab60650e5a97a83313736,
            limb1: 0xfb1e6bd72bfaa15219b24365,
            limb2: 0x1f5cfb78b5b62273
        },
        r1a1: u288 {
            limb0: 0x8629f7e4305da4301ebe137a,
            limb1: 0xc12e28c92ddd88cb1de5d238,
            limb2: 0x26e5947d764696d8
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
            limb0: 0x279ca2acd13ea9ffcc8fd4b8,
            limb1: 0xc5cfa5effa42e0adc92a6514,
            limb2: 0x2a9357af52a01d39
        },
        r0a1: u288 {
            limb0: 0xa5742208f1b1d8a5e07e090f,
            limb1: 0x2bb8592fe9d5cf9840910402,
            limb2: 0x2119e3bef03c2963
        },
        r1a0: u288 {
            limb0: 0xa741a8a16766edd925d8d46c,
            limb1: 0x46a36b183258df28cbaca99,
            limb2: 0x3061d51d18c4169a
        },
        r1a1: u288 {
            limb0: 0x4dc23e7c3e6afe381b71810a,
            limb1: 0xfcfca0396a6db96922904f93,
            limb2: 0x24531bd27d779eef
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ff1dc48ffb197ca6274aeb2,
            limb1: 0xd1bcab6ad7afb01b297dcf24,
            limb2: 0x29a3b1257b38bdb4
        },
        r0a1: u288 {
            limb0: 0x585ff529d7ade8c1070813f6,
            limb1: 0x73c4980ed012da6f38464edf,
            limb2: 0x72552d1ced559e9
        },
        r1a0: u288 {
            limb0: 0x90e7d808deeceac887a7bf79,
            limb1: 0xa1266786f5e01afce7502a96,
            limb2: 0x10a20ed5e1db8113
        },
        r1a1: u288 {
            limb0: 0x5c6f52d8bcad3cd3d13ec877,
            limb1: 0xba615ca5a3675523611f2e95,
            limb2: 0x2e25b0e014e42a28
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
            limb0: 0x4f94860cb5d02b40ff1cd42c,
            limb1: 0xe8047e3fc949cd029518b093,
            limb2: 0x6c43062f5f80e0a
        },
        r0a1: u288 {
            limb0: 0x76e7695ba1616beb9030185a,
            limb1: 0x90d1b5f779399f4da3218133,
            limb2: 0x69249799cf0cbe7
        },
        r1a0: u288 {
            limb0: 0xb6771f3fb2b0deb6cb7d7638,
            limb1: 0xbc7851cf5292124a046829b4,
            limb2: 0x15a0f498ed4b0622
        },
        r1a1: u288 {
            limb0: 0x9e3aeacfa75c5ab51ed07435,
            limb1: 0xc018dd44154132a95846496b,
            limb2: 0x11e5c623030a9c22
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
            limb0: 0x1d241f51825eb0a8dcb3d23f,
            limb1: 0x4c0590fad7f8a9ed1cb9542f,
            limb2: 0x22afe5443b16cf75
        },
        r0a1: u288 {
            limb0: 0x98f7a264c75e9fcdc3eceb60,
            limb1: 0xccc817b1d32868baf1528fdf,
            limb2: 0x21736d8587f90091
        },
        r1a0: u288 {
            limb0: 0xb2a1ce0ffe36d006cdafb24e,
            limb1: 0xe610de968f527297bb8d7fdb,
            limb2: 0x199c25063ac6ac20
        },
        r1a1: u288 {
            limb0: 0x535560114a08bb8fd692fcdb,
            limb1: 0x807ca3569dd4408704bb11f,
            limb2: 0x2a5909fa606bc4cf
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
            limb0: 0x2e81945e66f4684c8cb18219,
            limb1: 0xe7c1e190756fdb83fd14f358,
            limb2: 0x15b1c2160b282af3
        },
        r0a1: u288 {
            limb0: 0xeac0f3c3561245a19fe8f216,
            limb1: 0x5471c9ad1e1d99140c99dd33,
            limb2: 0x3394737fd91ba6d
        },
        r1a0: u288 {
            limb0: 0x5281c8482d0b530c3f880605,
            limb1: 0x4fc5b49010193c38eebef7d9,
            limb2: 0x1d6fc336c89f5783
        },
        r1a1: u288 {
            limb0: 0x16537955b7e100ec1764c30d,
            limb1: 0x7fc174d9ed8321c1c11c68ca,
            limb2: 0x2d19aebc5f8b26a2
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
            limb0: 0xf24c81b6824538602b749cc3,
            limb1: 0x2d727850d6b564c5283c3f42,
            limb2: 0x242957d0d7da6c0a
        },
        r0a1: u288 {
            limb0: 0x85e75887c4e72c0440ee784f,
            limb1: 0x8a6685d2cf4ed3308b691bb1,
            limb2: 0x226931914f89a851
        },
        r1a0: u288 {
            limb0: 0xcb3f556f4025cc01c5c94697,
            limb1: 0x459e5a2026d565da33eaed01,
            limb2: 0xe4ef8d2a6576ad0
        },
        r1a1: u288 {
            limb0: 0xbfb4b14fa5618b8c95e4a18a,
            limb1: 0xbcac92a4464d9df58074876,
            limb2: 0x1f27a904f71482d4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce7db6db1cd509003cc357da,
            limb1: 0x5d34240e1180a1cb19856a57,
            limb2: 0x26f020db17901a13
        },
        r0a1: u288 {
            limb0: 0x2c9e233898ec3a1452b4814d,
            limb1: 0x27b8c2806e7c5c17c6010f76,
            limb2: 0x1d321bdb80a86bc1
        },
        r1a0: u288 {
            limb0: 0x362d637bee1131aae35fe256,
            limb1: 0x8298edad480899c2e9e4d568,
            limb2: 0x15e9c7d261c1a417
        },
        r1a1: u288 {
            limb0: 0xe82f8735a699f997afd71235,
            limb1: 0xc5ba9ebf3b67926863622561,
            limb2: 0x211201a5963a301a
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
            limb0: 0x975febfa4bc786c59ef78cdf,
            limb1: 0x8605bec1d6cf99ce36809000,
            limb2: 0x104a0793f988b400
        },
        r0a1: u288 {
            limb0: 0xe04cbe22fe68b6439c5cdbb6,
            limb1: 0x6dd7b79c94f9749f9cdca500,
            limb2: 0x2424ca4646c32c54
        },
        r1a0: u288 {
            limb0: 0x797bb8a5b14ae6acaf849176,
            limb1: 0xa138dfd149409d62831c9e90,
            limb2: 0x230dd43bee9cc8c
        },
        r1a1: u288 {
            limb0: 0xb15fc7c210acf227c9bc0cc8,
            limb1: 0x8608cdabe7dac8725afcd6a1,
            limb2: 0x26ee6a91a649c449
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
            limb0: 0xc929edc4944e2f343266acee,
            limb1: 0x3581ca839ba9aa1a39aaa66,
            limb2: 0x93ffa9b8b230bd2
        },
        r0a1: u288 {
            limb0: 0x1c9f111aba3f29b99a2bb027,
            limb1: 0xaafdb31e32beee42aa80a49b,
            limb2: 0x101b54697ce7c32e
        },
        r1a0: u288 {
            limb0: 0x1ef870bbf94718cfe18dfa6f,
            limb1: 0x59ae248cb5f063390bd0b667,
            limb2: 0x57dd5227e5306d7
        },
        r1a1: u288 {
            limb0: 0x88088135611dcc1c0d273a09,
            limb1: 0x4b3b969c6cbef026c41fe9db,
            limb2: 0x1dde26d94e494022
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa85e67924e9cc3bfb21a3f27,
            limb1: 0x16946cc09d8c36657f9509fa,
            limb2: 0x2f49eb6c07948fc3
        },
        r0a1: u288 {
            limb0: 0x127009bf5a38a630ac73281,
            limb1: 0xb138d4adbbb9a542ec2f0636,
            limb2: 0x1cbf4b06e5309bd6
        },
        r1a0: u288 {
            limb0: 0x6b52287eec945a62fc9bea18,
            limb1: 0x913115e6d1e0ac4ebb05f2f0,
            limb2: 0x146c55494dfc90e0
        },
        r1a1: u288 {
            limb0: 0x8149641b15a95207894fe37a,
            limb1: 0xd1d1cf295760ac7238da90b5,
            limb2: 0x10b55f81e5c3b1a1
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
            limb0: 0x272d75a6e27d05d8f2110b9c,
            limb1: 0x51ab37bf2f040095aa1b41c4,
            limb2: 0x296d60dd923c8364
        },
        r0a1: u288 {
            limb0: 0xbeb7db12f8fa2ccfb44f786,
            limb1: 0x61a62405f3383dae049e71cb,
            limb2: 0x1f2fa83e6849c880
        },
        r1a0: u288 {
            limb0: 0x714acada66bdf61061a2aa3e,
            limb1: 0x16f2fc5df0acb1ee20489705,
            limb2: 0xb2b25f9daed3af8
        },
        r1a1: u288 {
            limb0: 0x4124a84bfafb03085869c160,
            limb1: 0xe95f0d028dc2235fab93f172,
            limb2: 0x1904e2f84ae426de
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47dc23045c68363b970aa137,
            limb1: 0xe3f6f88fb6f41aa9e2c179e5,
            limb2: 0x100b8cfa4a007469
        },
        r0a1: u288 {
            limb0: 0x27d113cf8c799035550c41ff,
            limb1: 0x2d78c4e9aa4b13c7f0dd9e00,
            limb2: 0xbfc5ee6b8049f58
        },
        r1a0: u288 {
            limb0: 0xed1b7e2c6fff3bd185b8c4c0,
            limb1: 0x6c08864454612a0dca4fff5a,
            limb2: 0x6d1d0ce7dfcb4d3
        },
        r1a1: u288 {
            limb0: 0xa52143ceacdb5a39ad30d5d1,
            limb1: 0x3243a254e4aaaed25d63b284,
            limb2: 0x17861603e54d6144
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
            limb0: 0x43fd3503c08f6b83b7a31815,
            limb1: 0x75c747965638e7eb35302d7f,
            limb2: 0x12adeb187173e4e8
        },
        r0a1: u288 {
            limb0: 0x4b368d64a3df5b66f3cb7058,
            limb1: 0x20d4686b2825e57456283b00,
            limb2: 0x24fd518fc9f959cb
        },
        r1a0: u288 {
            limb0: 0xfcb29a970b3e41a353b5f1fe,
            limb1: 0xdc316b0417939abbd43e3550,
            limb2: 0x10b19c99cdf8ff26
        },
        r1a1: u288 {
            limb0: 0xa1d141d7e126c6adab81f8c8,
            limb1: 0xd09c2a261507f52e0cbf0240,
            limb2: 0x5433624a7d35879
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
            limb0: 0x1016e323a8e677e9ffdcb4c7,
            limb1: 0x213582b720aa531b0c1cd31f,
            limb2: 0x613aab6f87422b4
        },
        r0a1: u288 {
            limb0: 0x5fb913696f7bcf43aadfdfe3,
            limb1: 0x3a659362bce02c2eb9aca065,
            limb2: 0xdb07ce6c4da6b35
        },
        r1a0: u288 {
            limb0: 0xff9b57496070f52012ffb14,
            limb1: 0x920d1689c327c761c81104af,
            limb2: 0x145691497d37bf9
        },
        r1a1: u288 {
            limb0: 0xeafcf09f42ca9248f2824195,
            limb1: 0x66b96fe7929344ccea1b8b18,
            limb2: 0x385c59630de5c14
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
            limb0: 0x5dd5112803955368ae2481db,
            limb1: 0xaaeb74a265f65b51b7a18fb0,
            limb2: 0x28b6b350fac33a13
        },
        r0a1: u288 {
            limb0: 0xed065630bfae2ae52986d00d,
            limb1: 0x537e79e17f49ab4de65119f4,
            limb2: 0x615b9387c8c4f0
        },
        r1a0: u288 {
            limb0: 0x19105a550aa6ddc108eebf40,
            limb1: 0x97d171e0ebb74dfd7ea1b007,
            limb2: 0x2d39906f0c24ebc0
        },
        r1a1: u288 {
            limb0: 0xfc4f40b47d534b1f469e5fd3,
            limb1: 0xb701544275311017a358739b,
            limb2: 0x23a1a5bf129f7ad6
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
            limb0: 0xf7ef0fd148013d937fb79692,
            limb1: 0x5067969e7ce7e63c7efe668e,
            limb2: 0x37829586a6bb879
        },
        r0a1: u288 {
            limb0: 0x4a6f23e81c8ef76c50332b11,
            limb1: 0x213d3e171fb2ec1befe64bf8,
            limb2: 0x95b14cef0e786ba
        },
        r1a0: u288 {
            limb0: 0xb8d0b9bfd38aaee64e9abcba,
            limb1: 0xfaab7f184c517776d69cf0a3,
            limb2: 0x1eb0369eaca9895c
        },
        r1a1: u288 {
            limb0: 0x5ea47d4753550c168bc5edb,
            limb1: 0xb7e826dfd709b0d5be9dd586,
            limb2: 0xb2a024f401c7ef8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53e7a3d48e4d453dd06da903,
            limb1: 0xdf6a6209eaf64b56cf67abc1,
            limb2: 0x221644d824a1a307
        },
        r0a1: u288 {
            limb0: 0x204b5e874a3012ba0c4c386,
            limb1: 0xb1f3d204d6f4f87c5db25aac,
            limb2: 0xba9dc698f8f42be
        },
        r1a0: u288 {
            limb0: 0x4090c27323fa8e0a4265db7e,
            limb1: 0xaef7b71e7d0de8dd70fdd778,
            limb2: 0x470a57a8385bb34
        },
        r1a1: u288 {
            limb0: 0x6ed28c11f1cf42ab93bb2aa6,
            limb1: 0xaeca688422c6d4b997144382,
            limb2: 0x16e75d6dbf4e3c74
        }
    },
];

