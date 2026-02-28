//
//  File.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

/// 麻雀の役を表す列挙型。
/// 翻数（`hansu`）・役満判定（`isYakuman`）・鳴き制限（`limit`）を提供する。
/// 役名は `Yaku+name.swift`、説明文は `Yaku+description.swift`、
/// サンプル手牌は `Yaku+sampleHands.swift` で定義されている。
public enum Yaku: YakuProtocol, CaseIterable {

    // MARK: - 1飜役
    case riichi        // 立直
    case ippatsu       // 一発
    case tsumo         // 門前清自摸和
    case pinfu         // 平和
    case tanyao        // 断么九
    case yakuhai       // 役牌
    case iipeiko       // 一盃口
    case rinshanKaiho  // 嶺上開花
    case chankan       // 搶槓
    case haiteiRaoyue  // 海底撈月
    case hoteiRaoyui   // 河底撈魚

    // MARK: - 2飜役
    case sanshokuDoujun // 三色同順
    case toitoiho       // 対々和
    case ikkitsuukan    // 一気通貫
    case chanta         // 混全帯么九
    case chitoitsu      // 七対子
    case sananko        // 三暗刻
    case sanshokuDouko  // 三色同刻
    case sankantsu      // 三槓子
    case doubleRiichi   // ダブル立直

    // MARK: - 3飜役
    case honiso    // 混一色
    case junchan   // 純全帯么九
    case ryanPeiko // 二盃口

    // MARK: - 4飜役
    case shosangen // 小三元
    case honroto   // 混老頭

    // MARK: - 6飜役
    case chinitsu // 清一色

    // MARK: - 役満
    case kokushiMuso // 国士無双
    case suanko      // 四暗刻
    case daisangen   // 大三元
    case syosushi    // 小四喜
    case daisushi    // 大四喜
    case ziiso       // 字一色
    case chinroto    // 清老頭
    case ryuiso      // 緑一色
    case churenpoto  // 九蓮宝燈
    case sukantsu    // 四槓子
    case tenho       // 天和
    case chiho       // 地和

    // MARK: - YakuProtocol

    /// 翻数。役満の場合は `nil`。
    public var hansu: Int? {
        switch self {
        case .riichi, .ippatsu, .tsumo, .pinfu, .tanyao, .yakuhai, .iipeiko, .rinshanKaiho, .chankan, .haiteiRaoyue, .hoteiRaoyui:
            1
        case .sanshokuDoujun, .toitoiho, .ikkitsuukan, .chanta, .chitoitsu, .sananko, .sanshokuDouko, .sankantsu, .doubleRiichi:
            2
        case .honiso, .junchan, .ryanPeiko:
            3
        case .shosangen, .honroto:
            4
        case .chinitsu:
            6
        default:
            nil
        }
    }

    /// 役満かどうか。
    public var isYakuman: Bool {
        switch self {
        case .kokushiMuso, .suanko, .daisangen, .syosushi, .daisushi,
             .ziiso, .chinroto, .ryuiso, .churenpoto, .sukantsu, .tenho, .chiho:
            true
        default:
            false
        }
    }

    /// 門前・副露に関する鳴き制限。
    public var limit: YakuLimit {
        switch self {
        case .riichi, .ippatsu, .tsumo, .pinfu, .iipeiko, .chitoitsu, .doubleRiichi, .ryanPeiko,
             .tenho, .chiho, .kokushiMuso, .churenpoto, .suanko:
            .memzenOnly
        case .sanshokuDoujun, .ikkitsuukan, .chanta, .honiso, .junchan:
            .withKuiSagari(hansu: hansu ?? 1)
        case .sananko:
            .ankoOutsideNakiOk
        default:
            .noLimitation
        }
    }
}
