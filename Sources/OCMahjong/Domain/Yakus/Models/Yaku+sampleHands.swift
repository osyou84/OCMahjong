//
//  Yaku+sampleHands.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

public extension Yaku {
    var sampleHands: [any Hai] {
        switch self {
        case .pinfu:
            [
                Pinzu.iiPin, Pinzu.iiPin,
                Manzu.ryanMan, Manzu.sanMan, Manzu.suMan,
                Manzu.uuMan, Manzu.roMan, Manzu.chiMan,
                Pinzu.roPin, Pinzu.chiPin, Pinzu.paaPin,
                Souzu.ryanSou, Souzu.sanSou, Souzu.suSou
            ]
        case .tanyao:
            [
                Pinzu.ryanPin, Pinzu.ryanPin,
                Manzu.ryanMan, Manzu.ryanMan, Manzu.ryanMan,
                Manzu.uuMan, Manzu.roMan, Manzu.chiMan,
                Pinzu.paaPin, Pinzu.paaPin, Pinzu.paaPin,
                Souzu.ryanSou, Souzu.sanSou, Souzu.suSou
            ]
        case .yakuhai:
            [
                Manzu.iiMan, Manzu.iiMan,
                Manzu.ryanMan, Manzu.sanMan, Manzu.sanMan,
                Sangenpai.haku, Sangenpai.haku, Sangenpai.haku,
                Sangenpai.hatsu, Sangenpai.hatsu, Sangenpai.hatsu,
                Kazehai.ton, Kazehai.ton, Kazehai.ton,
            ]
        case .iipeiko:
            [
                Sangenpai.haku, Sangenpai.haku,
                Manzu.iiMan, Manzu.iiMan, Manzu.ryanMan,
                Manzu.ryanMan, Manzu.sanMan, Manzu.sanMan,
                Souzu.roSou, Souzu.roSou, Souzu.roSou,
                Souzu.chiSou, Souzu.chiSou, Souzu.chiSou,
            ]
        case .sanshokuDoujun:
            [
                Kazehai.ton, Kazehai.ton,
                Manzu.iiMan, Manzu.ryanMan, Manzu.sanMan,
                Pinzu.iiPin, Pinzu.ryanPin, Pinzu.sanPin,
                Souzu.iiSou, Souzu.ryanSou, Souzu.sanSou,
                Kazehai.pei, Kazehai.pei, Kazehai.pei,
            ]
        case .ikkitsuukan:
            [
                Sangenpai.haku, Sangenpai.haku,
                Manzu.iiMan, Manzu.ryanMan, Manzu.sanMan,
                Manzu.suMan, Manzu.uuMan, Manzu.roMan,
                Manzu.chiMan, Manzu.paaMan, Manzu.kyuMan,
                Pinzu.kyuPin, Pinzu.kyuPin, Pinzu.kyuPin
            ]
        case .chanta:
            [
                Sangenpai.chun, Sangenpai.chun,
                Manzu.iiMan, Manzu.iiMan, Manzu.ryanMan,
                Manzu.chiMan, Manzu.paaMan, Manzu.kyuMan,
                Pinzu.chiPin, Pinzu.paaPin, Pinzu.kyuPin,
                Kazehai.ton, Kazehai.ton, Kazehai.ton
            ]
        case .chitoitsu:
            [
                Manzu.iiMan, Manzu.iiMan,
                Manzu.roMan, Manzu.roMan,
                Pinzu.sanPin, Pinzu.sanPin,
                Souzu.kyuSou, Souzu.kyuSou,
                Souzu.chiSou, Souzu.chiSou,
                Kazehai.sya, Kazehai.sya,
                Kazehai.pei, Kazehai.pei,
            ]
        case .sananko:
            [
                Kazehai.sya, Kazehai.sya,
                Manzu.roMan, Manzu.chiMan, Manzu.paaMan,
                Pinzu.iiPin, Pinzu.iiPin, Pinzu.iiPin,
                Kazehai.pei, Kazehai.pei, Kazehai.pei,
                Sangenpai.haku, Sangenpai.haku, Sangenpai.haku,
            ]
        case .sanshokuDouko:
            [
                Kazehai.ton, Kazehai.ton,
                Manzu.iiMan, Manzu.iiMan, Manzu.iiMan,
                Pinzu.iiPin, Pinzu.iiPin, Pinzu.iiPin,
                Souzu.iiSou, Souzu.iiSou, Souzu.iiSou,
                Kazehai.pei, Kazehai.pei, Kazehai.pei,
            ]
        case .sankantsu:
            [
                Pinzu.kyuPin, Pinzu.kyuPin,
                Kazehai.ton, Kazehai.ton, Kazehai.ton,
                Manzu.iiMan, Manzu.iiMan, Manzu.iiMan, Manzu.iiMan,
                Pinzu.sanPin, Pinzu.sanPin, Pinzu.sanPin, Pinzu.sanPin,
                Souzu.kyuSou, Souzu.kyuSou, Souzu.kyuSou, Souzu.kyuSou,
            ]
        case .honiso:
            [
                Sangenpai.chun, Sangenpai.chun,
                Manzu.iiMan, Manzu.ryanMan, Manzu.sanMan,
                Manzu.suMan, Manzu.uuMan, Manzu.roMan,
                Manzu.chiMan, Manzu.chiMan, Manzu.chiMan,
                Kazehai.ton, Kazehai.ton, Kazehai.ton
            ]
        case .junchan:
            [
                Manzu.kyuMan, Manzu.kyuMan,
                Manzu.iiMan, Manzu.iiMan, Manzu.ryanMan,
                Manzu.chiMan, Manzu.paaMan, Manzu.kyuMan,
                Pinzu.chiPin, Pinzu.paaPin, Pinzu.kyuPin,
                Souzu.chiSou, Souzu.paaSou, Souzu.kyuSou
            ]
        case .ryanPeiko:
            [
                Sangenpai.haku, Sangenpai.haku,
                Manzu.iiMan, Manzu.iiMan, Manzu.ryanMan,
                Manzu.ryanMan, Manzu.sanMan, Manzu.sanMan,
                Souzu.roSou, Souzu.roSou, Souzu.chiSou,
                Souzu.chiSou, Souzu.paaSou, Souzu.paaSou,
            ]
        case .shosangen:
            [
                Sangenpai.haku, Sangenpai.haku,
                Kazehai.ton, Kazehai.ton, Kazehai.ton,
                Manzu.iiMan, Manzu.ryanMan, Manzu.sanMan,
                Sangenpai.hatsu, Sangenpai.hatsu, Sangenpai.hatsu,
                Sangenpai.chun, Sangenpai.chun, Sangenpai.chun,
            ]
        case .honroto:
            [
                Manzu.iiMan, Manzu.iiMan,
                Manzu.kyuMan, Manzu.kyuMan, Manzu.kyuMan,
                Souzu.iiSou, Souzu.iiSou, Souzu.iiSou,
                Pinzu.iiPin, Pinzu.iiPin, Pinzu.iiPin,
                Kazehai.pei, Kazehai.pei, Kazehai.pei
            ]
        case .chinitsu:
            [
                Manzu.kyuMan, Manzu.kyuMan,
                Manzu.iiMan, Manzu.ryanMan, Manzu.sanMan,
                Manzu.suMan, Manzu.uuMan, Manzu.roMan,
                Manzu.chiMan, Manzu.chiMan, Manzu.chiMan,
                Manzu.paaMan, Manzu.paaMan, Manzu.paaMan,
            ]
        case .kokushiMuso:
            [
                Manzu.iiMan, Manzu.kyuMan, Pinzu.iiPin, Pinzu.kyuPin, Souzu.iiSou, Souzu.kyuSou,
                Kazehai.ton, Kazehai.nan, Kazehai.sya, Kazehai.pei,
                Sangenpai.haku, Sangenpai.hatsu, Sangenpai.chun,
                Sangenpai.chun
            ]
        case .suanko, .toitoiho:
            [
                Kazehai.sya, Kazehai.sya,
                Manzu.roMan, Manzu.roMan, Manzu.roMan,
                Pinzu.iiPin, Pinzu.iiPin, Pinzu.iiPin,
                Kazehai.pei, Kazehai.pei, Kazehai.pei,
                Sangenpai.haku, Sangenpai.haku, Sangenpai.haku,
            ]
        case .daisangen:
            [
                Kazehai.ton, Kazehai.ton,
                Manzu.iiMan, Manzu.ryanMan, Manzu.sanMan,
                Sangenpai.haku, Sangenpai.haku, Sangenpai.haku,
                Sangenpai.hatsu, Sangenpai.hatsu, Sangenpai.hatsu,
                Sangenpai.chun, Sangenpai.chun, Sangenpai.chun,
            ]
        case .syosushi:
            [
                Kazehai.pei, Kazehai.pei,
                Manzu.chiMan, Manzu.paaMan, Manzu.kyuMan,
                Kazehai.ton, Kazehai.ton, Kazehai.ton,
                Kazehai.nan, Kazehai.nan, Kazehai.nan,
                Kazehai.sya, Kazehai.sya, Kazehai.sya,
            ]
        case .daisushi:
            [
                Souzu.iiSou, Souzu.iiSou,
                Kazehai.ton, Kazehai.ton, Kazehai.ton,
                Kazehai.nan, Kazehai.nan, Kazehai.nan,
                Kazehai.sya, Kazehai.sya, Kazehai.sya,
                Kazehai.pei, Kazehai.pei, Kazehai.pei
            ]
        case .ziiso:
            [
                Kazehai.sya, Kazehai.sya,
                Kazehai.ton, Kazehai.ton, Kazehai.ton,
                Kazehai.pei, Kazehai.pei, Kazehai.pei,
                Sangenpai.hatsu, Sangenpai.hatsu, Sangenpai.hatsu,
                Sangenpai.chun, Sangenpai.chun, Sangenpai.chun,
            ]
        case .chinroto:
            [
                Manzu.iiMan, Manzu.iiMan,
                Manzu.kyuMan, Manzu.kyuMan, Manzu.kyuMan,
                Souzu.iiSou, Souzu.iiSou, Souzu.iiSou,
                Pinzu.iiPin, Pinzu.iiPin, Pinzu.iiPin,
                Pinzu.kyuPin, Pinzu.kyuPin, Pinzu.kyuPin
            ]
        case .ryuiso:
            [
                Sangenpai.hatsu, Sangenpai.hatsu,
                Souzu.ryanSou,Souzu.ryanSou,
                Souzu.sanSou, Souzu.sanSou,
                Souzu.suSou, Souzu.suSou,
                Souzu.roSou, Souzu.roSou, Souzu.roSou,
                Souzu.paaSou, Souzu.paaSou, Souzu.paaSou
            ]
        case .churenpoto:
            [
                Manzu.iiMan, Manzu.iiMan, Manzu.iiMan,
                Manzu.ryanMan, Manzu.sanMan, Manzu.suMan,
                Manzu.uuMan, Manzu.roMan, Manzu.chiMan,
                Manzu.paaMan,
                Manzu.kyuMan, Manzu.kyuMan, Manzu.kyuMan,
                Manzu.suMan
            ]
        case .sukantsu:
            [
                Kazehai.pei, Kazehai.pei,
                Manzu.iiMan, Manzu.iiMan, Manzu.iiMan, Manzu.iiMan,
                Pinzu.sanPin, Pinzu.sanPin, Pinzu.sanPin, Pinzu.sanPin,
                Souzu.kyuSou, Souzu.kyuSou, Souzu.kyuSou, Souzu.kyuSou,
                Kazehai.ton, Kazehai.ton, Kazehai.ton, Kazehai.ton
            ]
        default:
            [
                Pinzu.iiPin, Pinzu.iiPin,
                Pinzu.ryanPin, Pinzu.sanPin, Pinzu.suPin,
                Manzu.chiMan, Manzu.paaMan, Manzu.kyuMan,
                Souzu.uuSou, Souzu.uuSou, Souzu.uuSou,
                Sangenpai.haku, Sangenpai.haku, Sangenpai.haku
            ]
        }
    }
}
