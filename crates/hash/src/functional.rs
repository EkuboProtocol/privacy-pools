use ark_ff::{AdditiveGroup, Field, PrimeField};

use super::{constants::CircomPoseidonConstants, field::Fr};

pub fn poseidon_hash(x: Fr, y: Fr) -> Fr {
    let constants = CircomPoseidonConstants::default();
    let result = [Fr::default(), x, y].into_iter();

    let state = Poseidon { constants, result };

    state
        .apply_ark(0)
        .apply_first_half_of_full_rounds()
        .apply_middle_round()
        .apply_partial_rounds()
        .apply_second_half_of_full_rounds()
        .apply_sigma()
        .apply_mix_last(0)
}

struct Poseidon<T: Iterator<Item = Fr>> {
    constants: CircomPoseidonConstants,
    result: T,
}

impl<T: Iterator<Item = Fr>> Poseidon<T> {
    fn apply_second_half_of_full_rounds(self) -> Poseidon<impl Iterator<Item = Fr>> {
        self.apply_sigma()
            .apply_ark((8 / 2 + 1) * 3 + 57)
            .apply_mix_m()
            .apply_sigma()
            .apply_ark((8 / 2 + 1) * 3 + 57 + 3)
            .apply_mix_m()
            .apply_sigma()
            .apply_ark((8 / 2 + 1) * 3 + 57 + 2 * 3)
            .apply_mix_m()
    }

    fn apply_partial_rounds(self) -> Poseidon<impl Iterator<Item = Fr>> {
        self.apply_partial_round(0)
            .apply_partial_round(1)
            .apply_partial_round(2)
            .apply_partial_round(3)
            .apply_partial_round(4)
            .apply_partial_round(5)
            .apply_partial_round(6)
            .apply_partial_round(7)
            .apply_partial_round(8)
            .apply_partial_round(9)
            .apply_partial_round(10)
            .apply_partial_round(11)
            .apply_partial_round(12)
            .apply_partial_round(13)
            .apply_partial_round(14)
            .apply_partial_round(15)
            .apply_partial_round(16)
            .apply_partial_round(17)
            .apply_partial_round(18)
            .apply_partial_round(19)
            .apply_partial_round(20)
            .apply_partial_round(21)
            .apply_partial_round(22)
            .apply_partial_round(23)
            .apply_partial_round(24)
            .apply_partial_round(25)
            .apply_partial_round(26)
            .apply_partial_round(27)
            .apply_partial_round(28)
            .apply_partial_round(29)
            .apply_partial_round(30)
            .apply_partial_round(31)
            .apply_partial_round(32)
            .apply_partial_round(33)
            .apply_partial_round(34)
            .apply_partial_round(35)
            .apply_partial_round(36)
            .apply_partial_round(37)
            .apply_partial_round(38)
            .apply_partial_round(39)
            .apply_partial_round(40)
            .apply_partial_round(41)
            .apply_partial_round(42)
            .apply_partial_round(43)
            .apply_partial_round(44)
            .apply_partial_round(45)
            .apply_partial_round(46)
            .apply_partial_round(47)
            .apply_partial_round(48)
            .apply_partial_round(49)
            .apply_partial_round(50)
            .apply_partial_round(51)
            .apply_partial_round(52)
            .apply_partial_round(53)
            .apply_partial_round(54)
            .apply_partial_round(55)
            .apply_partial_round(56)
    }

    fn apply_middle_round(self) -> Poseidon<impl Iterator<Item = Fr>> {
        self.apply_sigma().apply_ark(4 * 3).apply_mix_p()
    }

    fn apply_first_half_of_full_rounds(self) -> Poseidon<impl Iterator<Item = Fr>> {
        self.apply_sigma()
            .apply_ark(3)
            .apply_mix_m()
            .apply_sigma()
            .apply_ark(6)
            .apply_mix_m()
            .apply_sigma()
            .apply_ark(9)
            .apply_mix_m()
    }

    fn apply_sigma(self) -> Poseidon<impl Iterator<Item = Fr>> {
        let result = self.result.map(|t| t.pow([5]));
        Poseidon {
            constants: self.constants,
            result,
        }
    }

    fn apply_ark(self, r: usize) -> Poseidon<impl Iterator<Item = Fr>> {
        let result = self
            .result
            .enumerate()
            .map(move |(i, x)| x + self.constants.c[i + r]);
        Poseidon {
            constants: self.constants,
            result,
        }
    }

    fn apply_mix_m(self) -> Poseidon<impl Iterator<Item = Fr>> {
        let result = self
            .result
            .enumerate()
            .fold([Fr::ZERO, Fr::ZERO, Fr::ZERO], |acc, (i, val)| {
                [
                    acc[0] + val * self.constants.m[i][0],
                    acc[1] + val * self.constants.m[i][1],
                    acc[2] + val * self.constants.m[i][2],
                ]
            })
            .into_iter();
        Poseidon {
            constants: self.constants,
            result,
        }
    }

    fn apply_mix_p(self) -> Poseidon<impl Iterator<Item = Fr>> {
        let result = self
            .result
            .enumerate()
            .fold([Fr::ZERO, Fr::ZERO, Fr::ZERO], |acc, (i, val)| {
                [
                    acc[0] + val * self.constants.p[i][0],
                    acc[1] + val * self.constants.p[i][1],
                    acc[2] + val * self.constants.p[i][2],
                ]
            })
            .into_iter();
        Poseidon {
            constants: self.constants,
            result,
        }
    }

    fn apply_mix_s(self, r: usize) -> Poseidon<impl Iterator<Item = Fr>> {
        let result = self
            .result
            .enumerate()
            .fold([Fr::ZERO, Fr::ZERO, Fr::ZERO], |acc, (i, val)| {
                let i_f = Fr::from_be_bytes_mod_order(&i.to_be_bytes());
                [
                    acc[0] + val * self.constants.s[(3 * 2 - 1) * r + i],
                    acc[1]
                        + val
                            * (self.constants.s[(3 * 2 - 1) * r + 3 + 1 - 1]
                                * (i_f - Fr::from(1))
                                * (i_f - Fr::from(2))
                                / Fr::from(2)
                                - i_f * (i_f - Fr::from(2))),
                    acc[2]
                        + val
                            * (self.constants.s[(3 * 2 - 1) * r + 3 + 2 - 1]
                                * (i_f - Fr::from(1))
                                * (i_f - Fr::from(2))
                                / Fr::from(2)
                                + i_f * (i_f - Fr::from(1)) / Fr::from(2)),
                ]
            })
            .into_iter();
        Poseidon {
            constants: self.constants,
            result,
        }
    }

    fn apply_partial_round(self, r: usize) -> Poseidon<impl Iterator<Item = Fr>> {
        let c = self.constants.c;
        let result = self.result.enumerate().map(move |(i, val)| {
            let i_f = Fr::from_be_bytes_mod_order(&i.to_be_bytes());
            ((i_f - Fr::from(1)) * (i_f - Fr::from(2)) / Fr::from(2))
                * (val.pow([5]) + c[(8 / 2 + 1) * 3 + r])
                + (-i_f * (i_f - Fr::from(2))) * val
                + (i_f * (i_f - Fr::from(1)) / Fr::from(2)) * val
        });
        Poseidon {
            constants: self.constants,
            result,
        }
        .apply_mix_s(r)
    }

    fn apply_mix_last(self, s: usize) -> Fr {
        self.result
            .enumerate()
            .fold(Fr::ZERO, |acc, (i, val)| acc + val * self.constants.m[i][s])
    }
}

#[cfg(test)]
mod tests {
    use std::str::FromStr;

    use ark_ff::{BigInt, PrimeField};

    use super::*;

    #[test]
    fn test_functional_ark() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "13113380046921429357968206206413495707844213025058902153087258344566081685705",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "15502287019891195293542473848301291711293573680196308374326156854444666425933",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "960782068423008155923835610511860070078873921748828059626034504954890453563",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_ark(0).result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "19858578037131633956342249035175485304147089324604866555944670074438212720439",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "15928568697651131885563790657366470529141658358875818949042050993134916565681",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "4974970831339591754812778277936825500366371746378485279433975965182263031344",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_mix_m() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "18748214218909041356337553469301793477858404099161101255670448756216508301025",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "14001090959915885276730193140615367824457344208709298148449921602972961864271",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "21039621298411050525972067638905940728497671706374440393718856029109245780568",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_mix_m().result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "19212249459613001635322677932044571594832098024684187537767379651838537722242",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "13346432103628585998281534921408530751039791002079061852835106438825147371757",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "470145441107885699228147589021085756242352387945133942451294769220019691807",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_mix_p() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "11054539610865716959112730216921823956884402188047559139840762443903078964807",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "889496775026312796519119247885544826173520850299645133418342221246834572377",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "20327605851775715928805880379802842509685187839623124393912839998555298548830",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_mix_p().result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "10957445925160270044693914644787882019446927193081715019239813790612436710990",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "15617724767560381146854323530626642274265602408002782166490987198203153486720",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "8188576910493806248734793780989996031043527802574000617472436041968065581651",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_mix_s() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "1073104925714253051670422979696287993089561378609784836524058216953452518800",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "18698081889797527287892615152858593919908252735314388801102459459095355586529",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "964734953777785051088731259326514402767379753056823320461487398194316968472",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_mix_s(0).result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "4413576681639644708927435504116008819690219979742107806543982128344816486059",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "18047144526083855362077562050797531820746747110365503012268045400381426067118",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "14512113857556374279800803178193270419547881978169561761995632044104001997174",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_mix_last() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "14903581272446463225204524721363305270359053220610820269937666541151177015349",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "17993715061665243415477544347824042376858770491012817421933497650720324679864",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "15253365088956611786925658848458340812843569370338269931949433692506640669343",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result = state.apply_mix_last(0);

        let expected_result = Fr::from_bigint(
            BigInt::from_str(
                "10776602241119476978803538453188198564682373569005749437912787513019500133942",
            )
            .unwrap(),
        )
        .unwrap();
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_apply_first_half_of_full_rounds() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "6745197990210204598374042828761989596302876299545964402857411729872131034734",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "426281677759936592021316809065178817848084678679510574715894138690250139749",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "4014188762916583598888942667424965430287497824629657219807941460227372577783",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_first_half_of_full_rounds().result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "9943309395376254143231245948431436410590372565785371693355371088413884411998",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "12837704268633123731409489991880757084419858591976660780927068822712588703175",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "16551112502576672709424897151644519675769486194223468437762758741074498596360",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_apply_middle_round() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "9943309395376254143231245948431436410590372565785371693355371088413884411998",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "12837704268633123731409489991880757084419858591976660780927068822712588703175",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "16551112502576672709424897151644519675769486194223468437762758741074498596360",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_middle_round().result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "11629364435629306810625775246865505428506658048445034947575808027687696004207",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "12303584769577550224620322609412466194711485474425274206844915529322074258561",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "15437942142405203582293969107361004450442385649991772898417298526920998645048",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_apply_partial_rounds() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "11629364435629306810625775246865505428506658048445034947575808027687696004207",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "12303584769577550224620322609412466194711485474425274206844915529322074258561",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "15437942142405203582293969107361004450442385649991772898417298526920998645048",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_partial_rounds().result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "974477353586829387583664807115396905852938167012506266803785611129529050860",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "11277148202201700834000840896489138969538086192309442126109525018119198031808",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "18033150508553895228517916453211697357825877177039137921829717541291944415407",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_apply_second_half_of_full_rounds() {
        let constants = CircomPoseidonConstants::default();
        let result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "974477353586829387583664807115396905852938167012506266803785611129529050860",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "11277148202201700834000840896489138969538086192309442126109525018119198031808",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "18033150508553895228517916453211697357825877177039137921829717541291944415407",
                )
                .unwrap(),
            )
            .unwrap(),
        ]
        .into_iter();

        let state = Poseidon { constants, result };
        let result: Vec<Fr> = state.apply_second_half_of_full_rounds().result.collect();

        let expected_result = [
            Fr::from_bigint(
                BigInt::from_str(
                    "18203618683141013771730682510182973233639127032778702736599583199973002468533",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "19685155724275229940165789879333424992340645394851040692371919299121984640221",
                )
                .unwrap(),
            )
            .unwrap(),
            Fr::from_bigint(
                BigInt::from_str(
                    "5639797937363916210083844452654116448396746601652621263468143274145976963691",
                )
                .unwrap(),
            )
            .unwrap(),
        ];
        assert_eq!(result, expected_result);
    }

    #[test]
    fn test_functional_poseidon() {
        let x = Fr::from_bigint(
            BigInt::from_str(
                "4919343374109933223627495853328117416310439472367144134356200729566675210393",
            )
            .unwrap(),
        )
        .unwrap();

        let y = Fr::from_bigint(
            BigInt::from_str(
                "5253109015430049131200882288700211126182357120559979176158196848667194692355",
            )
            .unwrap(),
        )
        .unwrap();

        let result = poseidon_hash(x, y);

        let expected_result = Fr::from_bigint(
            BigInt::from_str(
                "4804190683062966564094284552215482492423412176373545691806986132546823080430",
            )
            .unwrap(),
        )
        .unwrap();
        assert_eq!(result, expected_result);
    }
}
