use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 6;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0xeef1942088c0fd6302b81488,
            limb1: 0x527cccc02d9d8e9fbd48c8f,
            limb2: 0x19b4700c3ed31633,
        },
        w1: u288 {
            limb0: 0xf12aaf1fbc1200b0dd3cde79,
            limb1: 0x13664ad5f7c270cbf75e580b,
            limb2: 0x1886c54133f175e4,
        },
        w2: u288 {
            limb0: 0x7303d26e85a1bcea721c694f,
            limb1: 0x3119aa80a2cfbaa75ec04ef2,
            limb2: 0xa32be6826b94502,
        },
        w3: u288 {
            limb0: 0xc7595b1d835ea1b1ec474547,
            limb1: 0x983c977ba630a2c6efeb2cda,
            limb2: 0x56d9c30ef2ff8d6,
        },
        w4: u288 {
            limb0: 0x6a6952bb041f9790b6b315b5,
            limb1: 0x330b59ea5d1ba3015a24e1af,
            limb2: 0x1a7aec90bdd1060a,
        },
        w5: u288 {
            limb0: 0x370f28c0cf891f4fdb68ae19,
            limb1: 0x6078cf03ad6dbbe2aadae9fd,
            limb2: 0x25260f6619513a4,
        },
        w6: u288 {
            limb0: 0xfd1310f9cdbfe21c4beea52c,
            limb1: 0x1513d690b3a19099062cc6c5,
            limb2: 0x1c42344954c31aa5,
        },
        w7: u288 {
            limb0: 0xfd84a64ccf5b68a697232dab,
            limb1: 0x4bee446601b5ea083b7fcbb1,
            limb2: 0x2a8983973d1067d8,
        },
        w8: u288 {
            limb0: 0x696152623e99976f129342bc,
            limb1: 0xebbc9d4e34d5fa572f08a93d,
            limb2: 0x51d72eab4f293f4,
        },
        w9: u288 {
            limb0: 0xecb0d3fcb18be33d1ea4b035,
            limb1: 0xb8db506da718a0bc9372ab14,
            limb2: 0xcadefba81f23322,
        },
        w10: u288 {
            limb0: 0x8ee10c757a36a368bac7c549,
            limb1: 0x15b1cd294f56186b2d239c2c,
            limb2: 0xcb6022cde797905,
        },
        w11: u288 {
            limb0: 0xdff4d2480b84c9a9ea845a2c,
            limb1: 0xcaec7fc326f18c93530fc686,
            limb2: 0xfc2cc72c31b4aac,
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
            limb0: 0xba3d9fb7540a96308c84d61a,
            limb1: 0xbf3a8065810cc6538d514226,
            limb2: 0x11997590d4b125bf,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x74d5abeae34b0e1053753a8c,
            limb1: 0xbcfb69a6167f45f670d23cab,
            limb2: 0x11153b20a46431be,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xdaadaceb41b3022a8ec3077b,
            limb1: 0x5ec1611f0ebeb3ee2e56ba2e,
            limb2: 0x17a6ebaf8b77bfc4,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0xf67d6d933f23f55ed10dc066,
            limb1: 0x67b05c751a73d55a46ac3303,
            limb2: 0x1eae9c8b35f0ec92,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 7] = [
    G1Point {
        x: u384 {
            limb0: 0xc28869c383000d60933613e4,
            limb1: 0xd5c1d627df696f4957f9a586,
            limb2: 0x712fd76ef41bf0c,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe18a4d25cad02b388ee4e9cb,
            limb1: 0x90604ef32137d293b90f021,
            limb2: 0x2859682582797d40,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x8f88e84a74c3bba326929f2,
            limb1: 0x4614e9ad55e5e84f3dbffdf9,
            limb2: 0x10c6f5181dde6f62,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xf696e02ef75dc9a3b5017c91,
            limb1: 0x19ed4e4749177912e121f4c1,
            limb2: 0x1efb89668528d7dc,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xfc47b53c4997f7685514771,
            limb1: 0x16ebe8f5c3ef4878ef572c07,
            limb2: 0x5af3f640539a0ef,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x7ba4623d562dcd87434cb8ca,
            limb1: 0x2ffb72dc2bc9f08b7abcbec7,
            limb2: 0x13874eb79ba15060,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xf2b35d573bb361681a7201f1,
            limb1: 0xd5a687368000ae92bb5afc4e,
            limb2: 0x104ca91035399daf,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xb16a486a1ddfec5d688a3d1a,
            limb1: 0xdbf895e2b7f20f925ec05c6d,
            limb2: 0x61a94e258b31c60,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3fd3b95eead22ecb7315c3db,
            limb1: 0x164757fa75e0fde4438f22f8,
            limb2: 0x1a3eb4429633bb86,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xec6a2c4c3a55ab9083ea3e8c,
            limb1: 0x9ab5ad689258a9291ffc0855,
            limb2: 0xbc4bc6d84149c22,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x461ae4825ddb589c1be0997a,
            limb1: 0x77f0310bdba5a209fb930c8,
            limb2: 0x21e9b98874c15212,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x455d6dda257f2a03fcbdc0cc,
            limb1: 0xf6d635bc1b964d3c5cc93773,
            limb2: 0x21713dc1bd4718f7,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xa68b9bff6582c4090b5222ac,
            limb1: 0x75e2bf92f081eb67fbe219ca,
            limb2: 0x97075d59ff55626,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x437bef6aa698d595e16d8e66,
            limb1: 0x824d1daf1f134be8870ca872,
            limb2: 0x2caee0ad62a7240,
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
            limb0: 0xbb98e8be064ccf6b4f93b645,
            limb1: 0xa4b3a7fefad87a40c7c363f7,
            limb2: 0xd0377b90e12bae2,
        },
        r0a1: u288 {
            limb0: 0x3bebc65fa4823c2583006750,
            limb1: 0xc98c5e35081dc26345e9802a,
            limb2: 0xf2fc06cae07908e,
        },
        r1a0: u288 {
            limb0: 0xfd9f865b2151a18ebe3960a6,
            limb1: 0xd46dd992baf202a8fb7b18ca,
            limb2: 0x1de1b463186b41fa,
        },
        r1a1: u288 {
            limb0: 0x2472b4d6e60addd9a5e98186,
            limb1: 0x41625df2bd4945a26ef9508a,
            limb2: 0x19775b9736c4e07f,
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
            limb0: 0xacd8e1cf35d3bcab88e94702,
            limb1: 0x139c9db786a8de1ccfbe0699,
            limb2: 0x2360d6b9d31ee547,
        },
        r0a1: u288 {
            limb0: 0x2c86042d979e4ff1557c95f7,
            limb1: 0xeec3e781796395fa5197ea67,
            limb2: 0x21348e06332a0f9a,
        },
        r1a0: u288 {
            limb0: 0x6ad244321aceea881a439ca1,
            limb1: 0xe3e26c23c68f55b49c0651c6,
            limb2: 0x12829a0fc8c65e2e,
        },
        r1a1: u288 {
            limb0: 0x43ff15b65615ae3d32937bc1,
            limb1: 0x76ede7c3c43812bb28881a07,
            limb2: 0x16ecf2dbaa6cbfaa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x865cd25a82be39984ce3b85b,
            limb1: 0x865d12a11670f9cf359d31c4,
            limb2: 0x1d164d723823dcdf,
        },
        r0a1: u288 {
            limb0: 0x68c9ee9e114a73907b5257ae,
            limb1: 0x95ba533fbc31c0d17fe19b16,
            limb2: 0x10c1061c5606e5c3,
        },
        r1a0: u288 {
            limb0: 0xdcc16a46bfa89e09e72cd6ff,
            limb1: 0xce2064f233e26fbca38aa6ba,
            limb2: 0x2ff7d032e6bd9616,
        },
        r1a1: u288 {
            limb0: 0xc357ca1f61edf5cd257e0a32,
            limb1: 0xcc5837ff86145e19a16b6c14,
            limb2: 0x1bfa81c7bc6c2ac7,
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
            limb0: 0xd7255130a0850ae80a6a1c74,
            limb1: 0x90aef03be4f9adaba0c3446,
            limb2: 0x45b7ad9668c14fe,
        },
        r0a1: u288 {
            limb0: 0x6bf5d3320dc1434543c2bc07,
            limb1: 0xe855ddec269a9c55f86f34fd,
            limb2: 0xf545bb27d56ad4,
        },
        r1a0: u288 {
            limb0: 0x4df77f427a632251c0e82cd0,
            limb1: 0xd13a0643bc15d100a2908f06,
            limb2: 0x1130f66fbe657d61,
        },
        r1a1: u288 {
            limb0: 0xd9aac8263e693f6bb99b7d9,
            limb1: 0xb652738cd77585c8b1426e20,
            limb2: 0x2b4a0d920cb50c49,
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
            limb0: 0x1d63eff9b72601376e29895b,
            limb1: 0x492fd2dbd14c461ec535eb38,
            limb2: 0x2a81af186f08743d,
        },
        r0a1: u288 {
            limb0: 0x43a8f2b48c435c118de42d9e,
            limb1: 0x89457063d33c9c86eff9f3c8,
            limb2: 0x198b627ae19fac49,
        },
        r1a0: u288 {
            limb0: 0x6dceaa405255ddffd2d6a7c3,
            limb1: 0x62a4e19d0690260cf2795f1b,
            limb2: 0x25426c717040cddd,
        },
        r1a1: u288 {
            limb0: 0x90e0ebcc56affc07a1889c16,
            limb1: 0x2d8245c682372075ef1dfec8,
            limb2: 0xb105e7b29ead99d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf6e12476936aaa34d63aa769,
            limb1: 0x5ea50bf76236aa911ec62530,
            limb2: 0x2e7bc2f5e048ea37,
        },
        r0a1: u288 {
            limb0: 0xf393bf174ac7a77ca5781b23,
            limb1: 0x8e4b8770e719565e1880e811,
            limb2: 0x1b046d6918c2e504,
        },
        r1a0: u288 {
            limb0: 0x25b6f27b0ea9ac4eb1d843b1,
            limb1: 0x4abf26e091c526ad0ff29def,
            limb2: 0x2fe841142e435c87,
        },
        r1a1: u288 {
            limb0: 0xa4502b4e54768fcea7b7bb6f,
            limb1: 0x5780e844ea9bba9f50c2d6e5,
            limb2: 0x1fa31d8404a27093,
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
            limb0: 0xe1e6f3c3fe870163691da9ba,
            limb1: 0xf1597da4bad3dd7dfcd90f07,
            limb2: 0x8a16bb28cf47ff4,
        },
        r0a1: u288 {
            limb0: 0x25fc07fcb07244140bc19c2a,
            limb1: 0x33ca36cc74e6bdd495c6898e,
            limb2: 0x1db5df81aabcea08,
        },
        r1a0: u288 {
            limb0: 0xf7e45690370899108a7d1f75,
            limb1: 0xbb78058255fc9ce765115478,
            limb2: 0x17855e3d11e4ff46,
        },
        r1a1: u288 {
            limb0: 0x6de6541d59ed8438eaaf0971,
            limb1: 0xd2c6934bac272f732cafbcde,
            limb2: 0x2cad6676f07981d1,
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
            limb0: 0x8bf844ded73a349dbc38fb80,
            limb1: 0xbb272f5d41d4b587f4197970,
            limb2: 0x2109653b9743c114,
        },
        r0a1: u288 {
            limb0: 0x5ba4c2d0d5777edb5a6282aa,
            limb1: 0x7d900eca7f6adcddd12738b0,
            limb2: 0x18affc71e449fe66,
        },
        r1a0: u288 {
            limb0: 0x7aef126efb5b5781c0348ead,
            limb1: 0xc07443c0b4918371fff59271,
            limb2: 0x966c4f3595179d,
        },
        r1a1: u288 {
            limb0: 0xa93b5d0f1c931f18bc8661bf,
            limb1: 0xebb6fe148eee243ec23761c5,
            limb2: 0x11e39af9eee228dd,
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
            limb0: 0x42e9b83a2f9283aa72322217,
            limb1: 0x18fea18eea568c5af4742bde,
            limb2: 0x1294c5003d02858e,
        },
        r0a1: u288 {
            limb0: 0xa154268e6c5882a5d967cfa1,
            limb1: 0xcc792317bcb7507d81cd9c03,
            limb2: 0x2982b91e6a318f33,
        },
        r1a0: u288 {
            limb0: 0x7339bd0aa6ffd039b6fe8f35,
            limb1: 0xba190657a890b7183dcea129,
            limb2: 0x1964faf75c79384f,
        },
        r1a1: u288 {
            limb0: 0xea06132ce92eea87287277a5,
            limb1: 0x1ff8729fe7b698c667a8eeb0,
            limb2: 0x16633c21d180062a,
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
            limb0: 0xf0220671ade4f3096909b5b7,
            limb1: 0x46345ab05fb0232c3ecc1e90,
            limb2: 0x681a5a4f0cf3dd7,
        },
        r0a1: u288 {
            limb0: 0xe25e232b6f653d938655b9aa,
            limb1: 0x5a637f49cd7d4bfce2948fdf,
            limb2: 0x280f1bfaebc2557e,
        },
        r1a0: u288 {
            limb0: 0x68200ca306119c04cf82bfce,
            limb1: 0xd58aa8a6303133bc76ee5b72,
            limb2: 0x1f65df1674d2c7ff,
        },
        r1a1: u288 {
            limb0: 0x7fe00d25732b8d15cc9d8918,
            limb1: 0x24b20aa96426d9d0d4212e3b,
            limb2: 0x89d55398ffde48e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa6a3934fde79d2cc1f43908,
            limb1: 0x9348ae2a06a1b173a2350c5c,
            limb2: 0x319b5c2bfcf6cb9,
        },
        r0a1: u288 {
            limb0: 0x4579b5e93571d6ead7de67bb,
            limb1: 0xc37fdbc935f185e81c154fe9,
            limb2: 0x1d8998f77f6a3cd4,
        },
        r1a0: u288 {
            limb0: 0x5a2c3d32988b7868db667d22,
            limb1: 0xa441debfa1be315ca2cef7ce,
            limb2: 0x2a067b3a34d68816,
        },
        r1a1: u288 {
            limb0: 0xccd43a47c827d3ad4426f797,
            limb1: 0xf8c96dc8233b2a7a6066d9c9,
            limb2: 0x86c2c54d2499005,
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
            limb0: 0xc04d5da120753e805936f36d,
            limb1: 0xee5d5625849824b054af86ed,
            limb2: 0x2c46f860664073eb,
        },
        r0a1: u288 {
            limb0: 0xd5b2eb0162b7a758849f2018,
            limb1: 0xd880e78ba92be3a9cbc3a8b0,
            limb2: 0x10b9c71e16e8e607,
        },
        r1a0: u288 {
            limb0: 0xd5f4dbf61c659a49ac3b92f3,
            limb1: 0xa3be76d796c7ec3a9c975ce4,
            limb2: 0x1adf6281ecc941af,
        },
        r1a1: u288 {
            limb0: 0x4226100a62209e879a2458ad,
            limb1: 0x8bad22a80688bf467aefd398,
            limb2: 0x169b29f70b6f7831,
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
            limb0: 0xd52a35115c15859e59e72295,
            limb1: 0xafce744bc2c87c29f32d5ce7,
            limb2: 0x1a9bfcfcc16caf49,
        },
        r0a1: u288 {
            limb0: 0x2c8e6c6781f182a7e78916bc,
            limb1: 0x547001f3559001661a74b231,
            limb2: 0xd90b12c103f6735,
        },
        r1a0: u288 {
            limb0: 0x75f5fcc38200dd02c39e74fb,
            limb1: 0x756d81df67ae9c2730c887e6,
            limb2: 0x2f0ee3d823b4dffa,
        },
        r1a1: u288 {
            limb0: 0x3734a2360fa3317fb8746475,
            limb1: 0xdbba342b5e849d7369658099,
            limb2: 0x2a8d518fb9be780a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6a232fa494b640f110e8796f,
            limb1: 0xabc55c072643b65b46ea722c,
            limb2: 0x1bde1ccf6101bf03,
        },
        r0a1: u288 {
            limb0: 0x1aa9d345eb2c4f695de809b9,
            limb1: 0xd3ee10c8f60d800dd493c925,
            limb2: 0x5e32d28f151d70c,
        },
        r1a0: u288 {
            limb0: 0x7f636e5bca9a52c779e3757c,
            limb1: 0xf08315575a4f8dbd8b26d0e2,
            limb2: 0x22279401f612e53,
        },
        r1a1: u288 {
            limb0: 0x85f1d6fff77212d5a8db25c2,
            limb1: 0xfd7692b753d30e72ccc218c1,
            limb2: 0x1ce128ef78c07fbf,
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
            limb0: 0x4139cb52a4d85d67cb776d16,
            limb1: 0x88ddfd81cad7b4a7ebd5071c,
            limb2: 0x19ad4809d8ed8b58,
        },
        r0a1: u288 {
            limb0: 0x9b07d4477b108c0b65e8c5bb,
            limb1: 0x624111994219cf19664e7027,
            limb2: 0x1738b656143cc499,
        },
        r1a0: u288 {
            limb0: 0xab60aad3a0388c69b596566e,
            limb1: 0xa1a1bb5f0401a4cc82524da1,
            limb2: 0x1612d93d813c504a,
        },
        r1a1: u288 {
            limb0: 0x9277b7d7ee0744e8fdbe1b11,
            limb1: 0x13bd208ec2e74e7e5c2c64c2,
            limb2: 0x839429a82151b4,
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
            limb0: 0xb6aa55ed830f7572b469aa4e,
            limb1: 0x1e5f9b2498e70fadecf7f32e,
            limb2: 0x15ca8cc8467446f7,
        },
        r0a1: u288 {
            limb0: 0x5ce0e02c0f30d342f6f22df3,
            limb1: 0x96c1fdc58e0ad1ef96a41d6,
            limb2: 0x2f36167f292f38a1,
        },
        r1a0: u288 {
            limb0: 0x91d291bf2ba4a14c79fe02c2,
            limb1: 0x383cb249fd236d20788bd1bf,
            limb2: 0x1ea6a41bda7128cd,
        },
        r1a1: u288 {
            limb0: 0x443c948d135fc7e9c4999838,
            limb1: 0xd0af3d90fc3bbe989792434,
            limb2: 0x12b0eabf61030b56,
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
            limb0: 0x72df12ad03ef65aa27389061,
            limb1: 0x93bb94e9f672ee26f3be0b4b,
            limb2: 0x4f40a1b978e5b0f,
        },
        r0a1: u288 {
            limb0: 0x737ecf100100d054c5a24c5a,
            limb1: 0x8700a8c8d23705e68dea1bc5,
            limb2: 0xb56f40d38cc5ee7,
        },
        r1a0: u288 {
            limb0: 0xa3b3e78434ed258c5fd8bf15,
            limb1: 0x4b79ca63259b59ea33b4a104,
            limb2: 0xdcb43d8f465c743,
        },
        r1a1: u288 {
            limb0: 0xb579ed141943c5126b6c1a48,
            limb1: 0x6e276f34525eba8950a42ccf,
            limb2: 0xe3cde465528d77c,
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
            limb0: 0xcaa0263e3c2c132d2a537417,
            limb1: 0xbe000c967d9ba73622858ca1,
            limb2: 0x2d1659e20c7aa9d0,
        },
        r0a1: u288 {
            limb0: 0x3234af444f49372318b4e301,
            limb1: 0xd842f1489c92ff994018b617,
            limb2: 0x3ab457afb118bbb,
        },
        r1a0: u288 {
            limb0: 0xfb91be93460e4963829b2da2,
            limb1: 0x5fc580d02f881a7fc702d881,
            limb2: 0xc0eabfa88164e83,
        },
        r1a1: u288 {
            limb0: 0x4a0a2d4774c2f1b7210e840b,
            limb1: 0xfd5546312f070cc829c8678,
            limb2: 0x4ccefc5e94dad4c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd7d065cf95b5ab96daa8c76,
            limb1: 0x829c88b5c905c0c1dcb7acf5,
            limb2: 0x94bce324cfa059,
        },
        r0a1: u288 {
            limb0: 0x77249ef013fe6251112def01,
            limb1: 0x53965a3f2a1be597791bf668,
            limb2: 0xba52a3796a54f9a,
        },
        r1a0: u288 {
            limb0: 0x7ae275efbcf9479095d020b4,
            limb1: 0xb5fef4f0c1f4c4613c1599fc,
            limb2: 0x1d50624701fc94e2,
        },
        r1a1: u288 {
            limb0: 0x9c04c4c9119c21759e7ba3a4,
            limb1: 0x57ce886d7511618c576c29d6,
            limb2: 0x144aa8a4817d2d00,
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
            limb0: 0x98c280eb664769c2079116ab,
            limb1: 0x7fca5eff800056bd0e531642,
            limb2: 0x1a7f740ffae005dc,
        },
        r0a1: u288 {
            limb0: 0xa9daa5773fa8a69626da16f1,
            limb1: 0x76eaad1044577126d181007b,
            limb2: 0x4da143c1f0dc0be,
        },
        r1a0: u288 {
            limb0: 0xa49aac845766090b46e838e,
            limb1: 0x73e85df3422ecfdf86c1d143,
            limb2: 0x1285d1eb09a8dfb2,
        },
        r1a1: u288 {
            limb0: 0xd27363d95f27732f95224b92,
            limb1: 0x2141122680b6c61e26973ff0,
            limb2: 0x21939358e7f112b7,
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
            limb0: 0x28fee1de9d93588e723b23fc,
            limb1: 0x6adce380030a29d0a21469d1,
            limb2: 0x6eb74a72b1b64ec,
        },
        r0a1: u288 {
            limb0: 0x45a218b6bc7ece62d1f2aa1,
            limb1: 0x67f2b87126a74f8633bdedc4,
            limb2: 0x22a0aa00a52420c7,
        },
        r1a0: u288 {
            limb0: 0x94ffb3414e42343faceeea36,
            limb1: 0xb115cd931fa7b9ef9e63f584,
            limb2: 0x8876448a2e8af6b,
        },
        r1a1: u288 {
            limb0: 0xaa53430d9ce3a99aaa8de42c,
            limb1: 0xcde5f3ff18ca52ad4280058d,
            limb2: 0x192934f378962e4e,
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
            limb0: 0xa51208b0c49ed85ea487dd61,
            limb1: 0x4e90faf9395bc30ef8fc1b7e,
            limb2: 0x3b67d923a6f5340,
        },
        r0a1: u288 {
            limb0: 0xaa1650a5ae68cf15d61315dc,
            limb1: 0xdc4e0a2cb7d5f98c6a111928,
            limb2: 0x2c1ba37cf018d597,
        },
        r1a0: u288 {
            limb0: 0xdaf33ce4f8c677b2433f7fd8,
            limb1: 0x706052fdf6ac76c140a0eef4,
            limb2: 0xbc48712311ea59e,
        },
        r1a1: u288 {
            limb0: 0x2f933f221a8c7ebe0517d9b5,
            limb1: 0x5bb1fd642ad45093b8982880,
            limb2: 0x2b0f6b2d386eb0ad,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x797ff7c47a4d3cb1abc3d7ab,
            limb1: 0xdf35b9232f1da1728e58df04,
            limb2: 0x1cd377ed181fe2bf,
        },
        r0a1: u288 {
            limb0: 0xbf3b04ac824d824296989da4,
            limb1: 0x169be323728113bb7325df9f,
            limb2: 0x82ae070d79569a5,
        },
        r1a0: u288 {
            limb0: 0xa2d77cee41c5b425602db146,
            limb1: 0xc3f8d7b3a6f5ba3ad09a496,
            limb2: 0x2c7f8dac082e2984,
        },
        r1a1: u288 {
            limb0: 0xc73a0191dff6df3fc8af7ac7,
            limb1: 0xa2b3f8297e49d4de6ee57e55,
            limb2: 0x6f2630d2221b2b6,
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
            limb0: 0x2d6222af34852e81de23e56,
            limb1: 0x55154ab3287970d5fbcdb999,
            limb2: 0x2b9f6ebac6a5cb0b,
        },
        r0a1: u288 {
            limb0: 0x39460eb58c3117d4ecbd3f3e,
            limb1: 0x926157ef538b9f29e5a10586,
            limb2: 0x17d70fc93d981926,
        },
        r1a0: u288 {
            limb0: 0x2f94a2ba587f62fcfbdbf56b,
            limb1: 0x29ffbc67fc51b611584357bd,
            limb2: 0x18b6e38281d9c2a1,
        },
        r1a1: u288 {
            limb0: 0x7f3f991fb5b24785927f2fd1,
            limb1: 0xfd656db9028ca7e44c6224a0,
            limb2: 0x1e060d6f0bb68718,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4e6aae1b74b84a07a29bcd8,
            limb1: 0xb36d1b3e207448b4bd823ebb,
            limb2: 0x28adb87d6bdad4fb,
        },
        r0a1: u288 {
            limb0: 0x93a1cef5bac9969d6e490003,
            limb1: 0xe1f68376da32590a0e63cc3,
            limb2: 0x1e487068f16faa1a,
        },
        r1a0: u288 {
            limb0: 0xaccc3d55e9a956430bdca336,
            limb1: 0xf56dc0a20ae61cac647d1dc3,
            limb2: 0x27b3492f09f47dd,
        },
        r1a1: u288 {
            limb0: 0xae9eca0e7ae19fd43930e704,
            limb1: 0xf0905dc774a7ff22288c48c8,
            limb2: 0x2e504dc6152fdb6b,
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
            limb0: 0x5229ad5eb1a8a0855bc468e8,
            limb1: 0xd560057edbcbfd20b8a9d8de,
            limb2: 0x27cad39b8c5dfa68,
        },
        r0a1: u288 {
            limb0: 0x73ab36339b67a5545cf08cfc,
            limb1: 0xd031242e8471f3d1ed71125e,
            limb2: 0x2cbaeacfb1d7d8cc,
        },
        r1a0: u288 {
            limb0: 0x2d9ef9ec70da96a66d676aab,
            limb1: 0x113c3f4ae1279b53de6b6b11,
            limb2: 0x2fcbcb4a8e3224c2,
        },
        r1a1: u288 {
            limb0: 0xfcee866d514b21dedf05c5c9,
            limb1: 0x7fc3ef8cf23fe260432c06e,
            limb2: 0x14315d3985c2c886,
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
            limb0: 0xdb64db3a574f9e432b029fe8,
            limb1: 0x95aaafd3ac05bfe3c731b3cb,
            limb2: 0xd8df1760e7f65b6,
        },
        r0a1: u288 {
            limb0: 0x409353f2065e9f3f366b0493,
            limb1: 0xafe1ad2c3b0a8b69ae6e75fd,
            limb2: 0x132f514202d2bd9a,
        },
        r1a0: u288 {
            limb0: 0x182d3cdcd48328faa5768af1,
            limb1: 0x3a70c6e0f33493dba56343f2,
            limb2: 0x7bbd253efe40094,
        },
        r1a1: u288 {
            limb0: 0xd8f541a5e6f150e4dbcf73df,
            limb1: 0x8d5522986cabd93bfa981ad2,
            limb2: 0x1e402e0441b01fa9,
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
            limb0: 0xf4fa1667f4c4488500354eab,
            limb1: 0x22df7bdd1b2e44b2c86c74d1,
            limb2: 0x17f726c6b87e2aa1,
        },
        r0a1: u288 {
            limb0: 0xf09abd51afe704e9867bc0a0,
            limb1: 0x6e4ccad865b758198e45b44a,
            limb2: 0xd2e4e8a74beb89d,
        },
        r1a0: u288 {
            limb0: 0x32959b8bacd5657625751bbd,
            limb1: 0xfa5f8bac5b65425fef2ab3d1,
            limb2: 0x1b78bf3ca86e7f3d,
        },
        r1a1: u288 {
            limb0: 0xf569ea617cd1f153806c17f1,
            limb1: 0xc295f935f53a77b32d3f0bb3,
            limb2: 0x2bed90b59631a8be,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b62b1eb61dcce3c34367feb,
            limb1: 0x2727602b0c804a4b29598c54,
            limb2: 0x12eb1f0a1ab6a59d,
        },
        r0a1: u288 {
            limb0: 0x3ae64840859ddf9f8ef6cca,
            limb1: 0x22a3848ac72a62e87e1cf469,
            limb2: 0xe07880f561160a1,
        },
        r1a0: u288 {
            limb0: 0x31c147396b4ec12eae7caee0,
            limb1: 0x377a98e604c22c1f0bbf428a,
            limb2: 0x4a49bade9e48019,
        },
        r1a1: u288 {
            limb0: 0xc69e19a655719a0eb1f9009f,
            limb1: 0xe9df01b2d005039fa3500a71,
            limb2: 0x2aa9265ec38b889e,
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
            limb0: 0xfe27bf24556f071573ecd63b,
            limb1: 0xde2df3216fe34f1a7867012d,
            limb2: 0x1ae7f167f4542e39,
        },
        r0a1: u288 {
            limb0: 0xf3b1041ba8c405944f123d21,
            limb1: 0x98bed6319aee228d73643d5e,
            limb2: 0x15103d34dedd6779,
        },
        r1a0: u288 {
            limb0: 0x43976813f54ed7c5e3919bcf,
            limb1: 0x45b1a199b70ed64801f7382,
            limb2: 0xe8794e39e2f6665,
        },
        r1a1: u288 {
            limb0: 0x53346e6ad0589de041165fdf,
            limb1: 0x19a7fec6e9cd422d7dd93e79,
            limb2: 0x1d6eb8cd0b54152c,
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
            limb0: 0x85f327c6a590e7965112ae00,
            limb1: 0xcde94ecdb48fa9ec098f0abd,
            limb2: 0x1a5682762a7cfc1,
        },
        r0a1: u288 {
            limb0: 0x5a7952797e8da78013039ff3,
            limb1: 0xe628f76c908c9001973784fc,
            limb2: 0x15010ab95c15d54a,
        },
        r1a0: u288 {
            limb0: 0xe59664a80a0c8ab0a40def4,
            limb1: 0xa770028481c1b1cd8eefd8b3,
            limb2: 0x2601c08af17d77fa,
        },
        r1a1: u288 {
            limb0: 0x3d1933a4e7c839140ad80459,
            limb1: 0x571bc3e5dddb02ddad2c060,
            limb2: 0x16ea806f8d87ee99,
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
            limb0: 0xc17a7f52d55a5c0a3dd1db4e,
            limb1: 0xc0cee132b962a3dacc82449f,
            limb2: 0x2ff0ff86e735994e,
        },
        r0a1: u288 {
            limb0: 0x570015935548b1e55ca64c8b,
            limb1: 0xb860838ce10ea16fbdfa3529,
            limb2: 0x151b4a8573641a1d,
        },
        r1a0: u288 {
            limb0: 0x6a3a44ae7d8afb3bcb56c5d1,
            limb1: 0xaaea30dbabd699e1b9f64529,
            limb2: 0x1f780c503339e6e4,
        },
        r1a1: u288 {
            limb0: 0x6aa6909729fd314cc24da1cd,
            limb1: 0x31c6da0508fec3c8380e2390,
            limb2: 0x54f7e8c6de7fa61,
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
            limb0: 0x2ab831f62cbe2854a76d60fe,
            limb1: 0x4f5a50d4fd2b64dc37ea2207,
            limb2: 0x12d9fb9415e76222,
        },
        r0a1: u288 {
            limb0: 0x7be859cef3fe31f089582b75,
            limb1: 0x5cf021a5b9c5bf09b11e8dfd,
            limb2: 0x2d335510661845fa,
        },
        r1a0: u288 {
            limb0: 0x61c12a9d6aef6ab943a082e4,
            limb1: 0xda11f09a03a1966d51335182,
            limb2: 0x1be2e7decc460125,
        },
        r1a1: u288 {
            limb0: 0xec0e894e28388cc8f1480aaf,
            limb1: 0xd539466afd66de243f9e7179,
            limb2: 0x14be413294d8db29,
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
            limb0: 0xcfc192adedab149f7792641d,
            limb1: 0x88d426babf019f227d544707,
            limb2: 0xe31ae0258323f49,
        },
        r0a1: u288 {
            limb0: 0xc8c5f95f7fa0bd39bfa5d534,
            limb1: 0x554ed6bf697fb0a313852ad,
            limb2: 0x2ab4fc322dd458c7,
        },
        r1a0: u288 {
            limb0: 0x28d345487113b143e70527f6,
            limb1: 0xa24b22cfddb307b11483d428,
            limb2: 0x299486e75b76bab,
        },
        r1a1: u288 {
            limb0: 0xfba72c167b5ebc0feb7f798f,
            limb1: 0x2caccbcd2c976199cb8a750d,
            limb2: 0x19df90649c9202ac,
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
            limb0: 0x656a1576a3470caca3c77ee,
            limb1: 0xbd8a2571da78765027e8c893,
            limb2: 0x2b886cffc3d08228,
        },
        r0a1: u288 {
            limb0: 0x626a2f97b8275560e33810b1,
            limb1: 0x1e79c626a90091d888285036,
            limb2: 0x2ccca0c3c9688650,
        },
        r1a0: u288 {
            limb0: 0x137de2fc3e944e1ec25079e,
            limb1: 0xca835ef10a5f01c8737f198f,
            limb2: 0x1152567c0fbbfe07,
        },
        r1a1: u288 {
            limb0: 0x1570418510a96faf6af2a6d9,
            limb1: 0xd84a5fb34e45509b3f58b08,
            limb2: 0x192f09ea67751935,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9ad68a45f8351b08b89b8532,
            limb1: 0xd5059024cfeb86d83222dd80,
            limb2: 0x27c9a195e4a8f58a,
        },
        r0a1: u288 {
            limb0: 0x78e7030280da5337c40fe982,
            limb1: 0x8cd8a231ae7407ddda19cb0d,
            limb2: 0x237179192bab2e01,
        },
        r1a0: u288 {
            limb0: 0xcf7f6598b66c8405feb95384,
            limb1: 0xfcd830af28beedd7bba29037,
            limb2: 0x28cac147bac41e0c,
        },
        r1a1: u288 {
            limb0: 0x12aa2cabc7b9eb9d9f164c77,
            limb1: 0x4db72a78cda5e8ec66491cfb,
            limb2: 0x1f2d6200ba71bc47,
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
            limb0: 0x515281ff3200bf1bdb0cf1c2,
            limb1: 0x393ae06b83bd8d2d3f15179f,
            limb2: 0x1545fa8dfab7bb13,
        },
        r0a1: u288 {
            limb0: 0xc4c91dfc22a29f105afa4f3,
            limb1: 0x743de0e391c4716ea8110f73,
            limb2: 0x2d53ba93a7f1403d,
        },
        r1a0: u288 {
            limb0: 0x18252aa0f724dbc3c6336656,
            limb1: 0xe5e135341455876ed8912626,
            limb2: 0x2b3075b5f0b7d833,
        },
        r1a1: u288 {
            limb0: 0xc01051668b836fac35f4c268,
            limb1: 0x442d7197ce9238224a745,
            limb2: 0x2cb0fc2c0b519c43,
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
            limb0: 0x103b511b5be7cfee7e2e6c73,
            limb1: 0xa197d9e811eca6962e4f4a36,
            limb2: 0x21fd64775c985b50,
        },
        r0a1: u288 {
            limb0: 0xad8be67646ff858353b48aed,
            limb1: 0xfd8f4e4129743edbd3e164a0,
            limb2: 0x11d82b96baa27ded,
        },
        r1a0: u288 {
            limb0: 0x33746ce717337e47f8db87d4,
            limb1: 0x2155dc816a523a1a39f37c94,
            limb2: 0xc316c10c1cca1d3,
        },
        r1a1: u288 {
            limb0: 0xd4c77098cd7041a49b77a186,
            limb1: 0x37b3ccc9919e639d2b846420,
            limb2: 0x25233b52836591ed,
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
            limb0: 0xf0bb5f6a89d653dc7464c110,
            limb1: 0xd5c440d443d60cb50be29e11,
            limb2: 0xa5ca337b698b71f,
        },
        r0a1: u288 {
            limb0: 0x8c9cadc98f52f29bd7257a9c,
            limb1: 0xac0ad02a6e14214d8aa79497,
            limb2: 0xd9d79a020b124f7,
        },
        r1a0: u288 {
            limb0: 0x97607cbd2efe67e45fbe1fe,
            limb1: 0x2fb6ab7698ccf8a227b47e66,
            limb2: 0xc0a7787a0cdde3f,
        },
        r1a1: u288 {
            limb0: 0xfde63a886b8e18c03b4186f,
            limb1: 0xa0a03a61d68c05cced407d6c,
            limb2: 0x29ba26fc2946932e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64ab5318fb2c241724f2732a,
            limb1: 0x5402bee4ec67b0494ae29059,
            limb2: 0x4a655659d9740f,
        },
        r0a1: u288 {
            limb0: 0x7596956633a2277038bd2be7,
            limb1: 0x647e8541e153ec7864d1e3c5,
            limb2: 0x263e5f345d077fcd,
        },
        r1a0: u288 {
            limb0: 0x7fb40e5d73f42e012b27b9e0,
            limb1: 0xa02e8d1377dc2aa6b8c388b0,
            limb2: 0x1e7376b3edee552b,
        },
        r1a1: u288 {
            limb0: 0x229c27f4659d6ea8666e27f9,
            limb1: 0x834fa6d6785a02fa4ea17e35,
            limb2: 0x138c5d48f9785b36,
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
            limb0: 0xe2be79435b2ae40588eb2346,
            limb1: 0xcc7dfaaf3f07999f5708c384,
            limb2: 0x2c2ac4bce9b197e5,
        },
        r0a1: u288 {
            limb0: 0x64b98d58b8ace68dd6812cf9,
            limb1: 0x77028631a573f50614ce365d,
            limb2: 0xbbd7374259fbadd,
        },
        r1a0: u288 {
            limb0: 0xa817165366837bca95954a15,
            limb1: 0xe39be33c8503a0f0ac851a2f,
            limb2: 0x28133c2772b9a619,
        },
        r1a1: u288 {
            limb0: 0xa4a24a8a726692f3cba1309b,
            limb1: 0x79ae3d54589345ed76d8359e,
            limb2: 0x967909c5ea8c12f,
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
            limb0: 0x96cf9ab3d1a895152cef6858,
            limb1: 0xe5568cb29e57a5bf19fd333b,
            limb2: 0x27caf86d68ad4542,
        },
        r0a1: u288 {
            limb0: 0x4df109d5abee3497326d7ec6,
            limb1: 0xfae7d28554490d0f5e3df8a8,
            limb2: 0x2a3aef4317f71bbb,
        },
        r1a0: u288 {
            limb0: 0x3ebba22a41822748454a7cf5,
            limb1: 0x592e874e51cb22fd0d55642d,
            limb2: 0x16028098e3105f73,
        },
        r1a1: u288 {
            limb0: 0x232df0f0f3616746a745ee35,
            limb1: 0xa186994cdd7d24e9dd4e072f,
            limb2: 0x2c15c2b2682ccdb6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x10b080209455b6504c6a1839,
            limb1: 0x716fd9e7165700f82c338f8e,
            limb2: 0x2d11fdc4858088c5,
        },
        r0a1: u288 {
            limb0: 0x7a4a0ac76c623fadf7b095d6,
            limb1: 0x15edd2bcbdf850b228d4c72b,
            limb2: 0x2aed3f8861924ecc,
        },
        r1a0: u288 {
            limb0: 0xcb42f9ed33029b1e8cf3e544,
            limb1: 0x6d0c17ec3f7a5d48828aa6bc,
            limb2: 0x16bb6faf572fa71c,
        },
        r1a1: u288 {
            limb0: 0x21c39a5e90ce4764f66ed588,
            limb1: 0xc95f20e900ff72b16fbb766e,
            limb2: 0x214c7f215c5c0058,
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
            limb0: 0xd3f9d656adbc51fa42a3ff7e,
            limb1: 0xc370fe8e974c066935d542fb,
            limb2: 0x281383abc8746335,
        },
        r0a1: u288 {
            limb0: 0xdf249a923cb7af5bc99f4a5e,
            limb1: 0x7ddd52a2b9a06b0e59be3d1,
            limb2: 0x2f2b723c262ecf9,
        },
        r1a0: u288 {
            limb0: 0xbd4ff45408d60a997c215484,
            limb1: 0xd004dbc3f771ff809cf4bc18,
            limb2: 0x19b55b0f4c1f2be0,
        },
        r1a1: u288 {
            limb0: 0xef6b11c2f4f79254543e8667,
            limb1: 0xd17956193a4baeaed895fea8,
            limb2: 0x104c1db1cea127e8,
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
            limb0: 0xa04ce1fdeb9a7548db787c2b,
            limb1: 0xce841cb48eba27252b607e41,
            limb2: 0x164de7c6823f3f33,
        },
        r0a1: u288 {
            limb0: 0xd2d66c627fd9520e539c00b8,
            limb1: 0x387ff58c4085f90040e40abe,
            limb2: 0xd237087cb3603b9,
        },
        r1a0: u288 {
            limb0: 0x9004cce948574cefc50df217,
            limb1: 0xa00703dce409e6ca3054ca6b,
            limb2: 0x24213220f35b6412,
        },
        r1a1: u288 {
            limb0: 0xd34497567894175fc790ae95,
            limb1: 0x8c6970a72164d6048f47d8d3,
            limb2: 0x15bfa6ae7d645dbc,
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
            limb0: 0xdbc5804435a3f27cb5d2d295,
            limb1: 0xea6e8e0bc95bf097213497e0,
            limb2: 0xe52cb6600b428dd,
        },
        r0a1: u288 {
            limb0: 0x2ed9c50c3a07ab9d5a81bee8,
            limb1: 0xcc50d4817d4d97af9140d2ed,
            limb2: 0x1057d4a8eaef9457,
        },
        r1a0: u288 {
            limb0: 0x6f5dded1947e64345b1a9e9c,
            limb1: 0x4e5824c2b9f5ccd48a283e07,
            limb2: 0x1f3a7947a8dca82f,
        },
        r1a1: u288 {
            limb0: 0x6d86f639b9ace9605f477e69,
            limb1: 0x3916875c491b953a3fe82259,
            limb2: 0x2f111c50ba07cf50,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x24f357539404ece801108230,
            limb1: 0x28a9edfe5995e94df863ef2c,
            limb2: 0x2201ab36697ef313,
        },
        r0a1: u288 {
            limb0: 0x99ef876e69a7cc1b579c4cdd,
            limb1: 0x9734f1693346e8666017d821,
            limb2: 0x4ab494ae879bafe,
        },
        r1a0: u288 {
            limb0: 0x4bb7a0bb3c83b5fd45d856ec,
            limb1: 0x2c484b4c4be573f7ff257905,
            limb2: 0x776e152b54fc781,
        },
        r1a1: u288 {
            limb0: 0xbcb18665839d37c38cb34e19,
            limb1: 0xf45c8769618fafee326d4320,
            limb2: 0x1dcf739a67d8fb55,
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
            limb0: 0xc2373de52d2618d13c9195fa,
            limb1: 0x8fe7e8402169ade619710b0f,
            limb2: 0x119dd2256a06ab9e,
        },
        r0a1: u288 {
            limb0: 0x81309cce88936206751eae55,
            limb1: 0xb76171061381f9822a96b8c5,
            limb2: 0xe86b7b1d4e02022,
        },
        r1a0: u288 {
            limb0: 0xfac4956d19f56176e599b20,
            limb1: 0x3f88c51e19a3917704b30d79,
            limb2: 0x224ffa5cf765fd0a,
        },
        r1a1: u288 {
            limb0: 0xb050d9a71f18692497b987b0,
            limb1: 0xdf2cd617466e44e5488728b2,
            limb2: 0x38808a8086eb13e,
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
            limb0: 0x314892c09755e129f8eeb9a2,
            limb1: 0x47f035fa34bed853fb0956,
            limb2: 0x2bcba1572f9c4da,
        },
        r0a1: u288 {
            limb0: 0x123d936b255613a8e0bf6d47,
            limb1: 0xab53195cc01b52233b00d62d,
            limb2: 0x8d8eca5682e6296,
        },
        r1a0: u288 {
            limb0: 0x96f4414df5c7b14f2fefb40b,
            limb1: 0xa3e6b8da6ea501f07aaf1d1a,
            limb2: 0x204cbc97eccae1e9,
        },
        r1a1: u288 {
            limb0: 0xc4df6fce236f74cdfe4d5626,
            limb1: 0x7eb0f0dfa31249f7f669bbc,
            limb2: 0x14e35dad43058dce,
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
            limb0: 0x18eb78e7b53d86e734a412a7,
            limb1: 0x8c45913747ec9d350f404a1e,
            limb2: 0x1128e4b28249da01,
        },
        r0a1: u288 {
            limb0: 0x674a8444311b75eff9e1a93,
            limb1: 0xfdd9c620ec47ed3f89991b1a,
            limb2: 0x736ecfceccd256d,
        },
        r1a0: u288 {
            limb0: 0x3a3334bd9e7b1672f2562d5c,
            limb1: 0x56521bc5baf611de7091b390,
            limb2: 0x11659503b233cb4,
        },
        r1a1: u288 {
            limb0: 0x1ac239f23ba47ed94d359f30,
            limb1: 0xf12c745bb22951dfd452b46c,
            limb2: 0xb3caf683fde7fca,
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
            limb0: 0x8f6c38ff68ddc7589c5706e0,
            limb1: 0xa5cfcca4a442f4b0e41bdc0c,
            limb2: 0x17b399d6e43dfe76,
        },
        r0a1: u288 {
            limb0: 0x95a6a24f6d1b2a8e76e1911,
            limb1: 0xf43f2ecd4daffdf4d705bc1b,
            limb2: 0x33ce4556513bc2a,
        },
        r1a0: u288 {
            limb0: 0x40ccd2171870663c832b9ac6,
            limb1: 0x30527c980c6c1d40d0ba87de,
            limb2: 0x25a1a1670c6d3537,
        },
        r1a1: u288 {
            limb0: 0x4ccc8069fdc0a8fe2f1f4941,
            limb1: 0x1a053745b10de9accdf4153d,
            limb2: 0x27102138a274ecef,
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
            limb0: 0x22e9f05268ff26d912adff6d,
            limb1: 0x4cef20b6c89aad71543b574a,
            limb2: 0x2813e574458b7ff5,
        },
        r0a1: u288 {
            limb0: 0x51ebf91a7839b0fc5b089069,
            limb1: 0x563965d5c3cb729c4f82981e,
            limb2: 0x23835d8052e0abf8,
        },
        r1a0: u288 {
            limb0: 0xaa920fe644717fc72b01c903,
            limb1: 0xc455b62df6d555be34d1d20d,
            limb2: 0x5d8512528ab1161,
        },
        r1a1: u288 {
            limb0: 0x6f8aa0abaa80dbe8eaf9624b,
            limb1: 0xbbf3463807a4e7b1b6783c35,
            limb2: 0x131fdb4be9796905,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa43594e1490de71d392346a,
            limb1: 0xedb53ab1956dc6e45b2b7d54,
            limb2: 0x2af4593091ac2991,
        },
        r0a1: u288 {
            limb0: 0xb5d7f11b7586f1eeba8fc47b,
            limb1: 0xc3eb7d348bcc15f433e4a7c9,
            limb2: 0x2b9ace06c41492d6,
        },
        r1a0: u288 {
            limb0: 0xbd524c6dffeddb9d68ed6826,
            limb1: 0xc9ad4f7c1ac61e11d72a59bc,
            limb2: 0x4a2b7a926a86490,
        },
        r1a1: u288 {
            limb0: 0x1ef9dd33982fc57db951d9b3,
            limb1: 0x75fc2989033146321ffec409,
            limb2: 0xc185e5e5f5d7f87,
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
            limb0: 0xb00dcb221e9f763209c77a0e,
            limb1: 0x9e29ee117f1674e2c93a6e97,
            limb2: 0x566df5539a1bc24,
        },
        r0a1: u288 {
            limb0: 0x78b70cc53f24e982b97c6942,
            limb1: 0x8e72c304cfb1a52c6a9b14a0,
            limb2: 0x23e959ec6225bc28,
        },
        r1a0: u288 {
            limb0: 0xa3573219ffdd60c07999ca6b,
            limb1: 0x462d287e965ac0e7e8efa55c,
            limb2: 0x4f3df93a20c82c9,
        },
        r1a1: u288 {
            limb0: 0xcd2f86e1a5344b3a64fc3c53,
            limb1: 0x44155094c563daf1c1d770d4,
            limb2: 0x1b782469bc63ee71,
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
            limb0: 0x7606dbc3dcf445f9157ad05d,
            limb1: 0x767ad597f0eb2ebf35e07680,
            limb2: 0x1c88c36efe2018cd,
        },
        r0a1: u288 {
            limb0: 0xfb8b5ccd95af1cd3b45ac376,
            limb1: 0x6674167d5aaea07e5473985c,
            limb2: 0x163b7971a912b981,
        },
        r1a0: u288 {
            limb0: 0xe8f96ee48d5f5b707a2d3b40,
            limb1: 0xb774116fbc5e9e52a57919f5,
            limb2: 0x13c5bc0a98273aa8,
        },
        r1a1: u288 {
            limb0: 0xda77471b01367295be8c0ba3,
            limb1: 0x399c95db9b9541b70909b38e,
            limb2: 0x7fe3e654d51ed1d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x16d2e767eab2a3419db192a1,
            limb1: 0x266026e88a243f8269b5ec97,
            limb2: 0x296d30a59d4ea6c7,
        },
        r0a1: u288 {
            limb0: 0x7cdcf4d8688a0da7a15405ef,
            limb1: 0xe341797af380039d6227e6ee,
            limb2: 0x1d38fa6f8399eb50,
        },
        r1a0: u288 {
            limb0: 0x891ca1fd8050ae6d737605a0,
            limb1: 0x83655f39297fc678222a357f,
            limb2: 0x2d84413ed7cb99ba,
        },
        r1a1: u288 {
            limb0: 0x942f2836b3e75ecf824ec0ff,
            limb1: 0xa4cff4389c8766d8fffb71ee,
            limb2: 0x1c0dd5beff7bd026,
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
            limb0: 0x640a61979515371637ab0fbb,
            limb1: 0x958d0cbecd4994a5ac032115,
            limb2: 0x2edcdb2692fefad6,
        },
        r0a1: u288 {
            limb0: 0xb573192a349773bcd0d2029,
            limb1: 0xc00b154a2c4dcff59791f262,
            limb2: 0x1c73db99d5a4ea79,
        },
        r1a0: u288 {
            limb0: 0xa5138946851462cb15db6158,
            limb1: 0x88d741068573ca74c62f69f8,
            limb2: 0x23b149dda27bd4e3,
        },
        r1a1: u288 {
            limb0: 0xfd20b4132d0ca47285cf5b1c,
            limb1: 0x7ecb1e470874801443d4a304,
            limb2: 0x6835bc8c911b33e,
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
            limb0: 0x1e4859c9bfa888aa9ba35e09,
            limb1: 0xd6717507cd5915f3c57d0343,
            limb2: 0x24b26a9e87b40aad,
        },
        r0a1: u288 {
            limb0: 0xdf33032d1b0e61d0d1d8d26b,
            limb1: 0xc8f887b253ac9c33953dba04,
            limb2: 0x2462974701a2b7e5,
        },
        r1a0: u288 {
            limb0: 0x6e5c6c6b709f132ac6fe41b3,
            limb1: 0x512ff0db1068c1a479739413,
            limb2: 0x11600066131baa7e,
        },
        r1a1: u288 {
            limb0: 0x681021d05dda0a7a1d10123e,
            limb1: 0xb9de15d7abf7fcd342362fca,
            limb2: 0x2d42c46af6a8b1cd,
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
            limb0: 0x928b643afb23ddb8cdcb9196,
            limb1: 0xa2509c2570e3a3cf5647b132,
            limb2: 0x2297351f8fe62b50,
        },
        r0a1: u288 {
            limb0: 0x40e65965d672e535c5234ba8,
            limb1: 0xe9b88a6ffad53b2eeb82214f,
            limb2: 0x1cff20bbe1a5de4a,
        },
        r1a0: u288 {
            limb0: 0x328777cd046fd26b268cadcb,
            limb1: 0xb51aa419f76db6175cb1af9b,
            limb2: 0x7505ef18ee696a7,
        },
        r1a1: u288 {
            limb0: 0x5ae31b903f0a89b30f800cdc,
            limb1: 0x2ea1dea4e8d058ab37895463,
            limb2: 0x1249f8d8f8316911,
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
            limb0: 0xce46e054aadaeac3062a0b42,
            limb1: 0xa8cc23b3a507c3b2e372f9ec,
            limb2: 0x13ec590bfd8eaea6,
        },
        r0a1: u288 {
            limb0: 0xb037262bd6bf92b689ee1cbb,
            limb1: 0x9fdabd26c7ddcb1ea2f2ed1d,
            limb2: 0xc30e195a4cafad4,
        },
        r1a0: u288 {
            limb0: 0xd38d75e578facb9637b69a2b,
            limb1: 0x672a954ee199a60582f90f72,
            limb2: 0x15a4678ec3d33f19,
        },
        r1a1: u288 {
            limb0: 0x28fbf9505d80010d3c505293,
            limb1: 0x22e0e44f23d19416ef083557,
            limb2: 0x117977002f45d861,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc170f426674a0b93548b1321,
            limb1: 0x6bc0f1521dda43dbaf6ce1e5,
            limb2: 0x7da51218e21b7ab,
        },
        r0a1: u288 {
            limb0: 0xfbd610835c0dc033a94475f,
            limb1: 0x122c967b7e4b21d9f0a90c46,
            limb2: 0x2173f94ec9481911,
        },
        r1a0: u288 {
            limb0: 0x6f6394ee3ce6a2a80806148d,
            limb1: 0x52bf27181f50acdf176816b,
            limb2: 0x1874f2384a462d41,
        },
        r1a1: u288 {
            limb0: 0xe20bdcb701f96293d121e44f,
            limb1: 0x33eec32f162e568d261c5c25,
            limb2: 0x1497fc41056f46a8,
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
            limb0: 0x2b3733f34d529c5b79dca1d3,
            limb1: 0xf9b5ebf1510cdc8a69139eeb,
            limb2: 0x162b42f6c4063cc4,
        },
        r0a1: u288 {
            limb0: 0xc518234888a3e0722d8b2391,
            limb1: 0x6099ba613b232b4d52914b63,
            limb2: 0x89d5926592c0449,
        },
        r1a0: u288 {
            limb0: 0x429525f7195589add656dc76,
            limb1: 0x308cc3a7c1a07a73b0ee16d7,
            limb2: 0x9253f7c0939ef8d,
        },
        r1a1: u288 {
            limb0: 0xbb88d92980b39cef5be2acb4,
            limb1: 0xe18cb91d2d4ab0cea938c724,
            limb2: 0xeb562b300002584,
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
            limb0: 0xb800fa353cc307217bfb5ee0,
            limb1: 0x365d2108995b5871176fd65e,
            limb2: 0x242900c76d0689b2,
        },
        r0a1: u288 {
            limb0: 0xfc2b932f6bc8512f79425f6f,
            limb1: 0xc8fb11662ea56f6ad8d3814e,
            limb2: 0x1696a10e1071a801,
        },
        r1a0: u288 {
            limb0: 0x2e83251d70c059619edbd736,
            limb1: 0xffc775d2b6a92c2a3b15251,
            limb2: 0xc114dda7be84be1,
        },
        r1a1: u288 {
            limb0: 0x2ff161b3933a916629294040,
            limb1: 0x4bac85269bc73f7d30b9342b,
            limb2: 0x20d7b97a8edfcf18,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6e834c0fa3cef5c37917fe6e,
            limb1: 0xe7befa140cc3dc7fd2e33a1,
            limb2: 0x2d52539ad7b97c00,
        },
        r0a1: u288 {
            limb0: 0xc123dd6b40e63f799fdb7527,
            limb1: 0x8e621926d415fcd9c1d8a5d1,
            limb2: 0x5fec56263be9bc3,
        },
        r1a0: u288 {
            limb0: 0x970a2a7a3e0fe901c5f0a038,
            limb1: 0x2a86855c612f81fb86f9e412,
            limb2: 0x119e78c3431f8ab3,
        },
        r1a1: u288 {
            limb0: 0x2d298250dd4ad0e911a82ff8,
            limb1: 0x2af9fb25bee223303e73676,
            limb2: 0x314d7f7d5fd8e05,
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
            limb0: 0xbb658c2118bc9750b528f1f0,
            limb1: 0xed2ef1426f7a555e26f15379,
            limb2: 0xd69767b2b8817dd,
        },
        r0a1: u288 {
            limb0: 0xd02ac67a33af1eac558c7359,
            limb1: 0x7e9ebe401c031577528aeb3f,
            limb2: 0x47736e0e95c1b42,
        },
        r1a0: u288 {
            limb0: 0xcd7da2112dbe7e447c3b69e2,
            limb1: 0xb8077628beb6d8da4362445,
            limb2: 0x164c5340dc2e15de,
        },
        r1a1: u288 {
            limb0: 0xf581c11cddaf1812dc89805c,
            limb1: 0x9882ad2aa6c0656d2f7afab6,
            limb2: 0x2b10ca882d0583d0,
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
            limb0: 0x18794e2d936a5482940bfe26,
            limb1: 0xafbf2ffd25f0ba08a8c49eaa,
            limb2: 0x39f687e83ad6fe4,
        },
        r0a1: u288 {
            limb0: 0x2e84f063dba1691e5e06f6f,
            limb1: 0x81b374ac159713e38ab9c4f0,
            limb2: 0x163831854afaa855,
        },
        r1a0: u288 {
            limb0: 0x64926216b516586d24a0db94,
            limb1: 0xf7130b75b853da0e25166bd1,
            limb2: 0x1d2ac7f51bb4ae78,
        },
        r1a1: u288 {
            limb0: 0x42611d435c43417ceb94411d,
            limb1: 0x3162d8b27aa212662fcc691b,
            limb2: 0x2d687617da419afa,
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
            limb0: 0x673f022901ee5ebe4da5b0f0,
            limb1: 0x377f565b9313798aab26ac11,
            limb2: 0x2127f09b5837d47d,
        },
        r0a1: u288 {
            limb0: 0xa92fbe9e92263e6642592cb1,
            limb1: 0x918d2a4dce023aa1d0b8612c,
            limb2: 0x3f5a98f6244449a,
        },
        r1a0: u288 {
            limb0: 0xfc72a61108700fd77c5c5a72,
            limb1: 0xe599ea226645a8f7499d6995,
            limb2: 0x1cb0916776c3b9f2,
        },
        r1a1: u288 {
            limb0: 0x3ece1c92f2eb1cfbee4d8544,
            limb1: 0xad8278d977e38648ec5961a8,
            limb2: 0x20e2e754a90904d8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x933940290100c382759927c5,
            limb1: 0x1cc26efdcdbc6070db89ee6d,
            limb2: 0x1858d584fb04fab,
        },
        r0a1: u288 {
            limb0: 0x524b6210ae98fe5d905e6465,
            limb1: 0x90cf505aaa54d1c7a63dd88b,
            limb2: 0x1f2d5e5c837f2e7b,
        },
        r1a0: u288 {
            limb0: 0x3776feddd3d756e88d650ee0,
            limb1: 0x4131fb1def59caff5997ab7f,
            limb2: 0x261c9f7195be7c1f,
        },
        r1a1: u288 {
            limb0: 0xc050b2fbeec9933d484e378b,
            limb1: 0xdc97d2db8103ff8e7d20bfa7,
            limb2: 0x225fea9163e98305,
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
            limb0: 0x3cb7e6227f1407534d90c27c,
            limb1: 0xd4db0e3ca40a6d47d3cffed2,
            limb2: 0x2d3a88a9b094eeb,
        },
        r0a1: u288 {
            limb0: 0x1c6f9be6a336a8d1b20501bc,
            limb1: 0x9c300424a0dec51ca3237645,
            limb2: 0x102ca660b4a1525e,
        },
        r1a0: u288 {
            limb0: 0xda79aa82d8ed927be8e067d,
            limb1: 0x15b843ce6634bb3f89092d12,
            limb2: 0x246a295bd85f27e,
        },
        r1a1: u288 {
            limb0: 0x727ad9d6bcb557845271663c,
            limb1: 0xeedd31e4bfc0d2da55ed9f98,
            limb2: 0x208a20adb1c0ccc5,
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
            limb0: 0x9b964c2a175d02688f67bd6,
            limb1: 0xb2bf36ca23b28215c11f7ca2,
            limb2: 0x2e087e11d0255def,
        },
        r0a1: u288 {
            limb0: 0x1a44066b5fc084949f122f0f,
            limb1: 0xab5143054e0602ca167d8fd0,
            limb2: 0xbbc95261ddf4cfd,
        },
        r1a0: u288 {
            limb0: 0x80e13b48d20b81ab4cc7b48,
            limb1: 0x47b70baa77acae05330f8492,
            limb2: 0x5dbc43bd8a66261,
        },
        r1a1: u288 {
            limb0: 0xa283645cff151f51200ee49a,
            limb1: 0x58f74b6467bd9ab2dba4835c,
            limb2: 0x2b4b9feb64c2caa,
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
            limb0: 0x94001924f71e7ab780b572c,
            limb1: 0xa8f1466fe8d1723a2448cd80,
            limb2: 0x4d6811922478ed1,
        },
        r0a1: u288 {
            limb0: 0x85e175497a77c2cfa83cbcc8,
            limb1: 0xc46e860b21a9cc7d4b909e40,
            limb2: 0x7c18c7435eccac9,
        },
        r1a0: u288 {
            limb0: 0x65b2cf2fb97e7558a0694c4f,
            limb1: 0x1548172e6039f76f1c218ba6,
            limb2: 0x1f7820e76e9cc842,
        },
        r1a1: u288 {
            limb0: 0x463c71ed28ef490ba9f94ca7,
            limb1: 0x2ce947a9d25da81e4a2f4d37,
            limb2: 0x1947761509981440,
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
            limb0: 0xc05fc1eaf6847f57ba48d7ed,
            limb1: 0xc08d1b082cc28710d9f624ec,
            limb2: 0x1bbceb5425b38cf1,
        },
        r0a1: u288 {
            limb0: 0xdd56e7279a38c2b4263277e6,
            limb1: 0x5ec573a94181e2619998eadc,
            limb2: 0x1866c7eb5bf1e32d,
        },
        r1a0: u288 {
            limb0: 0x80aab17c2f705cbf6bd07449,
            limb1: 0x2e9b5bfca1237b3105388794,
            limb2: 0x1ea7298e7cec5a2c,
        },
        r1a1: u288 {
            limb0: 0x4b6e9fea6ff6997dc136a783,
            limb1: 0x6aa2e9119e693b0f50766f31,
            limb2: 0x165bc29d55fc4284,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9e24ba8d75b3d1e6944812b1,
            limb1: 0x6d6367bc37007c77543d90b8,
            limb2: 0xcfadd8b8979679b,
        },
        r0a1: u288 {
            limb0: 0xdcc93f41a8f1d7d12cbbdccf,
            limb1: 0x5cb0b2f8b7ddf3c5f740ab6b,
            limb2: 0x2fb723de9a2e181c,
        },
        r1a0: u288 {
            limb0: 0xf9a878d8b82ad7ce074183f1,
            limb1: 0x5ed85b962fcd14b4d0a5713a,
            limb2: 0xaeaa80972888cd7,
        },
        r1a1: u288 {
            limb0: 0xffd7c324ef79d648a0231b3c,
            limb1: 0x2384ebd7d9bbbf717866a794,
            limb2: 0x5c5646ad89497f9,
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
            limb0: 0xdf06bb38c47c6608895e75f7,
            limb1: 0xf01fc24f2fe754afe6d9aff7,
            limb2: 0xc8596161b1515a9,
        },
        r0a1: u288 {
            limb0: 0xb26e7599d050d999ab8062a8,
            limb1: 0x46c1daaddf24c786df57b7df,
            limb2: 0x295f228c3ca75ee5,
        },
        r1a0: u288 {
            limb0: 0xa29f18befc54963667790f46,
            limb1: 0xe6a7502cea0b925390e70ce2,
            limb2: 0x236fb858c124da8c,
        },
        r1a1: u288 {
            limb0: 0x255ee9efc11f43776c2baef7,
            limb1: 0x2c74bce0e0223762dfa9bf5d,
            limb2: 0x1f57190c8684b9f8,
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
            limb0: 0x29269d4d5bdf4ed856d8fb37,
            limb1: 0x186951eaf427f54d1dcb8186,
            limb2: 0xe97ba694ba3e1ca,
        },
        r0a1: u288 {
            limb0: 0xd71695da79d5483d07c9d4cc,
            limb1: 0x5b71c6535da93b95f6fa9632,
            limb2: 0x260924ca4b1671a3,
        },
        r1a0: u288 {
            limb0: 0x6acdc955d8853f61c378d7ef,
            limb1: 0x9cd302cba7e6a8ea35a716d9,
            limb2: 0x1e434d98ea11bc57,
        },
        r1a1: u288 {
            limb0: 0x11da2fa484b0c2267896bfa4,
            limb1: 0x9f5972a5248ff22c9686ffa8,
            limb2: 0x17dccd32ab98610e,
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
            limb0: 0x6ae785388b706286fef1cdf0,
            limb1: 0x2d68d1f83f9ee2256f035f7e,
            limb2: 0x12b470bacb770ebc,
        },
        r0a1: u288 {
            limb0: 0x606898b3dd2b5945f7b5d2be,
            limb1: 0xffa54e4db7a768fcc0bbbe3e,
            limb2: 0x19c58aaa937c55d4,
        },
        r1a0: u288 {
            limb0: 0xf60c2c179ec5fcabb7265b85,
            limb1: 0xa7fbd38650e83469580a1729,
            limb2: 0x12007d75b0706df7,
        },
        r1a1: u288 {
            limb0: 0xf97cafcd55d078a5910e4152,
            limb1: 0x389265dd06082c13bf8473ab,
            limb2: 0x27b92f4afc3042e1,
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
            limb0: 0xde909488b7c142b5095fedf3,
            limb1: 0x97e7684a3ff0acbe905cc8e,
            limb2: 0xa4e4023fe79fdfd,
        },
        r0a1: u288 {
            limb0: 0xbb2b16a64a5257f6b6f828e6,
            limb1: 0xc97220c6d9bfad5deb23950,
            limb2: 0x109b58f016b7419a,
        },
        r1a0: u288 {
            limb0: 0x89e1b57ef2c7ce03ca08073b,
            limb1: 0x67bb90e5747721c53c0b19d7,
            limb2: 0x9fb28d284717c3d,
        },
        r1a1: u288 {
            limb0: 0xff52ccedcf680073ce7f809a,
            limb1: 0x6850373234ac33861087ad12,
            limb2: 0x749a1beae42bbee,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb02ce6d913ac8e0faa01b66c,
            limb1: 0xd6051446cb655b5455e4f624,
            limb2: 0x28fc2528a74d9f1d,
        },
        r0a1: u288 {
            limb0: 0x53f8b4bfe6e5223a17b2d481,
            limb1: 0xf8e54bbfc3d909df2f55883c,
            limb2: 0x2b0af6559bcf6584,
        },
        r1a0: u288 {
            limb0: 0xb589d7aa6be0bc7d6a67715d,
            limb1: 0x4e847067b8b61613d1944283,
            limb2: 0x253ae0cc592155de,
        },
        r1a1: u288 {
            limb0: 0x4a9a1d6d7acec918ddac02da,
            limb1: 0xb9264e2c4ab9bbcc0c0626fa,
            limb2: 0x169506bbdc636525,
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
            limb0: 0xe4391f43faafbea5dd04e888,
            limb1: 0xcdaf17fd6460aa00f3e92138,
            limb2: 0xf5d796859319bad,
        },
        r0a1: u288 {
            limb0: 0x72d27e6f96ae5dbb438af6ab,
            limb1: 0xa502de487afce76036b0ffaa,
            limb2: 0x12c2fb47923480a3,
        },
        r1a0: u288 {
            limb0: 0x90bba527971492e7b274d730,
            limb1: 0x5ad1df81570d6d4e4ae6de83,
            limb2: 0x23bd6a02c0a1726c,
        },
        r1a1: u288 {
            limb0: 0x8e524b5bdc609463817c9dec,
            limb1: 0x1e07b555e5ba1059d9ab4b23,
            limb2: 0x23767705581dde03,
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
            limb0: 0x1b5858e82fa9e8acc2b291f6,
            limb1: 0xa6250da0ace81b6fedc0ec2,
            limb2: 0x10d8a53fb7e6734e,
        },
        r0a1: u288 {
            limb0: 0xd6c85884414bb67a53195da9,
            limb1: 0xdb64781df097d5bad6ae32e3,
            limb2: 0x469ad6c542b07cf,
        },
        r1a0: u288 {
            limb0: 0x19622216f9e08283cb28765e,
            limb1: 0x161e2c7cdf9a2422b7530295,
            limb2: 0x1ae227fabd893a6b,
        },
        r1a1: u288 {
            limb0: 0x85c95d9640f15f592dc3a80a,
            limb1: 0x5e98491f0ad572ef00358fd7,
            limb2: 0x185187802d1e110b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9224af05c05c4c9465c1a355,
            limb1: 0xc496bcf43f5312317fcd08d9,
            limb2: 0xabce3528955ff56,
        },
        r0a1: u288 {
            limb0: 0xd32ac9faeee12d8ab08b7882,
            limb1: 0xafacaab5d8f3308c5052b723,
            limb2: 0xae7d73fb215f33a,
        },
        r1a0: u288 {
            limb0: 0x5da757cdecf67b6768e6c508,
            limb1: 0x3d948dd7817f682d2c3ea4ca,
            limb2: 0x17b989f7d82e231e,
        },
        r1a1: u288 {
            limb0: 0xd6ef7b56a2be56c4f00d6d98,
            limb1: 0x445538ebd85fd40fff415413,
            limb2: 0x244244621ae94eff,
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
            limb0: 0x91f24737ce534c795498da0c,
            limb1: 0x38eeafefcb1b562d408b0b83,
            limb2: 0x1d4dcc2d7c13d45b,
        },
        r0a1: u288 {
            limb0: 0xfc5944ea1336687d752282d8,
            limb1: 0x5d319fedf32aa98b29ffcf46,
            limb2: 0x27116da54b829b13,
        },
        r1a0: u288 {
            limb0: 0x8ad04a7261405e46ff33988f,
            limb1: 0x33b27502111b98834099f9af,
            limb2: 0xbd9c3927ebf84a3,
        },
        r1a1: u288 {
            limb0: 0xed2cafffff4fafa2ea1b6e3b,
            limb1: 0x2970208cfca856f0e40d7ce4,
            limb2: 0xa6c4e0c478e3561,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x63f91cc7dd731227010585a2,
            limb1: 0xf6990eba4c0e196e4c13fe7e,
            limb2: 0x1588edcda5024291,
        },
        r0a1: u288 {
            limb0: 0x500d381e2d5e74b3a237b95a,
            limb1: 0x162e1fcb479ac885863f7c2c,
            limb2: 0x33cd7bfe9965618,
        },
        r1a0: u288 {
            limb0: 0x87e61e1f939e88f74d546c4,
            limb1: 0x659900e8e2b9e0e9bda05819,
            limb2: 0x19685488d2aa2b5d,
        },
        r1a1: u288 {
            limb0: 0x862e3c37c4f30f7b0d0e8750,
            limb1: 0x1f637df39b6d79b589b6c03d,
            limb2: 0x17fad0b0bb74cc82,
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
            limb0: 0xaa6f33dd2fb94a558d6fd7bc,
            limb1: 0x84cfac219b6238a6ad424a7,
            limb2: 0x20ef74419765bcfb,
        },
        r0a1: u288 {
            limb0: 0x48d202d5bfc70bf6158eaf5a,
            limb1: 0xdf12a2feda831574c182c866,
            limb2: 0x1c99ce98464d82cd,
        },
        r1a0: u288 {
            limb0: 0x450d2b63da315467e5bc8490,
            limb1: 0xf1ae14a8aecb51e48ecb0160,
            limb2: 0x1da311fd28a99be,
        },
        r1a1: u288 {
            limb0: 0x1b81015f7d587b5405ad6b9a,
            limb1: 0x420150ddd001b70ccfec950b,
            limb2: 0x32b2c8b3b1d6e62,
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
            limb0: 0x2a2d6661c30c829b2250439d,
            limb1: 0x1b2860ede9b59eb2554b0c87,
            limb2: 0x429608a5c3702c6,
        },
        r0a1: u288 {
            limb0: 0xfc9ce8812d53c19568f4210c,
            limb1: 0xd87d3ba337574dcf9e40a2a4,
            limb2: 0x2d553a435705b4c,
        },
        r1a0: u288 {
            limb0: 0xf7ec2791580f3f5fc353aa4e,
            limb1: 0x820c41a39286d8b66923de70,
            limb2: 0x23e459d0ff8d75b8,
        },
        r1a1: u288 {
            limb0: 0xf9157b067a6419e0b4b1beb2,
            limb1: 0x57df72d8d474f1da8039d4e9,
            limb2: 0x88de83af08377d1,
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
            limb0: 0x43454435f7ce95da761f1ac1,
            limb1: 0x72f72c77178b9b5ebfb4848e,
            limb2: 0xb69a883fd4ae44,
        },
        r0a1: u288 {
            limb0: 0x8e7a9c651d82e3481cdd9791,
            limb1: 0x58f21cc2917e6acf6fac8dc8,
            limb2: 0x26aeddfe738f2671,
        },
        r1a0: u288 {
            limb0: 0x8a12a8ea8be084997899f635,
            limb1: 0xfec4be25c3901f0ea5cdb153,
            limb2: 0x24b1875f5ef2204e,
        },
        r1a1: u288 {
            limb0: 0x14ae89c700d7ceff2fe21f86,
            limb1: 0xe904efb9765d2baf86f1a75b,
            limb2: 0x2a79d6e7cde8b2b9,
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
            limb0: 0x70549f73f4501b0865113783,
            limb1: 0x269313c552af89328d8c678a,
            limb2: 0xf5999a92c7f1ecf,
        },
        r0a1: u288 {
            limb0: 0x10ff4eb74db61b5084b69bbb,
            limb1: 0x1ce51a24ac48497a6bf74694,
            limb2: 0x38b2c258175ed5b,
        },
        r1a0: u288 {
            limb0: 0xeaaa5cef39dcb5f8b8a1b7aa,
            limb1: 0x2044a5b93dbaeac5c7bc09b1,
            limb2: 0x2533b8bd6e2f3417,
        },
        r1a1: u288 {
            limb0: 0xdb191f4205c7f8e42b4ead8f,
            limb1: 0x2964222139961a769d697f88,
            limb2: 0x321c53812d44e4a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5c01183b03925b63be89c24e,
            limb1: 0x304139a488f2268f8b2e366d,
            limb2: 0xefde32cc8e47976,
        },
        r0a1: u288 {
            limb0: 0x328038b8d896751f9288a6bb,
            limb1: 0x4075c725c93fc1acf4ba2827,
            limb2: 0x1e2f72e65aa28d54,
        },
        r1a0: u288 {
            limb0: 0x7ffd27c350f9c984d83d5d,
            limb1: 0xf04effe9d31853a0ab454800,
            limb2: 0x29f81077a401572e,
        },
        r1a1: u288 {
            limb0: 0xf22599a98d13337c3b7b0bbb,
            limb1: 0x5ba24050088d0085e2793067,
            limb2: 0xe1a2b3987340836,
        },
    },
];

