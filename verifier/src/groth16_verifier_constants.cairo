use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x2b2179b945beb53e58721731,
            limb1: 0x8772806455f4f203fb245522,
            limb2: 0x12afec2e3dd5d647,
        },
        w1: u288 {
            limb0: 0xfe64aeaf3bc677d1d715b851,
            limb1: 0x711155178dacfeb6e1d7e4af,
            limb2: 0x2e4fc343a5472f5,
        },
        w2: u288 {
            limb0: 0x35660584f96b9326a474acca,
            limb1: 0xe52918db373fd3232f50b399,
            limb2: 0x1befe06f3e7f7982,
        },
        w3: u288 {
            limb0: 0xf825af76606dbd6436a7096c,
            limb1: 0x22177784240c0f782c773e6c,
            limb2: 0x20a1623320a7c8e4,
        },
        w4: u288 {
            limb0: 0xf04063de3c87d752c11071da,
            limb1: 0xb5131567006ab4f8d7e760ef,
            limb2: 0x240d4d2ec8c0f01,
        },
        w5: u288 {
            limb0: 0xae98482331aee95a6a9b75f7,
            limb1: 0xe299808735f76c594f5e0553,
            limb2: 0x18d3a103a8141db6,
        },
        w6: u288 {
            limb0: 0x3357b2a376adfc2b3f9a458,
            limb1: 0x8587d1b228aeea281ce33c78,
            limb2: 0xec3d74e8717b5e7,
        },
        w7: u288 {
            limb0: 0x5a734515875ae4d31000be6c,
            limb1: 0x1e43f0faf0b45a491766af1c,
            limb2: 0x58cb5f4bbfbb25b,
        },
        w8: u288 {
            limb0: 0xc28c628335cd59308cf0e70c,
            limb1: 0x410751596e62b1f127cd2523,
            limb2: 0x251aaf58470d6a3b,
        },
        w9: u288 {
            limb0: 0x9d9fa68d7fabb3fd2996ac95,
            limb1: 0xa4f8c7eaca7e69b853f8cca2,
            limb2: 0x17525ffd97a09133,
        },
        w10: u288 {
            limb0: 0x92117ff5cff1abb0a6089e57,
            limb1: 0xa5f33caf11f189e9cd4a569c,
            limb2: 0x16b0a8cd7d33fef1,
        },
        w11: u288 {
            limb0: 0xbab770f128dc92b332c5cbc8,
            limb1: 0x24fe1cfe226e5efe338bbc70,
            limb2: 0x216f74df15bb3976,
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
            limb0: 0x4c9b5ba92ff7a886649f9876,
            limb1: 0xb12e058707b0f67cff1af6b3,
            limb2: 0x6525782b35a9be7,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x7bf30699496d78f6667ae58d,
            limb1: 0x98052ab6149f5303c1ce29c7,
            limb2: 0x2b3552bfe9d34259,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x3cee0407648c087045d724ee,
            limb1: 0xdd4f7f3f4f5edbf536ce6ed1,
            limb2: 0x1ecc019a9b14a645,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x31cc6fdaad27c61a00c1172c,
            limb1: 0xad17bd2e55ba06a6017a001a,
            limb2: 0x8b9cbef9f24d0fc,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 7] = [
    G1Point {
        x: u384 {
            limb0: 0xc7f9f93839148cf45e23d7c,
            limb1: 0x394bc2790afd5d96965f7ed,
            limb2: 0x60b42139b901001,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x3b3db0525892f12c133e887e,
            limb1: 0x34220a6a05f6f2a614463adc,
            limb2: 0x42fdc91bcc2b25d,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x294645d12cf5cf3f28091a80,
            limb1: 0x1c0018e48d86265efda5ca3f,
            limb2: 0xfd978a075074103,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x98a193a246513dcb5a93839a,
            limb1: 0xc00c5abf7868abdb185b0d6d,
            limb2: 0x168530b77673281,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x4548d78c3f0a93a878c2c7d2,
            limb1: 0x382302e63ae70ebe4cd37fd1,
            limb2: 0x1380056cb7b47d69,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x4bb7278e60e628e8d0779e92,
            limb1: 0x2e905c99e8a446950fd74c47,
            limb2: 0x6ccbff7c5e8e0fe,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x5680031a6e856a99d8e8db4b,
            limb1: 0x490d5016e158fe3321f536e6,
            limb2: 0x102a4dbefc5af6ea,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xb31466c80683d7a24e5f6c6b,
            limb1: 0x92e1d78869a52d3dfee1d35f,
            limb2: 0x20c61f5629765964,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xfed251c9ea63e247f9a03c2f,
            limb1: 0xf60a9ad3332ee248f2349cc0,
            limb2: 0x829b33530be24a2,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xbf3e7a2be975d5dd156928e0,
            limb1: 0xb1addc4aaaff81aa9b07f5d6,
            limb2: 0x19e9d93d23ea7c60,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x2c5244fd3240e0d165621cd5,
            limb1: 0x889ce0b74de79feb68992f95,
            limb2: 0xd6ff20a46d1c470,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x61f8b5021fbda458e33e32e0,
            limb1: 0x5689bdf617f1b3115ec967e3,
            limb2: 0xc64edac0e55b8b5,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xbb6748053ddf473b38c71385,
            limb1: 0xf1c885fa2896a8119585f301,
            limb2: 0x9aa053450c4206c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe089871d5a42e164a153ad06,
            limb1: 0x34cc5ee32d50878096174b4c,
            limb2: 0x35c6b9dc1442281,
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
            limb0: 0x4537a90b26c988ef2e6eff6c,
            limb1: 0xda7b30d283f7a6e7bc4f96ad,
            limb2: 0x1b1b9306679d864b,
        },
        r0a1: u288 {
            limb0: 0xeb6420ce1ddee5c74d36de2b,
            limb1: 0x6144c8997f329c1aa8739acd,
            limb2: 0x26b62f3905b893b4,
        },
        r1a0: u288 {
            limb0: 0xc9d9a873414d12e555c777b2,
            limb1: 0x8ee83c85bad6d1a8dbdd3bd7,
            limb2: 0x2bef233ccc518df9,
        },
        r1a1: u288 {
            limb0: 0x3e8d3c32cf4d96336ec9661f,
            limb1: 0x9070d48ebab41e8fafa4126e,
            limb2: 0x1cfc191900de50e8,
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
            limb0: 0x233a218215570327aa0dfddb,
            limb1: 0xddd514e3fd89b175db31d3e4,
            limb2: 0x1548bb6c799419dd,
        },
        r0a1: u288 {
            limb0: 0x7d0da9bf1e41a64f8b461f1c,
            limb1: 0x570b7d1d024ebc42ef0dcfc3,
            limb2: 0x9ae1f39db790c75,
        },
        r1a0: u288 {
            limb0: 0x9e982219fad3793182b58595,
            limb1: 0x29680930c6aa86b4bba42eb9,
            limb2: 0x4752b3614e01230,
        },
        r1a1: u288 {
            limb0: 0x29e48e5a6cd2f5e369b39728,
            limb1: 0x27df7127c6cd39cde7dd5823,
            limb2: 0x13683559e0534f41,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4115a32a73d8d074f3ccc348,
            limb1: 0x72032be6008174c2cf2e9cc9,
            limb2: 0x2306e9d6389fb72d,
        },
        r0a1: u288 {
            limb0: 0x6208c069db7d9dc45cac166f,
            limb1: 0x1222faf34e7d938e5dfd8b22,
            limb2: 0x10a733c9ebb0b7d4,
        },
        r1a0: u288 {
            limb0: 0x9110678f37f7442dc8b8e536,
            limb1: 0x4a66b2e1c740bd3e16c659bb,
            limb2: 0x5090101cf79cfd5,
        },
        r1a1: u288 {
            limb0: 0x63f365136207c5e644712267,
            limb1: 0xc3da209690e205b9638672ef,
            limb2: 0x4e7a88cf548a722,
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
            limb0: 0xf06aae1321bc0eec5588a67,
            limb1: 0xa7b124d0b6329d14598b5770,
            limb2: 0x96f55209de2d57c,
        },
        r0a1: u288 {
            limb0: 0x78f7993202d8479bc019d1f2,
            limb1: 0x6a6be5fee05fc75a2649ef9d,
            limb2: 0x2afdc7ee98370fd6,
        },
        r1a0: u288 {
            limb0: 0xf0d885f79b45b3330f7aed,
            limb1: 0xcb8fc653a906b625b00838c2,
            limb2: 0x1df61ca4f3d4324b,
        },
        r1a1: u288 {
            limb0: 0x7a8718bacc0e069fbdc80bf,
            limb1: 0x3ec28ebf22af0631b445e90b,
            limb2: 0xc8321c2b146c130,
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
            limb0: 0xb3b82b63e9d3309c7529e58,
            limb1: 0xd9e5d943675ac919f11eaa17,
            limb2: 0x2a1a543e1e5a372c,
        },
        r0a1: u288 {
            limb0: 0x39aa549446f657d82ab92999,
            limb1: 0x59ecd3832828cb77fafa9c76,
            limb2: 0x263761669948afb2,
        },
        r1a0: u288 {
            limb0: 0xe96a980f5af72a774f6a3585,
            limb1: 0x1b34376bb4efe952ccf337cd,
            limb2: 0x8e02c8d97c5fdaa,
        },
        r1a1: u288 {
            limb0: 0x6d713048a13d947375f02ac7,
            limb1: 0x3f36b1759338157781d43512,
            limb2: 0x1cd71073d46bba77,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa6767f1003c0274cb21324,
            limb1: 0xbffd8b40c25feaf8030ff71e,
            limb2: 0x77607ec1ee657b5,
        },
        r0a1: u288 {
            limb0: 0x17cd306360ab7280e33a098d,
            limb1: 0x2540a9b493d6243703538dd6,
            limb2: 0x2e0c2227e989e111,
        },
        r1a0: u288 {
            limb0: 0x4c9b0ce4b9fda09a364dab7d,
            limb1: 0xee0b2c8cf506735f0e205010,
            limb2: 0x2089782824ffeace,
        },
        r1a1: u288 {
            limb0: 0xcc9c6b0ea2ee4a1e7cfa874d,
            limb1: 0x78c53996b02104f8a9020f1,
            limb2: 0x14e2417f4a78dd1,
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
            limb0: 0x1ed836e0fbdc891501094562,
            limb1: 0xafeebc37aec2f9fc77475c65,
            limb2: 0x10412f61011c0402,
        },
        r0a1: u288 {
            limb0: 0x6be4d6f1c7f937dfefd25e2e,
            limb1: 0xa9fb34d4c72eea35952b71fe,
            limb2: 0x15ee2975ea21099c,
        },
        r1a0: u288 {
            limb0: 0xf55f022218bc8045914f09f5,
            limb1: 0x4f2b5fa94d89d9b0bd8927c2,
            limb2: 0x27559400cf9511d4,
        },
        r1a1: u288 {
            limb0: 0x7bc1ec900a6e1b57b7f23e0b,
            limb1: 0x920424a96c82790870a42c9d,
            limb2: 0x15df8fbb8dd701b,
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
            limb0: 0x5610892f989f1d0c9cca0aa0,
            limb1: 0x5e649ae4b39168427d6989bb,
            limb2: 0x2b6e8eba123a1755,
        },
        r0a1: u288 {
            limb0: 0x5b1cc6161c75074dea3693a6,
            limb1: 0x9c3f381e6fa84f5ccd7158bb,
            limb2: 0x15d8e88aa32bef9a,
        },
        r1a0: u288 {
            limb0: 0x86329588ca4821d5e6b85309,
            limb1: 0xd85eb6a74b75c7940f8acbb5,
            limb2: 0xd5ed3dac5b1efd,
        },
        r1a1: u288 {
            limb0: 0x84e679a40201e3f55bc3b790,
            limb1: 0x771c3f36ffc4370bbccee2ba,
            limb2: 0x1b40b0e568b6324f,
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
            limb0: 0xb00a536e366de0db1e679f9d,
            limb1: 0xa9a52573f394c2c7b15cbbed,
            limb2: 0x190af7c3464e3f08,
        },
        r0a1: u288 {
            limb0: 0x652d7276251e479c3ecf43a2,
            limb1: 0xea0f226ed06292a0e9212a43,
            limb2: 0x27b6bcd0383f59a6,
        },
        r1a0: u288 {
            limb0: 0x8cf3db0daf242cba04c4fb6c,
            limb1: 0x16f4b8c064f304386758cf1e,
            limb2: 0x2067911751f81a3c,
        },
        r1a1: u288 {
            limb0: 0x2194abfdc1948e4bb28d0899,
            limb1: 0x7719f939e89c87a35b9057b4,
            limb2: 0x110c3cce35fa0225,
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
            limb0: 0x9515a014f51335f85ff87009,
            limb1: 0x7988f7ea63e30390ea4cc52f,
            limb2: 0x50f21affcb2a55e,
        },
        r0a1: u288 {
            limb0: 0xff79525031223d8d2ed9e18b,
            limb1: 0x4de31b98f2c86554d32545eb,
            limb2: 0x1498345bbb796eaf,
        },
        r1a0: u288 {
            limb0: 0x955701b206887daa418b66c0,
            limb1: 0xa5c2cc8ded8a809c3faaa33c,
            limb2: 0x109854d148840a91,
        },
        r1a1: u288 {
            limb0: 0x418b713b79ab4234fdd9baa4,
            limb1: 0xb1e9c45d36a7443d2ae85f0a,
            limb2: 0x2746f0dff61dc018,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4546a92274507ada8f07820b,
            limb1: 0xe836423e802b54f47d2b1f55,
            limb2: 0x16adddf11d84365a,
        },
        r0a1: u288 {
            limb0: 0xc6f6fbbfb2a57010cff1d0de,
            limb1: 0xcf8b7472e5c327ebb41f7607,
            limb2: 0xe7f00d178c56313,
        },
        r1a0: u288 {
            limb0: 0x5359a23026728d93f2ae19dc,
            limb1: 0x1d0fe7099872644f157aef35,
            limb2: 0x99a2f21a583e325,
        },
        r1a1: u288 {
            limb0: 0xfbf54fbc6a70cfb2d230deda,
            limb1: 0x6dc06a0df75dc4c54c009559,
            limb2: 0x94387c8cdb5a458,
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
            limb0: 0xc3da6cbf3641cca0da10939e,
            limb1: 0x30fab559f1b096025a7211e9,
            limb2: 0x13c176ace125e305,
        },
        r0a1: u288 {
            limb0: 0x6e96cadff1cf4db8832902cf,
            limb1: 0x9dd4b2681206cae23675ecc,
            limb2: 0x6f22a4449a7ba1a,
        },
        r1a0: u288 {
            limb0: 0x56a49e077ed755f8a9627a96,
            limb1: 0x696401ae6340df31840f9783,
            limb2: 0xdf7693e39d34138,
        },
        r1a1: u288 {
            limb0: 0x3b378cfce807ea62f2fd5338,
            limb1: 0xb95d46b80c973ba7aea36156,
            limb2: 0x1946e3e8f0fc0a7,
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
            limb0: 0x16a1fd32f9bdf52c8b62cc38,
            limb1: 0x7390e3dc46099fe69f9aa021,
            limb2: 0x23e6c824c956b49,
        },
        r0a1: u288 {
            limb0: 0x404e9496c92f4b3755174d1,
            limb1: 0x7987dea0760cb1bf12b0a966,
            limb2: 0x25b3e58e368a8f7,
        },
        r1a0: u288 {
            limb0: 0x5f1131e6ebed4f699fd41fdd,
            limb1: 0x6a3e93bf569649a203164937,
            limb2: 0x1ea6348e4d54c08c,
        },
        r1a1: u288 {
            limb0: 0x53fa3cf7cc22b33e1a32b63e,
            limb1: 0xf9022c37223e214e22e85019,
            limb2: 0x245554cdbade07ce,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa504906889deb5b18341eb1e,
            limb1: 0x49566e42f0d7aab1168b2ff8,
            limb2: 0x43ed2ff1590b5d4,
        },
        r0a1: u288 {
            limb0: 0x27331cfa5930f56bd5aba332,
            limb1: 0xe9e41f10ff3b612b9c0d41dd,
            limb2: 0xeef0f6f9d1db72c,
        },
        r1a0: u288 {
            limb0: 0x2b975c4aa928fbb2bb8acf88,
            limb1: 0xd6c13c17928ca9ec12629f7e,
            limb2: 0x2afa95f17fd5ab54,
        },
        r1a1: u288 {
            limb0: 0xbd1c4a34c60744ace6cf2dd6,
            limb1: 0x51e9155f15231b9f42a2419b,
            limb2: 0x106bc331451583e1,
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
            limb0: 0x88a10e84224e6895b256262a,
            limb1: 0xd4f88b9eb5331b543066921a,
            limb2: 0x6a33e2f6d5e78cf,
        },
        r0a1: u288 {
            limb0: 0xe28b284e53fc2b34e5e481c3,
            limb1: 0xb23009e4396c4c3f427e9bce,
            limb2: 0x12d96bed119770f3,
        },
        r1a0: u288 {
            limb0: 0x4d8f75ee43baae87a6d15e9f,
            limb1: 0x8587ca39d170824944b09ad6,
            limb2: 0x2968685702878afe,
        },
        r1a1: u288 {
            limb0: 0x5ba3386337fc2f2ad6832d4f,
            limb1: 0x4553afb2e4a9a54150d0590e,
            limb2: 0x21b4bb86cc786c3c,
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
            limb0: 0xf28ed6e0794a4b53e6de171a,
            limb1: 0x87bb7cd2200c71b725ffe751,
            limb2: 0x2e30ff7e0688b045,
        },
        r0a1: u288 {
            limb0: 0x1312b1e0667257204b65319d,
            limb1: 0x772bcd6491405f7e727c5d98,
            limb2: 0x2ec2a934467d796a,
        },
        r1a0: u288 {
            limb0: 0xcec4874a712329427b177e24,
            limb1: 0x327c3f6b2c8495963647317e,
            limb2: 0x25c8a4f328f472b7,
        },
        r1a1: u288 {
            limb0: 0x5c6a476ecf7e65f69acf7a92,
            limb1: 0x3c11aee5e98be4fafda88c23,
            limb2: 0x305b8177f9ab9d75,
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
            limb0: 0xc191b64133dcd43ed4e11932,
            limb1: 0x44a1d7de981133cd4df36fba,
            limb2: 0xf0069a4d16696d6,
        },
        r0a1: u288 {
            limb0: 0x69465f47d76a24cd24a83d28,
            limb1: 0x2a7cc28be3e5399e43d6e787,
            limb2: 0xba9add44a4623a6,
        },
        r1a0: u288 {
            limb0: 0xf74f08b001d9381ad654dcc9,
            limb1: 0xfdbd31d8a1cdd91fe21adc86,
            limb2: 0x2df4a3177b520d2d,
        },
        r1a1: u288 {
            limb0: 0xf209fa4df4854491464ed115,
            limb1: 0x12dabe065d4bd196796085a9,
            limb2: 0x1c2f6f54797f0970,
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
            limb0: 0xfeb26744a0c665fd3fe39832,
            limb1: 0x878b1b73c0abca57a5fc624e,
            limb2: 0x161cb51601f3c1be,
        },
        r0a1: u288 {
            limb0: 0x57b89770765810fecadb6f62,
            limb1: 0x6a7661e51b46e56b47aec6c4,
            limb2: 0xb9ab2be6e9bbaf3,
        },
        r1a0: u288 {
            limb0: 0x1816a05ddd352451a09265f2,
            limb1: 0xd850f29452014a5b4e5fa150,
            limb2: 0x1baf5e3a77fe6900,
        },
        r1a1: u288 {
            limb0: 0x70dc2cb1a47029886fc5e4e4,
            limb1: 0x861974d753ba2a4e02fb1a3,
            limb2: 0xa1be531538ea6a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x527e09babed185754450a7e6,
            limb1: 0x21ac8fc1d8a58f8b60cea686,
            limb2: 0x1127653dfd92b820,
        },
        r0a1: u288 {
            limb0: 0x6863b7610bbe113d95f40638,
            limb1: 0x13dc99f0e68da7e4adedba30,
            limb2: 0x21a440c6c3a52269,
        },
        r1a0: u288 {
            limb0: 0x83669450427d9da53eb8d23e,
            limb1: 0x79afb0ce1f8d8c7b69609fb2,
            limb2: 0x1f86fb5e5e53eb38,
        },
        r1a1: u288 {
            limb0: 0xa484ccf9c623c02844465e04,
            limb1: 0x1013918572225163ae9cf3f9,
            limb2: 0x2d53c4b31fbff70,
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
            limb0: 0x76d3d47c9973ddfb3a3097c9,
            limb1: 0xae6315ce2e8b617637c14680,
            limb2: 0x267061d262e15c13,
        },
        r0a1: u288 {
            limb0: 0x6b03141f5af314088cbe121a,
            limb1: 0xbfe8055ac12d5d599079bb49,
            limb2: 0x2b9213a022b35755,
        },
        r1a0: u288 {
            limb0: 0x9173cc811e3ee3db88b8acd7,
            limb1: 0x7540cedda17b07ce8ad2ad32,
            limb2: 0x2d6519996590d393,
        },
        r1a1: u288 {
            limb0: 0x42ab326188a1cd547531c12,
            limb1: 0xcda1a5b95eb8627d25d0871a,
            limb2: 0x178dbef944433f8e,
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
            limb0: 0x4ed1f398715e3ac3ca4d3f78,
            limb1: 0x224f5d8890a14d966bcfc1b2,
            limb2: 0x23359af62cd8a21e,
        },
        r0a1: u288 {
            limb0: 0x62996229a398ecb32f3be157,
            limb1: 0xf46df4633da45446e053c475,
            limb2: 0x3026c60a942a1ad2,
        },
        r1a0: u288 {
            limb0: 0x185ceaa44e57e86d2aa7c65,
            limb1: 0xbbd8c9c044bf39a44a45b872,
            limb2: 0x2d83ec1437437c4d,
        },
        r1a1: u288 {
            limb0: 0x30d5c2fb91e8c38b7e93b3f5,
            limb1: 0xe5122bad469e8db32371172c,
            limb2: 0x2b90f5de3b4db27a,
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
            limb0: 0xdfe71450bde43a73ccaadb6c,
            limb1: 0x2e0b4d1ea93aa2f5a92d6d7b,
            limb2: 0x1a856cfff9a738dd,
        },
        r0a1: u288 {
            limb0: 0xb8a05801d92193386a6a5ac,
            limb1: 0x7ea5aa94af198cb4fadd5de4,
            limb2: 0x22cdbaaea6e3f702,
        },
        r1a0: u288 {
            limb0: 0x876652c3f822d0eede2b8f83,
            limb1: 0x2491501c4eadf258f205d06e,
            limb2: 0x2e3cb2603995427a,
        },
        r1a1: u288 {
            limb0: 0x35f888dea48f632f3c34a95b,
            limb1: 0xaa955e0d74fbed913d4ebfc3,
            limb2: 0x14b84ed8ff7af295,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9683651fb0b350bc7cbf693c,
            limb1: 0x6c977187f4cc754601fc600c,
            limb2: 0x210b075b7dff624f,
        },
        r0a1: u288 {
            limb0: 0xa47b9cee45ebc2aff952dd92,
            limb1: 0xc037fcc9425236eb465685c1,
            limb2: 0x2f57901f9565298c,
        },
        r1a0: u288 {
            limb0: 0xd68805ff77bdd7e890ce9bf5,
            limb1: 0xcb5daa169bcf637dad56e139,
            limb2: 0xdb33db6cfcbb665,
        },
        r1a1: u288 {
            limb0: 0x3af38b14620d468ede6cb934,
            limb1: 0xb597e1c79798491cbe4b4a4a,
            limb2: 0x2b59fd10f489595c,
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
            limb0: 0xf0dc7b0fe8e22f0abf16068e,
            limb1: 0x35656495adcbbf7949095736,
            limb2: 0x622f4889eae9dbe,
        },
        r0a1: u288 {
            limb0: 0x68138e08d66a04091ff28b77,
            limb1: 0xb5651dfdb6ed65e3dd3b422a,
            limb2: 0x858629848b353e2,
        },
        r1a0: u288 {
            limb0: 0xdf30ef631beba56745f1d1c8,
            limb1: 0x9d69bb2db30153b438264236,
            limb2: 0x14d2f36a2ec92ce2,
        },
        r1a1: u288 {
            limb0: 0x5c208c2e4750a9f7af00ed99,
            limb1: 0x1ad72c4e5267b1d22cf9f689,
            limb2: 0x7173a6a0f5b07de,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b81c329e4c7a23def95f72,
            limb1: 0x14775b4f075453574b93fd42,
            limb2: 0x5901961e4002ff7,
        },
        r0a1: u288 {
            limb0: 0x900fc5e0988fcf9d548acead,
            limb1: 0xad1bc376cd3d7f0238bc586c,
            limb2: 0x11202fc6f4c0ea84,
        },
        r1a0: u288 {
            limb0: 0x4af982d7518e82deaa5576bd,
            limb1: 0x3f0385491121270f61cb259,
            limb2: 0x1590e8715c8e2f10,
        },
        r1a1: u288 {
            limb0: 0x23a488a683a26d1678a0d7ba,
            limb1: 0x4920e942555c695240bb3e50,
            limb2: 0x288448bd741d9b7f,
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
            limb0: 0x6d8724a20657953146971836,
            limb1: 0x5cd325e857a182b93b389ad,
            limb2: 0x4ede4f7e67fbe74,
        },
        r0a1: u288 {
            limb0: 0x71459fe1d259668690d0cf72,
            limb1: 0xc37b4e6ed5bb063bec5ee622,
            limb2: 0xca09f906d41d730,
        },
        r1a0: u288 {
            limb0: 0x408757fdf47f52bda7e7a8ba,
            limb1: 0x9bf865ad1d1ad3004a8fada2,
            limb2: 0x5b5c40e2f0a719e,
        },
        r1a1: u288 {
            limb0: 0xa3185a420081c55ca6888e62,
            limb1: 0xb411d657051a81090a7e4714,
            limb2: 0xb6ed7ec90169845,
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
            limb0: 0xb9a13cdf1b85ac3eeafe2c74,
            limb1: 0x520eacf151e8840f759d1fd0,
            limb2: 0x9e8aaa40fb45f02,
        },
        r0a1: u288 {
            limb0: 0x461fa9aa19b464acf8076953,
            limb1: 0x874bbd236c21648e9973a8c9,
            limb2: 0x108429c896a7b692,
        },
        r1a0: u288 {
            limb0: 0x390659af73ba5eabe0775645,
            limb1: 0x6319feab25f2b972713250c,
            limb2: 0x1fd988bbea388b31,
        },
        r1a1: u288 {
            limb0: 0x276b0af79be2cec233d6a1fa,
            limb1: 0xcc2744299ace1781ac764f2,
            limb2: 0x8b7688d33974b03,
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
            limb0: 0x1e8f833b481ed02717e4e078,
            limb1: 0x96e3e73fa0b730844b316356,
            limb2: 0x1a05866ac081168e,
        },
        r0a1: u288 {
            limb0: 0xa64c5bd96381aa5f596e86e2,
            limb1: 0x32babcee89709c494f59db03,
            limb2: 0x1d57814131f7addf,
        },
        r1a0: u288 {
            limb0: 0xfdd0a0cd06da6386fdbbf243,
            limb1: 0x7bdf1cbe94c567933b83bb9f,
            limb2: 0x23c07c35fddc26ec,
        },
        r1a1: u288 {
            limb0: 0x1efc33802df0720f30fb6aaa,
            limb1: 0x3d3cf11735e3ab48c7c287db,
            limb2: 0x15dd67195a5434c1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x41d8094871da66f8061360e9,
            limb1: 0xc1fc2653a85d708184e1b9d9,
            limb2: 0x2c97781850e827a6,
        },
        r0a1: u288 {
            limb0: 0xaaad9b94e955d2727445091c,
            limb1: 0x34d2c0c2296a4ac27b54d43,
            limb2: 0xaacabd3c1c0beeb,
        },
        r1a0: u288 {
            limb0: 0x874edac6277b9c7e72f98843,
            limb1: 0x2bc14b7fe7e0ae20d0f75b67,
            limb2: 0x22737d92c0bc9ebc,
        },
        r1a1: u288 {
            limb0: 0x734c73ed9e972ad2a18b0e60,
            limb1: 0xfe5c55f9e9fa894a822da96c,
            limb2: 0x142be615f2998c0d,
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
            limb0: 0x9b88edc9c7cd16edc6b3dc74,
            limb1: 0x2c79665379490981c0e556f0,
            limb2: 0x183c3780afbc8a12,
        },
        r0a1: u288 {
            limb0: 0x6435718e5e8d37519f52f0a0,
            limb1: 0x1f1afc518ac3022fb528d9f,
            limb2: 0x2322a7474ca916f,
        },
        r1a0: u288 {
            limb0: 0x4cc60a1f73a2ade7708d5746,
            limb1: 0x3fa5b357656e0d04a0e32690,
            limb2: 0x2581a4b75a928a76,
        },
        r1a1: u288 {
            limb0: 0x90ee8b0aadecf66c47816ad8,
            limb1: 0x1b95c7ea4494898b9efdef0d,
            limb2: 0x9a182edd6dbe299,
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
            limb0: 0xd88873f31b6d63da91b4e366,
            limb1: 0x1ab5c8e3a8c2cdeb2bd9713a,
            limb2: 0x1be2bf82ac9c5837,
        },
        r0a1: u288 {
            limb0: 0x848ceea3c3ad993a237166e,
            limb1: 0x131a19f7f6751e5b6f491630,
            limb2: 0x2f98082ae0b8b9b1,
        },
        r1a0: u288 {
            limb0: 0xc62a1fb9ee19d09a70bf5ae7,
            limb1: 0x96549185b7831b3357190863,
            limb2: 0x24ee2ce0913b268f,
        },
        r1a1: u288 {
            limb0: 0x432b3196513964b318929956,
            limb1: 0x45ef6ad380437d48df7cd670,
            limb2: 0x1e4065a0e6de17dc,
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
            limb0: 0x6a16be13c2c37aaec63fdf61,
            limb1: 0xce44db002865a9885314977f,
            limb2: 0x2eab8be23097a005,
        },
        r0a1: u288 {
            limb0: 0xd54dea51221a78ebb0d8abda,
            limb1: 0x645d5550aeffe1f79a7b38ac,
            limb2: 0x1c85dceb811f06a7,
        },
        r1a0: u288 {
            limb0: 0xe964ae904a8fb2927be4a150,
            limb1: 0x99b4fe8ebc205356d7a49725,
            limb2: 0xcc9a5f7169325ab,
        },
        r1a1: u288 {
            limb0: 0xc1d251f85ad6ede935bfc684,
            limb1: 0x6e30bcabda76c0daeb385c00,
            limb2: 0x1299e60767e81464,
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
            limb0: 0x4160708aa7cd159e676254b8,
            limb1: 0xd57820d8eaa1dcd4ecbdd542,
            limb2: 0x90de0405ae1e309,
        },
        r0a1: u288 {
            limb0: 0x651f9f7e9968b77fecc82f33,
            limb1: 0x7a630e9c35f1faf0f9630f35,
            limb2: 0x138f06e37778af73,
        },
        r1a0: u288 {
            limb0: 0x9364d418577dc5452d87d32a,
            limb1: 0x153d4983d96aa4d106395166,
            limb2: 0x27d56880d3cca895,
        },
        r1a1: u288 {
            limb0: 0xacb6e090773348779c103e44,
            limb1: 0x894bec1dd8f8c3f81c85885,
            limb2: 0xb3715645f8ef85b,
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
            limb0: 0x7517c0e0e32e5979d9ed676b,
            limb1: 0x6998c94748ddba7ba26af561,
            limb2: 0x427ddf575c9c728,
        },
        r0a1: u288 {
            limb0: 0xe327ddc70374494ace0ebc5a,
            limb1: 0xd128e3869c0e31130337d96c,
            limb2: 0x23a591dddbb80104,
        },
        r1a0: u288 {
            limb0: 0x50f381650224d2f0eff630db,
            limb1: 0xaa2820dc9848f409bc15d5d6,
            limb2: 0x13be291b64673a5d,
        },
        r1a1: u288 {
            limb0: 0xd1f37b412ad7cc0d127c7a5e,
            limb1: 0x59a7fa08c2962d1bbdf1a380,
            limb2: 0x192985e03aeebdfd,
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
            limb0: 0xa45c9d0e3acff94cb9ac3ff7,
            limb1: 0x1395bd067445ca0354e3443e,
            limb2: 0x22c6cb5734e3e426,
        },
        r0a1: u288 {
            limb0: 0x14979bb32495ce48d82aeee9,
            limb1: 0x3aa33e3309ba224c89c8fccc,
            limb2: 0x1e24595b3c7ae154,
        },
        r1a0: u288 {
            limb0: 0xdc258d88faa6d53dd331d54b,
            limb1: 0x3c0d43100b62a7e6a782d815,
            limb2: 0x123a1d2851bf66bf,
        },
        r1a1: u288 {
            limb0: 0x95f593d41c83879ffb947ae8,
            limb1: 0x1940d2085d2d4476365f5f75,
            limb2: 0x182acc8a70876626,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4c610b94b2c3730202a88c6f,
            limb1: 0x524a9ecfd449f7ac8f128643,
            limb2: 0x298107dd5c800791,
        },
        r0a1: u288 {
            limb0: 0x2740ea553295a866b518517b,
            limb1: 0x2c01b4deeedb3065ee68a515,
            limb2: 0xc33982d80329827,
        },
        r1a0: u288 {
            limb0: 0x4d11e20e038d16ecdaa431c,
            limb1: 0xe653af43fe75201cea1b4f5f,
            limb2: 0x293137a03ccd48dd,
        },
        r1a1: u288 {
            limb0: 0x58fd05f10e7b34f1c569eb81,
            limb1: 0xd9ff792dc070bb945f3921ef,
            limb2: 0xfad5447826a8564,
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
            limb0: 0x650a539fd40e054d7d6bf8d0,
            limb1: 0xfe4cd9d342139906466f6737,
            limb2: 0xb01ff3b3e2042f3,
        },
        r0a1: u288 {
            limb0: 0xe44d5dec82463fc08c227fc6,
            limb1: 0xa3ae2f78360541a7a6a6f849,
            limb2: 0x29b27a7d0c27c9d1,
        },
        r1a0: u288 {
            limb0: 0x6ba8b75afb0cd70a1e01a52a,
            limb1: 0xefd89d994d372c2fe634d2c0,
            limb2: 0x189c8b60746e433f,
        },
        r1a1: u288 {
            limb0: 0xdaf05c5eafb3157bec864ecf,
            limb1: 0x6682b5cd46c9d29e517df15a,
            limb2: 0x14297fe9ef3b6296,
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
            limb0: 0xef1db7d68151b855bfbbbe00,
            limb1: 0xf69df3b63bafc6358352d871,
            limb2: 0x2252317891c05d56,
        },
        r0a1: u288 {
            limb0: 0x2206793d57584b4960cee22,
            limb1: 0xb4551d25566f47a253d6b75c,
            limb2: 0x1a4b33ef951fd430,
        },
        r1a0: u288 {
            limb0: 0xe290c1d9d5ab2a9d93cd8819,
            limb1: 0x49e849b52c39ed22ad11480d,
            limb2: 0x25120d849aa9390e,
        },
        r1a1: u288 {
            limb0: 0x82ce3c1eba10d4c802090e49,
            limb1: 0x2c2022270d40b31b68debcd9,
            limb2: 0x2b809345a865ca3a,
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
            limb0: 0x9a5aceabc7e2c73de7dd3eb6,
            limb1: 0x9456a2c208fcd701bb672f40,
            limb2: 0x1c029d60b4d846a,
        },
        r0a1: u288 {
            limb0: 0x7cbd269ffb20feba36387b91,
            limb1: 0xfc3109bbcd32a710ca01ee31,
            limb2: 0x2254dc04bba8f49f,
        },
        r1a0: u288 {
            limb0: 0x6bc686db896c29847dca66d3,
            limb1: 0x51c8eb17119de42e8094ffaf,
            limb2: 0x24e425ca69259588,
        },
        r1a1: u288 {
            limb0: 0x83097811235f4bc9da8f8aa9,
            limb1: 0x91b73c856ec42c19850ab60d,
            limb2: 0x25f58e1e13f22ee5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc23e107aeaa797c2f4561c63,
            limb1: 0xd14031f8cf52385adf122329,
            limb2: 0x26e25cc3b3baf31d,
        },
        r0a1: u288 {
            limb0: 0xd27d33c5831fb0b9eb38c262,
            limb1: 0xc373d0facb1ad7161990fe14,
            limb2: 0x1b5a7ab82529d11f,
        },
        r1a0: u288 {
            limb0: 0x9a86546aa28e6b2f302a1a9a,
            limb1: 0x37317654c1c40ae6b93bd7bb,
            limb2: 0x5b5417cf3a8d66d,
        },
        r1a1: u288 {
            limb0: 0x2bdcd5f9a8b1a84a94d330a3,
            limb1: 0x51cc54c0ccc8d8247a0f89d6,
            limb2: 0x10fbc9d87e1edca5,
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
            limb0: 0xefaf0c48423d52f4c0173ea7,
            limb1: 0x880fbd1a7ee2ddba1cac37d,
            limb2: 0x2b4667b15808e2e5,
        },
        r0a1: u288 {
            limb0: 0xf8475affa6faeb51d4f22b9,
            limb1: 0x34d236fec6a550d621318c9b,
            limb2: 0x211c0a4fe1927a20,
        },
        r1a0: u288 {
            limb0: 0x3fb313109f6bcfc58957f26,
            limb1: 0x335eceab0617304a39039c12,
            limb2: 0x1183706de1d9aa71,
        },
        r1a1: u288 {
            limb0: 0xeb76aea51b8caeed56e464a1,
            limb1: 0x6d907f689a0051ed3d8d36ad,
            limb2: 0x2044883ee50f183e,
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
            limb0: 0xda278421b68f8b5b0dd6a3be,
            limb1: 0x91dc5691cbd0fe32ca5dd65f,
            limb2: 0x2e5c9e3d74b09840,
        },
        r0a1: u288 {
            limb0: 0x936d12c5568527bbe7b66224,
            limb1: 0x184bc52ff3f3ccd84d278d4a,
            limb2: 0x1a6f4d9445b42387,
        },
        r1a0: u288 {
            limb0: 0xd75531dc01c6a679db20d164,
            limb1: 0xe8acf851618926ece9ce10ee,
            limb2: 0x2758adf267bc9fa8,
        },
        r1a1: u288 {
            limb0: 0x7501f452afe8b61c1166400a,
            limb1: 0xccdb28bf0387eb9b2fee8d4f,
            limb2: 0x1027d25c955cd73d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa52932c858cf4898cc2c65fe,
            limb1: 0x5cb6a368c5e466a2e086445e,
            limb2: 0x23a7a1998669433e,
        },
        r0a1: u288 {
            limb0: 0x569d7db9a3dedccc05bfbae,
            limb1: 0x6c99eeedad1d893b94941124,
            limb2: 0x22c9886d1b7bc913,
        },
        r1a0: u288 {
            limb0: 0x5d61c257aaee7396de0c81c8,
            limb1: 0x31be44d2703a86ec1465433c,
            limb2: 0x1cec3bf7fff038a0,
        },
        r1a1: u288 {
            limb0: 0x6f58084dc74f42a1df80dadd,
            limb1: 0x1565ae7e29ad1682f87e4462,
            limb2: 0x6adc34b8677b83e,
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
            limb0: 0x93c810b312ce56f2a112523f,
            limb1: 0x534ff50196d66d5cef0ac5ae,
            limb2: 0x153ed19dc29bb94e,
        },
        r0a1: u288 {
            limb0: 0x97086f74669163ba95b1a8e,
            limb1: 0x125161cd4826ff29107bfe27,
            limb2: 0x91c1ecbf70f4008,
        },
        r1a0: u288 {
            limb0: 0xf4b57840f5514bd75ae303d9,
            limb1: 0x35825ebdb19432a73740a11e,
            limb2: 0x2d3698d7079b2820,
        },
        r1a1: u288 {
            limb0: 0x72d97b9927c33fcc5da4d85c,
            limb1: 0xd29ba1041945adce248adec8,
            limb2: 0x2ddeb6efe1507b0f,
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
            limb0: 0x24dcac1103f848e790027919,
            limb1: 0x700a4879004f07c6879baf62,
            limb2: 0x26369ae126082b04,
        },
        r0a1: u288 {
            limb0: 0x90b9e8ffb4845a72d5b76b39,
            limb1: 0x5e0354ee247c5e06d24fa064,
            limb2: 0x32599b67a4e99bc,
        },
        r1a0: u288 {
            limb0: 0x9fc10cdef7fb2fd0c8f8ad15,
            limb1: 0xdec3c0cb92115c5b37924a07,
            limb2: 0x2a981f9b770fb608,
        },
        r1a1: u288 {
            limb0: 0x69b99ba0e8e3dc7bb7430df1,
            limb1: 0x9a9cb0eb066d075a688d1e7f,
            limb2: 0x263401729645c5c5,
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
            limb0: 0xbb2b11b8a674cfdff39d5571,
            limb1: 0x3f9ea1fda40fc32bd6aaf884,
            limb2: 0x18100a76f5ad46bf,
        },
        r0a1: u288 {
            limb0: 0xbe75d30ebd5e69e4225aac8f,
            limb1: 0x1e6a3b75b0b997a61bb35f4b,
            limb2: 0x18dccd887b7546e8,
        },
        r1a0: u288 {
            limb0: 0x41a97d4e52dc940a146490e8,
            limb1: 0x6ebdeb73cd097f73d03f3333,
            limb2: 0x1c65eaf4ead95831,
        },
        r1a1: u288 {
            limb0: 0x140bc9dcc6fd109b6d6e1787,
            limb1: 0x52202f28f05792767463d2e5,
            limb2: 0x6e41b97d6c8ffc4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x33c1721a89d01e739684b568,
            limb1: 0xfab55ab49c210cda54465c4,
            limb2: 0x294c896b4ab2ac74,
        },
        r0a1: u288 {
            limb0: 0x7799a2946d14e764ab4b333f,
            limb1: 0xf3649a906836ebe367b8c75,
            limb2: 0x25e64358ca4aaf11,
        },
        r1a0: u288 {
            limb0: 0xe443d8892f7ed470b085de7f,
            limb1: 0xe4b7d5468813e8dad8b0b82f,
            limb2: 0xebcf5bdda4ef92,
        },
        r1a1: u288 {
            limb0: 0x2ace08700a892aa7f1485293,
            limb1: 0x70361a3cedef55f98246f05e,
            limb2: 0xfd62e7866122217,
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
            limb0: 0x16c2fa114fed133e9b9db563,
            limb1: 0x433a29eb26ded44ffbdff3b3,
            limb2: 0x90bf4fb5f8fd47f,
        },
        r0a1: u288 {
            limb0: 0xc37c3bc615efc29a54eb2328,
            limb1: 0xabe0516538f389c0b0efe6e,
            limb2: 0x2d35f54f267124dc,
        },
        r1a0: u288 {
            limb0: 0x85e97af0230bb66b98a2ea35,
            limb1: 0x18658eeaef4937d9a6c8472,
            limb2: 0x13b53cb16f2e92e1,
        },
        r1a1: u288 {
            limb0: 0xa8c77a4c4ee827356c3b0066,
            limb1: 0x7df2eb7e2d255465230acaeb,
            limb2: 0xb4b6bb2c04b7d58,
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
            limb0: 0xab05ba541403d965eb15d1b0,
            limb1: 0xc2145d234af8072f16d181bf,
            limb2: 0x3009b54b929bce8f,
        },
        r0a1: u288 {
            limb0: 0x4c11c57f3f2921ca3f5551e7,
            limb1: 0xc7d463534802d88996c68553,
            limb2: 0x197bbd50823c21f0,
        },
        r1a0: u288 {
            limb0: 0x1e9437e63d33cef6c08ad15,
            limb1: 0x6bbe66ded8531bfa5231a372,
            limb2: 0x8b08769e6708240,
        },
        r1a1: u288 {
            limb0: 0xd1781dd1fbd6c279ad3e1394,
            limb1: 0x6d635344b83f77f67cb36949,
            limb2: 0xed61ff10bc4c8ad,
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
            limb0: 0xbd617d3f3dbe6ddb0cac9e3b,
            limb1: 0x91c0bc62791421a7bc99b22b,
            limb2: 0xb99a7557ca2f969,
        },
        r0a1: u288 {
            limb0: 0xecf21135ccf842f3adbba110,
            limb1: 0xa6874fd5e8f2223eeb1665a8,
            limb2: 0x168ce9d4268dc884,
        },
        r1a0: u288 {
            limb0: 0xa91ac0de755db33af5a6e303,
            limb1: 0xf0443c37be29321d363b5bf4,
            limb2: 0x269f8ff7d408d7ad,
        },
        r1a1: u288 {
            limb0: 0x15d6207aec72e8ad2832909f,
            limb1: 0xa9f4a1da8c7cbe289daaf9fb,
            limb2: 0x2542556ba3efeac1,
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
            limb0: 0xafda836ab54010d5ad1385db,
            limb1: 0x4ef6c0f628da4af878c6ca82,
            limb2: 0x1d28fd66c04d2049,
        },
        r0a1: u288 {
            limb0: 0xc558baf4a262e8e7b7d7090b,
            limb1: 0xd732c14ef5aa33374599cb88,
            limb2: 0x272b292c8b33ed39,
        },
        r1a0: u288 {
            limb0: 0x250b0beee81d93a4704b922e,
            limb1: 0xc35190811c2eae53b7c35ca5,
            limb2: 0x301c21e8b477adbc,
        },
        r1a1: u288 {
            limb0: 0x74926c30af032be45c51904d,
            limb1: 0x69b6201ce2c3151e52b37c51,
            limb2: 0x30372c73e358d955,
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
            limb0: 0x3ccc7b96b2cf4e256295c2da,
            limb1: 0x4609c6afa573347b101f4343,
            limb2: 0x285ada4771fd886e,
        },
        r0a1: u288 {
            limb0: 0x3a0d56cdbb01977a319daab8,
            limb1: 0x61270d70912a8c8798face39,
            limb2: 0xf15763a6b003764,
        },
        r1a0: u288 {
            limb0: 0xca206b07fb28f10aba3b9026,
            limb1: 0x6e7153f76ee40f9989c68909,
            limb2: 0x2c610875c33294aa,
        },
        r1a1: u288 {
            limb0: 0x6b52965a38dd4d6deac45409,
            limb1: 0x9e8bb659b6c44487cf580eb9,
            limb2: 0x29b64100e75a3b35,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9646e1e92fd8871d895917cf,
            limb1: 0xc78d083be0fdd2272d47f42,
            limb2: 0x2af8cf027e31fb74,
        },
        r0a1: u288 {
            limb0: 0x48c77a19ec9ef9a0b1043bec,
            limb1: 0xc5b8e60ac6951f9bcafe8f63,
            limb2: 0x2eaa01d74ca80203,
        },
        r1a0: u288 {
            limb0: 0x8fceb2625581002ce8a1e79,
            limb1: 0xba6fbe3d47084d69ef4c7e11,
            limb2: 0x304064314d4c5b4b,
        },
        r1a1: u288 {
            limb0: 0x6a08003386d987f6b3be0590,
            limb1: 0x54cee31986d4238ca48c8cde,
            limb2: 0x30718bee6528b16,
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
            limb0: 0xe1b888cf3755dcfc75376633,
            limb1: 0xfcd42189064ccf7933764808,
            limb2: 0x1fffa5cd9e231c81,
        },
        r0a1: u288 {
            limb0: 0x3463739711b3d15323decd00,
            limb1: 0x755314a3b4119c8de1c6b426,
            limb2: 0x2839636da6d17cec,
        },
        r1a0: u288 {
            limb0: 0xd53159236d290f2432b2fe19,
            limb1: 0x8cb0d0b49b4453b3a2a30524,
            limb2: 0x1e265740f9539189,
        },
        r1a1: u288 {
            limb0: 0x5092d85f9d8c0af9ad54d8a9,
            limb1: 0x29ad0ecbf6db5845b7b02eb1,
            limb2: 0x302767a6f3922b49,
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
            limb0: 0xea2fbc965074ec9d9b3d6969,
            limb1: 0x6dcef7c3e1f3f67b8ba89c28,
            limb2: 0x25a0d1c8a2433bd3,
        },
        r0a1: u288 {
            limb0: 0x5173d5019724a4b8984bdf84,
            limb1: 0xb832e09e27a5df1ba90b885b,
            limb2: 0x1677c4dd90930171,
        },
        r1a0: u288 {
            limb0: 0x44c1c466457d32dce008a8dd,
            limb1: 0x129dd34464f97a395e239ac6,
            limb2: 0x2809ff16246b10f9,
        },
        r1a1: u288 {
            limb0: 0xeba511fd955e4c0dcfd07d62,
            limb1: 0x8aa84868cd2b7d22723a3c96,
            limb2: 0x2cc2a852f5d0e655,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9688ab4581d3d3ac13a2f6c7,
            limb1: 0xecc353dfca8f8e26e2934c4d,
            limb2: 0xb76e3ba964f4b24,
        },
        r0a1: u288 {
            limb0: 0x6e8bc97ca97de5e19694f820,
            limb1: 0xee127a345c1957b268b23290,
            limb2: 0x1c1d79797ee8f9be,
        },
        r1a0: u288 {
            limb0: 0x5f4425623086ab7db4445877,
            limb1: 0x43bf5ec08d001d1839d578b5,
            limb2: 0x2f5afefb4732470b,
        },
        r1a1: u288 {
            limb0: 0x882ec587b6cad46c33b89d8d,
            limb1: 0xc933136ee1895f519bd1d5a0,
            limb2: 0x27acd0657aec17a,
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
            limb0: 0x5279ce2b767febe685fb7353,
            limb1: 0xbde00800afa501d1f9de18de,
            limb2: 0x184d08c1ff3bca68,
        },
        r0a1: u288 {
            limb0: 0x5a62d5de41a93e1e0d189e93,
            limb1: 0x3f7bb499751a6bed5e722bbc,
            limb2: 0x5572632732803a3,
        },
        r1a0: u288 {
            limb0: 0x9e9c266e722646f11103d187,
            limb1: 0xec2d4e66db873da303245682,
            limb2: 0x25399ae5e6a3a71c,
        },
        r1a1: u288 {
            limb0: 0x9e1afebd650e0e7957ca4d7c,
            limb1: 0x4d2134c6d8be4cc1e44ae828,
            limb2: 0x1959dacb7f3fb77e,
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
            limb0: 0x39cd7cf0f009fc512a10dcbc,
            limb1: 0x837131e7632d9e23142fe678,
            limb2: 0xc58e0cb8a2c8381,
        },
        r0a1: u288 {
            limb0: 0x695f249d1bac3f6110fce465,
            limb1: 0xd518cbe99a0d1e0cacca389d,
            limb2: 0x5ca3febe36fd47f,
        },
        r1a0: u288 {
            limb0: 0x76f2879367779c809cdeb4cd,
            limb1: 0x4adda884ba346e9c3028049,
            limb2: 0x4e1286e19a7bd37,
        },
        r1a1: u288 {
            limb0: 0xcc6f5c658c2c691e0ab8147a,
            limb1: 0xd9f0372f3bef4d2aad9f7799,
            limb2: 0x2a3004d4b0b612ad,
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
            limb0: 0xb85e0db0a599ae30f74d13e7,
            limb1: 0xfa3be3e7bfbc40e8267bb49f,
            limb2: 0x225c96e0ee11d7a3,
        },
        r0a1: u288 {
            limb0: 0xf58c107de6c4fee7a61ce39c,
            limb1: 0x257dd926fe279139a7566f9e,
            limb2: 0x1fdf15b117224430,
        },
        r1a0: u288 {
            limb0: 0xa0ce57ae38dfa27f7977c778,
            limb1: 0x55713e21dab55af28e2e589c,
            limb2: 0x2add5274c1c41c9e,
        },
        r1a1: u288 {
            limb0: 0x5f49bea177237896c4b3b177,
            limb1: 0x7ee370443ef6979f27af44e7,
            limb2: 0x4f01165c6057453,
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
            limb0: 0x93665f92b63f9166124cee3,
            limb1: 0xae990f4ca18526a6a1f42010,
            limb2: 0xe1dd96d7d08f375,
        },
        r0a1: u288 {
            limb0: 0xfc1b3180e02dfd321b1083a8,
            limb1: 0x28b788e95ce475c5b383a692,
            limb2: 0x22b87a0dc8757733,
        },
        r1a0: u288 {
            limb0: 0x30f75f90edec95d48f976668,
            limb1: 0x303913ce7f0d357d5a4e08a7,
            limb2: 0x16d227591585441f,
        },
        r1a1: u288 {
            limb0: 0x2bace18675d45884230f2e39,
            limb1: 0x290c10e52527a52f63ba80d2,
            limb2: 0x32637ead8a595f6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x12e3799f11e63a5dc23310f0,
            limb1: 0x2361e98a2890e08ecf10adf,
            limb2: 0x20f9d60d7d68c834,
        },
        r0a1: u288 {
            limb0: 0x2e1e70e279311b8795bcd854,
            limb1: 0xc40433bdebb637b3839758a0,
            limb2: 0x2c2adcb8c04d56bc,
        },
        r1a0: u288 {
            limb0: 0x87de0bebc3b61d342f5b8d81,
            limb1: 0x53901d2763174fb69849e881,
            limb2: 0x172e691655e9c4c7,
        },
        r1a1: u288 {
            limb0: 0x7f0008f6c6b4c7ca12a52e25,
            limb1: 0x530b74da731d93809a2481b4,
            limb2: 0xed01b49e05a80e7,
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
            limb0: 0x6ff1b7e174b17a046ce0a121,
            limb1: 0x21f1b872ae56cfc71e02e0de,
            limb2: 0x301bf1b9449c957e,
        },
        r0a1: u288 {
            limb0: 0x3014c78eae439f382d161f7c,
            limb1: 0x84ef15c3e9f3412e747c6d8a,
            limb2: 0x269b31a4c528d04c,
        },
        r1a0: u288 {
            limb0: 0x1877295456cf1c33a3edde9d,
            limb1: 0x151e8d219250e783260e8b29,
            limb2: 0x2d9e76718a928626,
        },
        r1a1: u288 {
            limb0: 0xa628c232d2b29bed6133be9d,
            limb1: 0x854aae66512f83cb00e0093e,
            limb2: 0x2c3c240619a57204,
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
            limb0: 0x93fa24a8f2cedce268c97f10,
            limb1: 0x23c7512bb912050d63b3f9,
            limb2: 0x2d2271c687ea4221,
        },
        r0a1: u288 {
            limb0: 0x16bc87a0e0de769448cd5fd6,
            limb1: 0xdfe0b518d13ebd06594c5a1a,
            limb2: 0x10af04e2a50de4,
        },
        r1a0: u288 {
            limb0: 0x3f6654eaf70ef72ca762e3db,
            limb1: 0x1d475898c77fbbf7c9cb3783,
            limb2: 0x2486d5fb5ddc33f8,
        },
        r1a1: u288 {
            limb0: 0xbeaa8c9e6d301485c23602d4,
            limb1: 0xbce00710edbb104a362043c6,
            limb2: 0x23e0f8708c51b7c9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e096b504ffdc11184075e94,
            limb1: 0x4297d34e13b247daa15c3c4a,
            limb2: 0x27970318ce5c5a6c,
        },
        r0a1: u288 {
            limb0: 0x8b379a0712878759bc261e60,
            limb1: 0x8143ec0f83695047c82ee501,
            limb2: 0xb02aed761030e60,
        },
        r1a0: u288 {
            limb0: 0x7616aba153e711de90908aa1,
            limb1: 0xa907b4bfa8338d175ce2431f,
            limb2: 0x245ac4657fa35b73,
        },
        r1a1: u288 {
            limb0: 0xf04d07d139df5a1040c8cce7,
            limb1: 0x733649da1b76dda7cd30b5dc,
            limb2: 0x16d04b9c642fcec8,
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
            limb0: 0xa945906d58a6a35c19404065,
            limb1: 0x924494b3064d438a998ebc2f,
            limb2: 0x43745da62873d7d,
        },
        r0a1: u288 {
            limb0: 0xa361c94d3632143309b13dcf,
            limb1: 0x1ac88dd118c09af021c93949,
            limb2: 0xf35fe82cba593cb,
        },
        r1a0: u288 {
            limb0: 0xd85228899b01449be62b8127,
            limb1: 0x9c1a1c3f62fece63485daea7,
            limb2: 0x2938d48facec99f3,
        },
        r1a1: u288 {
            limb0: 0xd036f898441f03c90c246d3f,
            limb1: 0x3875f1f20a5dee27c63fd2d0,
            limb2: 0x2240e8b034fdcd80,
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
            limb0: 0x1c1b04cb5da8ee51938d47c4,
            limb1: 0x38f77b11b798dab8e00d14d0,
            limb2: 0x2da2f4ad3e01dd64,
        },
        r0a1: u288 {
            limb0: 0x1a6dd1bbf4d2f0da1268ea6b,
            limb1: 0xe05b207777eef0166ba5d21a,
            limb2: 0x9cd4c7f7246d6a7,
        },
        r1a0: u288 {
            limb0: 0x2f8f07b2aab323c89fb39261,
            limb1: 0xe6449d8f8b37e179074e6635,
            limb2: 0x20640422f1519ac0,
        },
        r1a1: u288 {
            limb0: 0x70038e547ac3a3225aaff68f,
            limb1: 0xfd37b1cf504c3e4a1211c6d3,
            limb2: 0xd49b0af5acddb44,
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
            limb0: 0xc3f82210c31ee7db7bf889c3,
            limb1: 0x6e66964c3650db8947030cb5,
            limb2: 0x258d0605ee9808aa,
        },
        r0a1: u288 {
            limb0: 0xeeb4a2ea6525aec0667dfd8e,
            limb1: 0x91c577ed1f22c0ec8e9d17bf,
            limb2: 0x8f99b3a73a8ea83,
        },
        r1a0: u288 {
            limb0: 0x26761c88e23e087d1c0b2400,
            limb1: 0x908dba7baefd73982cfdf7c3,
            limb2: 0x23ad3410c406e0da,
        },
        r1a1: u288 {
            limb0: 0xfaa3c411253deed13eb7f2bc,
            limb1: 0x2e27e564d13955df66c71ca4,
            limb2: 0x20f27e87d38e8c02,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x34027889972433051f2fd0f,
            limb1: 0x7c9245365815a779e9a5e96b,
            limb2: 0x3053701c6cfd0293,
        },
        r0a1: u288 {
            limb0: 0x1a71ae57a7ad7f31cfe71e24,
            limb1: 0xe207496179bc0603f978f9f,
            limb2: 0x1c1255d1084ddee5,
        },
        r1a0: u288 {
            limb0: 0x243970c91c3c8947a7c91ba1,
            limb1: 0xb5817ef2a6c6cc3b1c7546f4,
            limb2: 0x102137500039b3ae,
        },
        r1a1: u288 {
            limb0: 0x4f7b7bea32213978c5ccbba7,
            limb1: 0xa6e961d9fa6e7bbe01cd687d,
            limb2: 0x83d7500a2cb8735,
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
            limb0: 0x236ec9e1bab7829b032618da,
            limb1: 0x69e9679b09bd68615f672db3,
            limb2: 0xf6518f0bb01d26a,
        },
        r0a1: u288 {
            limb0: 0xb5ae46c388c5b20b4836859b,
            limb1: 0xa74089f4c822134be0f1973e,
            limb2: 0x1f15acefe27030ad,
        },
        r1a0: u288 {
            limb0: 0xa0ae77908535bb2d4391391,
            limb1: 0xb027de0b6d954750b897a941,
            limb2: 0x6137f46a6891dc7,
        },
        r1a1: u288 {
            limb0: 0x1c0365babead7d85471d2bb8,
            limb1: 0xbeb17ff93325eb50f6f7816c,
            limb2: 0x18dc312710fc7997,
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
            limb0: 0xe984e7df7d07dd1ccb97b3f4,
            limb1: 0x70905b71cdce4779a7dcf667,
            limb2: 0x1be41bcd8186ed79,
        },
        r0a1: u288 {
            limb0: 0x8637983727cf0175ffac8f60,
            limb1: 0x3bc66787d2e0125e3fecc3c3,
            limb2: 0x1d1e6aab3db2a7d,
        },
        r1a0: u288 {
            limb0: 0x58f6a62b9fd9ac5807fe4e5b,
            limb1: 0x2ece4c2c5bc4e5dfb83ec733,
            limb2: 0x1f830442685f9cd2,
        },
        r1a1: u288 {
            limb0: 0x21eb37539446a29ed2eb96a6,
            limb1: 0x45763f00af2b29a104a14a04,
            limb2: 0x17d143161e43034d,
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
            limb0: 0x3b28256549a3a5bd467ff872,
            limb1: 0xf7842227b1552fb6c988e2c1,
            limb2: 0x19210dacaf55325a,
        },
        r0a1: u288 {
            limb0: 0xa486d93f46747f701c3f707b,
            limb1: 0x928eef3cfe2e401c24ad2946,
            limb2: 0x112e0ba05bfde957,
        },
        r1a0: u288 {
            limb0: 0xfea5469582b8a9039193e39a,
            limb1: 0x1dbe2608072e9d05e8b44097,
            limb2: 0x139c1100d378b151,
        },
        r1a1: u288 {
            limb0: 0xf6eec53fa4534326e3eaa8f6,
            limb1: 0xd4658788a5b9cee65316e19f,
            limb2: 0x1de36a924bd5362,
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
            limb0: 0x924485c9ac6ac220865d1c3b,
            limb1: 0x64e45e8c9b741dbe41ab4b94,
            limb2: 0xa4b7178e4a9d655,
        },
        r0a1: u288 {
            limb0: 0x9977a8e04e321f7ea08032e1,
            limb1: 0x428f7f15ce0857610f38d00d,
            limb2: 0x1a3ad5470a1e290a,
        },
        r1a0: u288 {
            limb0: 0x753610fb3946528edb532b5a,
            limb1: 0x9e08faedd353095bc8a91a81,
            limb2: 0x2f0257602b9a9084,
        },
        r1a1: u288 {
            limb0: 0xc544212c53d85f7cfe753de4,
            limb1: 0x578fbbed2b61bff76d7a88ea,
            limb2: 0x1d9704db489b3833,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3ebe8352104a7d2f132e9a1,
            limb1: 0x65cdc5d1687848588e84ecb6,
            limb2: 0x60207ac27b6d442,
        },
        r0a1: u288 {
            limb0: 0xde60448e005b6212f064a350,
            limb1: 0x77ca0b2e6d42f7da8a376f4b,
            limb2: 0xcf814da671eef2e,
        },
        r1a0: u288 {
            limb0: 0x58e2aca9135e6230e3aa4219,
            limb1: 0xcc0f3a6407ca97b7327e64f7,
            limb2: 0x1287b2a489dec92f,
        },
        r1a1: u288 {
            limb0: 0x8de683f5e056260fd9e3bfef,
            limb1: 0x3da9f3ccb23f020d31d4cd9,
            limb2: 0x4e793583438625d,
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
            limb0: 0x85c98f66e33f9896146b44e7,
            limb1: 0xaf09894d2738149465eafd5d,
            limb2: 0x575510ea6d1ee7e,
        },
        r0a1: u288 {
            limb0: 0x3283956062a0c32bc267a687,
            limb1: 0x274cf6b95d5ef1663f1aacc8,
            limb2: 0x1b0465da25343fbe,
        },
        r1a0: u288 {
            limb0: 0x2c2594dbe336d21db9cecb25,
            limb1: 0xabccef7a3a9a7c86f84c9829,
            limb2: 0x12197fd8a9f5f40b,
        },
        r1a1: u288 {
            limb0: 0xcc9240648fbd64bbbcdf17ca,
            limb1: 0x89cbab57a30582e070293383,
            limb2: 0x5053ef55c7627d8,
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
            limb0: 0xf231715099b26cc4bf7b181f,
            limb1: 0x9ceb6dd36d77d0c7e1c3d2ff,
            limb2: 0xe7b82197d370b28,
        },
        r0a1: u288 {
            limb0: 0x6781930ed859a37ec91c311b,
            limb1: 0x1f4aa2d38d5cb3ffa8adcc91,
            limb2: 0x17f061b30d549c21,
        },
        r1a0: u288 {
            limb0: 0x348f9dff96d7bc8d2bdac44c,
            limb1: 0x24aed014306b678cb06e4594,
            limb2: 0x112b6fa4a1465ab9,
        },
        r1a1: u288 {
            limb0: 0x2717d35e3ab5af6d7f73a43,
            limb1: 0x764ee9de7972a359f4741745,
            limb2: 0x2a783c1e3e88819f,
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
            limb0: 0x9f5c1f56d7ddd299057926ab,
            limb1: 0x47918095a2eb2d5f5fed1d6,
            limb2: 0x22b2ef4c576dbd1a,
        },
        r0a1: u288 {
            limb0: 0x60a5568960636a6adff7cb0a,
            limb1: 0xdeadd641287f25264d6b5499,
            limb2: 0x1b7cb6a84d27d0a5,
        },
        r1a0: u288 {
            limb0: 0x2c29f050fdaa282dcb44db8d,
            limb1: 0x13372640b4c23461a78867e9,
            limb2: 0x2bee51dd73af6a7c,
        },
        r1a1: u288 {
            limb0: 0x8aebc194dac0f76349e0a2bc,
            limb1: 0x2f06976952b72ca6c56fda4a,
            limb2: 0x13a249a308829a24,
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
            limb0: 0x78ae3f228c006871810e183e,
            limb1: 0x1a463374ed3f4be1c8cd99df,
            limb2: 0xf243aa06e7ccd2,
        },
        r0a1: u288 {
            limb0: 0x275e12dd3f0a6c558c10bb06,
            limb1: 0x42c5d7512de456b0d9ced0be,
            limb2: 0xc049cd80d4b2a1a,
        },
        r1a0: u288 {
            limb0: 0xd9f37a393f382d9001598f9e,
            limb1: 0x916b41c123172cdafbf8f67,
            limb2: 0x2e77c619bada084b,
        },
        r1a1: u288 {
            limb0: 0x449b4472012c648a0e4a2695,
            limb1: 0xb655fbf50f51183f8859e2b3,
            limb2: 0x36194a27aad3e6d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x97d7868b9b31d851abaffe1d,
            limb1: 0x8b220a0949e6b79a82e8ac47,
            limb2: 0x6ab990b94cf322d,
        },
        r0a1: u288 {
            limb0: 0xccf144b4a4cd9649d64331f3,
            limb1: 0xbf201e2730f3273464a75ef8,
            limb2: 0xe6ba24ad9e25f8,
        },
        r1a0: u288 {
            limb0: 0xec9489dd44bb704dd781c216,
            limb1: 0x94d3193a8013c3ec12e5bd70,
            limb2: 0x9b4c8dd623dae83,
        },
        r1a1: u288 {
            limb0: 0x1471c39f57719a67797b1d58,
            limb1: 0x8f7a3dfd5e65031a9e1ba475,
            limb2: 0x5b94667bff3da67,
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
            limb0: 0xd182ce17aea25d389b84a631,
            limb1: 0x9faa09db5c5282fedff6cd99,
            limb2: 0xcaf77659ef464ba,
        },
        r0a1: u288 {
            limb0: 0xefcde71fd06ee5705db34934,
            limb1: 0x49312a8358692899b535e754,
            limb2: 0x88b8685eea358a6,
        },
        r1a0: u288 {
            limb0: 0x92c01e0b8637a712204b3608,
            limb1: 0x13c30b1313a67624d11a0392,
            limb2: 0x7f38f249a5f3534,
        },
        r1a1: u288 {
            limb0: 0x49637601ceec6685d44d3a01,
            limb1: 0x6b68ad73a2c37fac6e625e8b,
            limb2: 0xd991aba9b43b66f,
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
            limb0: 0xa736f8fdc707e8419157ed81,
            limb1: 0xa3439b75c41831140ec13d62,
            limb2: 0x2d2bebbf08f9426f,
        },
        r0a1: u288 {
            limb0: 0x23ebe55065bd9da6d45adf98,
            limb1: 0xd791a49e64334c45589af40a,
            limb2: 0x2b4fc722ac94c8dd,
        },
        r1a0: u288 {
            limb0: 0xdef543b58011735d4a97b454,
            limb1: 0xf646369884973dec932b6c09,
            limb2: 0xc869fcafc645d96,
        },
        r1a1: u288 {
            limb0: 0x1651dfc267c381a2b05e1f78,
            limb1: 0x8a476f469c093d860bcc0599,
            limb2: 0x79706ea292304d4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1fde658306be229f196fec2,
            limb1: 0xee417faa15a2aefe3f5ca986,
            limb2: 0x2a60093038a79252,
        },
        r0a1: u288 {
            limb0: 0x930248485858202025421741,
            limb1: 0xc7e511a4745e40c7b20fb638,
            limb2: 0x1575450e1a69a6b6,
        },
        r1a0: u288 {
            limb0: 0x6422c33040ef459b4948bf09,
            limb1: 0xe64ce98cb489f977c3f9daf1,
            limb2: 0x28f1130425f7c1b,
        },
        r1a1: u288 {
            limb0: 0x21dc33a9e1721b4c5ca8097f,
            limb1: 0x1ba3ab0a3e673a0eb114cc78,
            limb2: 0x276ec996ee3af1ba,
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
            limb0: 0xb69477ddb518555ba52f2fee,
            limb1: 0x36caf1dbe1d8a4faffcde1dc,
            limb2: 0x20aa73ed5492ac47,
        },
        r0a1: u288 {
            limb0: 0xe53e9331d6f51b47fba18253,
            limb1: 0x4b72aa9ffcf99ff185b97d81,
            limb2: 0x1efc114816db923,
        },
        r1a0: u288 {
            limb0: 0xeb9adaf9310ada6a567fa8c0,
            limb1: 0xf4731693b4fb0baf5fb9b6ae,
            limb2: 0xe6486d53174eb30,
        },
        r1a1: u288 {
            limb0: 0x7ab518857324413d505a6952,
            limb1: 0x58a5c27c2a0a85c64bcdc92d,
            limb2: 0x72f6358af2371b4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf971b19867013ccbc02a837c,
            limb1: 0xe4f14dafdba7b231280f181e,
            limb2: 0x2fff46ff2b118030,
        },
        r0a1: u288 {
            limb0: 0x11b145b1e9643151476b8d1e,
            limb1: 0xfcf26fd7d0b85e956db21891,
            limb2: 0x1fe764aa8163c4f,
        },
        r1a0: u288 {
            limb0: 0x57616fe7662551006c21e6c1,
            limb1: 0x86af2942ece0801fbaf8310d,
            limb2: 0x19bb82ab9911436f,
        },
        r1a1: u288 {
            limb0: 0x6423ee16a17d868fe932493a,
            limb1: 0x4e672a9f8032cf399dbb9899,
            limb2: 0x28b3e94683c9c3eb,
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
            limb0: 0xd5a6fdbb630fe8e787d86180,
            limb1: 0xbb6ce5634212cc66d467a906,
            limb2: 0x1dcc57083589a548,
        },
        r0a1: u288 {
            limb0: 0xcfb449b51fdb9f239aef2de5,
            limb1: 0x44ebbea97457727d6c28d1d9,
            limb2: 0x2955148c29d4d7cd,
        },
        r1a0: u288 {
            limb0: 0x47d71b75f2faf6515b3226dd,
            limb1: 0x2371bca4abe9a8b322b3f670,
            limb2: 0xef75ad63396c7f,
        },
        r1a1: u288 {
            limb0: 0x67e37030d279a7283ed4515c,
            limb1: 0xb3781007c43f0cc4ad60fbdd,
            limb2: 0x129309d3e022bf96,
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
            limb0: 0x21509decc67ca802d8733598,
            limb1: 0x74e1ce30475375470668186,
            limb2: 0x28b741e13009872a,
        },
        r0a1: u288 {
            limb0: 0x660f8417aa206e0d349c8d01,
            limb1: 0xb36318d3c93aa5b1bb12e0e8,
            limb2: 0x7947c26ef2c83cc,
        },
        r1a0: u288 {
            limb0: 0x302d5fe4ca15d2833e83a1ba,
            limb1: 0x5e70a81e75b5c7bb9e944391,
            limb2: 0x3a4f45d8864c270,
        },
        r1a1: u288 {
            limb0: 0x8fbdd7107dd4011330d3ff67,
            limb1: 0x5929eb4764c84985aec20542,
            limb2: 0x8c681b4937ac2ed,
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
            limb0: 0xa2e7baf208b6f27ba68b16c0,
            limb1: 0xa348d674936b53a692e0dd03,
            limb2: 0xd70b03a6fb63a87,
        },
        r0a1: u288 {
            limb0: 0x49c6ec6546b5748de72dbcac,
            limb1: 0xeaeb1bfed6536a129e801bff,
            limb2: 0x20c9a555c8fb5fed,
        },
        r1a0: u288 {
            limb0: 0x443bbf5c6ddbdac4c51bc034,
            limb1: 0xdcc73a98ccc70b5f3ab309ec,
            limb2: 0x177f1e56ac3f6585,
        },
        r1a1: u288 {
            limb0: 0x3c1d2f307620800d7b5929cc,
            limb1: 0x3706dc0f29feae65e1f871a9,
            limb2: 0x20e2cbdcb4517e2,
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
            limb0: 0xa7d93dec3804f3db62fa44a9,
            limb1: 0x5b8939efb750c9f5f7ad710c,
            limb2: 0x16ac0e555ec481b2,
        },
        r0a1: u288 {
            limb0: 0xaccd047b3731978fa91a65d7,
            limb1: 0x46360570b76a1e903f63cd10,
            limb2: 0xd21b51efe4e0c5,
        },
        r1a0: u288 {
            limb0: 0x91e8a8ec2456b9d22ff26929,
            limb1: 0xe2fc64be7b4cadce15709db0,
            limb2: 0x2e1f61c943cb2d5a,
        },
        r1a1: u288 {
            limb0: 0x318189f61a5885463a028df0,
            limb1: 0xb3d9577832b8699df9733ff2,
            limb2: 0x2dbb871d7c0aa46c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2330881182716eb989565c42,
            limb1: 0x9f7971b2ff3d2fd516254d1a,
            limb2: 0x286ffc390d1a24aa,
        },
        r0a1: u288 {
            limb0: 0xdfb64bc708fa67544df2000e,
            limb1: 0x95c803d302da48ec363b4d64,
            limb2: 0xf2b4a25e294472a,
        },
        r1a0: u288 {
            limb0: 0x95fec5bc16c7f26f1eb0cd08,
            limb1: 0x4c04947f4e56f7712789879d,
            limb2: 0xa319149c3bcc7c4,
        },
        r1a1: u288 {
            limb0: 0x7ef6267632f8b8c353ffeac1,
            limb1: 0xe5a8c3f808d339ceceee2ee,
            limb2: 0x7e1de120bfc290,
        },
    },
];

