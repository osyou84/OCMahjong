//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

public enum MahjongYakuLimit {
    case memzenOnly
    case withKuiSagari
    case ankoOutsideNakiOk
    case noLimitation
}

public protocol MahjongYakuable {
    var name: String { get }
    var hansu: Int? { get }
    var limit: MahjongYakuLimit { get }
    var isYakuman: Bool { get }
}

public enum MahjongYaku: MahjongYakuable, CaseIterable {
    case ready
    case ippatsu
    case tsumo
    case pinfu
    case tanyao
    case yakuhai
    case yipeiko
    case rinshanKaiho
    case chankan
    case haiteiRaoyue
    case hoteiRaoyui
    
    case sanshokuDoujun
    case toitoiho
    case ikkitsuukan
    case chanta
    case qitoitsu
    case sananko
    case sanshokuDouko
    case sankantsu
    case doubleReady
    
    case honiso
    case junchan
    case liangPeiko
    case shosangen
    
    case honroto
    case chinitsu
    
    case kokushiMuso
    case sianko
    case daisangen
    case shosishi
    case daisishi
    case ziiso
    case chinroto
    case ryuiso
    case jiurenpoto
    case sikantsu
    case tenho
    case chiho
    
    public var hansu: Int? {
        switch self {
        case .ready, .ippatsu, .tsumo, .pinfu, .tanyao, .yakuhai, .yipeiko, .rinshanKaiho, .chankan, .haiteiRaoyue, .hoteiRaoyui:
            1
        case .sanshokuDoujun, .toitoiho, .ikkitsuukan, .chanta, .qitoitsu, .sananko, .sanshokuDouko, .sankantsu, .doubleReady:
            2
        case .honiso, .junchan, .liangPeiko:
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
    
    public var name: String {
        switch self {
        case .ready:
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
        case .doubleReady:
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
    
    public var limit: MahjongYakuLimit {
        switch self {
        case .ready, .ippatsu, .tsumo, .pinfu, .yipeiko, .qitoitsu, .doubleReady, .liangPeiko, .tenho, .chiho, .kokushiMuso, .jiurenpoto, .sianko:
            .memzenOnly
        case .chanta:
            .withKuiSagari
        case .sananko:
            .ankoOutsideNakiOk
        default:
            .noLimitation
        }
    }
    
    func evaluate(hands: [MahjongPaiable]) -> Bool {
        guard isTenpai(hands: hands) else { return false }
        
        switch self {
        case .ready:
            return false
        case .ippatsu:
            return false
        case .tsumo:
            return false
        case .pinfu:
            return false
        case .tanyao:
            return false
        case .yakuhai:
            return false
        case .yipeiko:
            return false
        case .rinshanKaiho:
            return false
        case .chankan:
            return false
        case .haiteiRaoyue:
            return false
        case .hoteiRaoyui:
            return false
        case .sanshokuDoujun:
            return false
        case .toitoiho:
            return false
        case .ikkitsuukan:
            return false
        case .chanta:
            return false
        case .qitoitsu:
            return false
        case .sananko:
            return false
        case .sanshokuDouko:
            return false
        case .sankantsu:
            return false
        case .doubleReady:
            return false
        case .honiso:
            return false
        case .junchan:
            return false
        case .liangPeiko:
            return false
        case .shosangen:
            return false
        case .honroto:
            return false
        case .chinitsu:
            return false
        case .kokushiMuso:
            return false
        case .sianko:
            return false
        case .daisangen:
            let filteredHands = hands.compactMap { $0 as? SangenPai }
            
            let sangenPais = Dictionary(grouping: filteredHands, by: \.name).mapValues(\.count)
            for (_, count) in sangenPais {
                guard count >= 3 else { return false }
                
                continue
            }
            
            return true
        case .shosishi:
            return false
        case .daisishi:
            return false
        case .ziiso:
            let filteredHands = hands.compactMap { $0 as? Zipai }
            
            return filteredHands.count == hands.count
        case .chinroto:
            return false
        case .ryuiso:
            let filteredHands = hands.filter {
                if let sangenPai = $0 as? SangenPai { return sangenPai == .hatsu }
                if let suozi = $0 as? Suozi { return suozi.isGreen }
                
                return false
            }
            
            return filteredHands.count == hands.count
        case .jiurenpoto:
            return false
        case .sikantsu:
            return false
        case .tenho:
            return false
        case .chiho:
            return false
        }
    }
    
    func isTenpai(hands: [MahjongPaiable]) -> Bool {
        return true
    }
}
