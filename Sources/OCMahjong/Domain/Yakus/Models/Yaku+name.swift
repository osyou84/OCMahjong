//
//  Yaku+name.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

public extension Yaku {
    var name: String {
        switch self {
        case .riichi:
            "立直"
        case .ippatsu:
            "一発"
        case .tsumo:
            "門前清自摸和"
        case .pinfu:
            "平和"
        case .tanyao:
            "断么九"
        case .yakuhai:
            "役牌"
        case .yipeiko:
            "一盃口"
        case .rinshanKaiho:
            "嶺上開花"
        case .chankan:
            "搶槓"
        case .haiteiRaoyue:
            "海底撈月"
        case .hoteiRaoyui:
            "河底撈魚"
        case .sanshokuDoujun:
            "三色同順"
        case .toitoiho:
            "対々和"
        case .ikkitsuukan:
            "一気通貫"
        case .chanta:
            "混全帯么九"
        case .qitoitsu:
            "七対子"
        case .sananko:
            "三暗刻"
        case .sanshokuDouko:
            "三色同刻"
        case .sankantsu:
            "三槓子"
        case .doubleRiichi:
            "ダブル立直"
        case .honiso:
            "混一色"
        case .junchan:
            "純全帯么九"
        case .liangPeiko:
            "二盃口"
        case .shosangen:
            "小三元"
        case .honroto:
            "混老頭"
        case .chinitsu:
            "清一色"
        case .kokushiMuso:
            "国士無双"
        case .sianko:
            "四暗刻"
        case .daisangen:
            "大三元"
        case .shosishi:
            "小四喜"
        case .daisishi:
            "大四喜"
        case .ziiso:
            "字一色"
        case .chinroto:
            "清老頭"
        case .ryuiso:
            "緑一色"
        case .jiurenpoto:
            "九蓮宝燈"
        case .sikantsu:
            "四槓子"
        case .tenho:
            "天和"
        case .chiho:
            "地和"
        }
    }
}
