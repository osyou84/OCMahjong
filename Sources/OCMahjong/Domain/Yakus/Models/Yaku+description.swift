//
//  Yaku+description.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

public extension Yaku {
    var description: String {
        switch self {
        case .riichi:
            "門前で聴牌して「立直（リーチ）」と宣言することで成立する役です。"
        case .ippatsu:
            "立直をかけてから1巡内に和了ると成立する役です。和了る前に他家に鳴かれた場合は無効となります。"
        case .tsumo:
            "門前で聴牌した状態で、自摸によって和了ると成立する役です。"
        case .pinfu:
            "面前で四つの順子と役牌以外の牌を雀頭で構成され、両面待ちの状態から和了った場合に成立する役です。"
        case .tanyao:
            "幺九牌（一・九・字牌）以外で構成すると成立する役です。"
        case .yakuhai:
            "三元牌、自風牌、場風牌の刻子で成立する役です。基本は一飜役ですが、自風と場風が同じ場合は二飜となります。"
        case .yipeiko:
            "説明"
        case .rinshanKaiho:
            "説明"
        case .chankan:
            "説明"
        case .haiteiRaoyue:
            "説明"
        case .hoteiRaoyui:
            "説明"
        case .sanshokuDoujun:
            "説明"
        case .toitoiho:
            "説明"
        case .ikkitsuukan:
            "説明"
        case .chanta:
            "説明"
        case .qitoitsu:
            "説明"
        case .sananko:
            "説明"
        case .sanshokuDouko:
            "説明"
        case .sankantsu:
            "説明"
        case .doubleReady:
            "説明"
        case .honiso:
            "説明"
        case .junchan:
            "説明"
        case .liangPeiko:
            "説明"
        case .shosangen:
            "説明"
        case .honroto:
            "説明"
        case .chinitsu:
            "説明"
        case .kokushiMuso:
            "説明"
        case .sianko:
            "説明"
        case .daisangen:
            "説明"
        case .shosishi:
            "説明"
        case .daisishi:
            "説明"
        case .ziiso:
            "説明"
        case .chinroto:
            "説明"
        case .ryuiso:
            "説明"
        case .jiurenpoto:
            "説明"
        case .sikantsu:
            "説明"
        case .tenho:
            "説明"
        case .chiho:
            "説明"
        }
    }
}
