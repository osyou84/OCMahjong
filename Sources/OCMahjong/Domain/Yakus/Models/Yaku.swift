//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

public enum Yaku: YakuProtocol, CaseIterable {
    case riichi
    case ippatsu
    case tsumo
    case pinfu
    case tanyao
    case yakuhai
    case iipeiko
    case rinshanKaiho
    case chankan
    case haiteiRaoyue
    case hoteiRaoyui
    
    case sanshokuDoujun
    case toitoiho
    case ikkitsuukan
    case chanta
    case chitoitsu
    case sananko
    case sanshokuDouko
    case sankantsu
    case doubleRiichi
    
    case honiso
    case junchan
    case ryanPeiko
    case shosangen
    
    case honroto
    case chinitsu
    
    case kokushiMuso
    case suanko
    case daisangen
    case syosushi
    case daisushi
    case ziiso
    case chinroto
    case ryuiso
    case churenpoto
    case sukantsu
    case tenho
    case chiho
    
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
    
    public var isYakuman: Bool {
        hansu == nil
    }
    
    public var limit: YakuLimit {
        switch self {
        case .riichi, .ippatsu, .tsumo, .pinfu, .iipeiko, .chitoitsu, .doubleRiichi, .ryanPeiko, .tenho, .kokushiMuso, .churenpoto, .suanko:
            .memzenOnly
        case .sanshokuDoujun, .ikkitsuukan, .chanta, .honiso, .junchan, .chiho:
            .withKuiSagari(hansu: hansu ?? 1)
        case .sananko:
            .ankoOutsideNakiOk
        default:
            .noLimitation
        }
    }
}
