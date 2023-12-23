//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

public enum MahjongYakuLimit {
    case memzenOnly
    case withKuiSagari(hansu: Int)
    case ankoOutsideNakiOk
    case noLimitation
    
    public var text: String {
        switch self {
        case .memzenOnly:
            "門前のみ"
        case .withKuiSagari(let hansu):
            "食い下がり\(hansu - 1)飜"
        case .ankoOutsideNakiOk:
            "暗刻以外鳴き無し"
        case .noLimitation:
            "食い制限無し"
        }
    }
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
    
    public var description: String {
        switch self {
        case .ready:
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
    
    public var limit: MahjongYakuLimit {
        switch self {
        case .ready, .ippatsu, .tsumo, .pinfu, .yipeiko, .qitoitsu, .doubleReady, .liangPeiko, .tenho, .kokushiMuso, .jiurenpoto, .sianko:
            .memzenOnly
        case .sanshokuDoujun, .ikkitsuukan, .chanta, .honiso, .junchan, .chiho:
            .withKuiSagari(hansu: hansu ?? 1)
        case .sananko:
            .ankoOutsideNakiOk
        default:
            .noLimitation
        }
    }
    
    public var sampleHands: [MahjongPaiable] {
        switch self {
        case .pinfu:
            [
                Pinzi.yiPin, Pinzi.yiPin,
                Wanzi.liangWan, Wanzi.sanWan, Wanzi.siWan,
                Wanzi.wuWan, Wanzi.liuWan, Wanzi.qiWan,
                Pinzi.liuPin, Pinzi.qiPin, Pinzi.baPin,
                Suozi.liangSuo, Suozi.sanSuo, Suozi.siSuo
            ]
        case .tanyao:
            [
                Pinzi.liangPin, Pinzi.liangPin,
                Wanzi.liangWan, Wanzi.liangWan, Wanzi.liangWan,
                Wanzi.wuWan, Wanzi.liuWan, Wanzi.qiWan,
                Pinzi.baPin, Pinzi.baPin, Pinzi.baPin,
                Suozi.liangSuo, Suozi.sanSuo, Suozi.siSuo
            ]
        case .yakuhai:
            [
                Wanzi.yiWan, Wanzi.yiWan,
                Wanzi.liangWan, Wanzi.sanWan, Wanzi.sanWan,
                SangenPai.haku, SangenPai.haku, SangenPai.haku,
                SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
                FungPai.dong, FungPai.dong, FungPai.dong,
            ]
        case .yipeiko:
            [
                SangenPai.haku, SangenPai.haku,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.liangWan,
                Wanzi.liangWan, Wanzi.sanWan, Wanzi.sanWan,
                Suozi.liuSuo, Suozi.liuSuo, Suozi.liuSuo,
                Suozi.qiSuo, Suozi.qiSuo, Suozi.qiSuo,
            ]
        case .sanshokuDoujun:
            [
                FungPai.dong, FungPai.dong,
                Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
                Pinzi.yiPin, Pinzi.liangPin, Pinzi.sanPin,
                Suozi.yiSuo, Suozi.liangSuo, Suozi.sanSuo,
                FungPai.bei, FungPai.bei, FungPai.bei,
            ]
        case .ikkitsuukan:
            [
                SangenPai.haku, SangenPai.haku,
                Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
                Wanzi.siWan, Wanzi.wuWan, Wanzi.liuWan,
                Wanzi.qiWan, Wanzi.baWan, Wanzi.jiuWan,
                Pinzi.jiuPin, Pinzi.jiuPin, Pinzi.jiuPin
            ]
        case .chanta:
            [
                SangenPai.chun, SangenPai.chun,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.liangWan,
                Wanzi.qiWan, Wanzi.baWan, Wanzi.jiuWan,
                Pinzi.qiPin, Pinzi.baPin, Pinzi.jiuPin,
                FungPai.dong, FungPai.dong, FungPai.dong
            ]
        case .qitoitsu:
            [
                Wanzi.yiWan, Wanzi.yiWan,
                Wanzi.liuWan, Wanzi.liuWan,
                Pinzi.sanPin, Pinzi.sanPin,
                Suozi.jiuSuo, Suozi.jiuSuo,
                Suozi.qiSuo, Suozi.qiSuo,
                FungPai.xi, FungPai.xi,
                FungPai.bei, FungPai.bei,
            ]
        case .sananko:
            [
                FungPai.xi, FungPai.xi,
                Wanzi.liuWan, Wanzi.qiWan, Wanzi.baWan,
                Pinzi.yiPin, Pinzi.yiPin, Pinzi.yiPin,
                FungPai.bei, FungPai.bei, FungPai.bei,
                SangenPai.haku, SangenPai.haku, SangenPai.haku,
            ]
        case .sanshokuDouko:
            [
                FungPai.dong, FungPai.dong,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan,
                Pinzi.yiPin, Pinzi.yiPin, Pinzi.yiPin,
                Suozi.yiSuo, Suozi.yiSuo, Suozi.yiSuo,
                FungPai.bei, FungPai.bei, FungPai.bei,
            ]
        case .sankantsu:
            [
                Pinzi.jiuPin, Pinzi.jiuPin,
                FungPai.dong, FungPai.dong, FungPai.dong,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan,
                Pinzi.sanPin, Pinzi.sanPin, Pinzi.sanPin, Pinzi.sanPin,
                Suozi.jiuSuo, Suozi.jiuSuo, Suozi.jiuSuo, Suozi.jiuSuo,
            ]
        case .honiso:
            [
                SangenPai.chun, SangenPai.chun,
                Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
                Wanzi.siWan, Wanzi.wuWan, Wanzi.liuWan,
                Wanzi.qiWan, Wanzi.qiWan, Wanzi.qiWan,
                FungPai.dong, FungPai.dong, FungPai.dong
            ]
        case .junchan:
            [
                Wanzi.jiuWan, Wanzi.jiuWan,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.liangWan,
                Wanzi.qiWan, Wanzi.baWan, Wanzi.jiuWan,
                Pinzi.qiPin, Pinzi.baPin, Pinzi.jiuPin,
                Suozi.qiSuo, Suozi.baSuo, Suozi.jiuSuo
            ]
        case .liangPeiko:
            [
                SangenPai.haku, SangenPai.haku,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.liangWan,
                Wanzi.liangWan, Wanzi.sanWan, Wanzi.sanWan,
                Suozi.liuSuo, Suozi.liuSuo, Suozi.qiSuo,
                Suozi.qiSuo, Suozi.baSuo, Suozi.baSuo,
            ]
        case .shosangen:
            [
                SangenPai.haku, SangenPai.haku,
                FungPai.dong, FungPai.dong, FungPai.dong,
                Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
                SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
                SangenPai.chun, SangenPai.chun, SangenPai.chun,
            ]
        case .honroto:
            [
                Wanzi.yiWan, Wanzi.yiWan,
                Wanzi.jiuWan, Wanzi.jiuWan, Wanzi.jiuWan,
                Suozi.yiSuo, Suozi.yiSuo, Suozi.yiSuo,
                Pinzi.yiPin, Pinzi.yiPin, Pinzi.yiPin,
                FungPai.bei, FungPai.bei, FungPai.bei
            ]
        case .chinitsu:
            [
                Wanzi.jiuWan, Wanzi.jiuWan,
                Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
                Wanzi.siWan, Wanzi.wuWan, Wanzi.liuWan,
                Wanzi.qiWan, Wanzi.qiWan, Wanzi.qiWan,
                Wanzi.baWan, Wanzi.baWan, Wanzi.baWan,
            ]
        case .kokushiMuso:
            [
                Wanzi.yiWan, Wanzi.jiuWan, Pinzi.yiPin, Pinzi.jiuPin, Suozi.yiSuo, Suozi.jiuSuo,
                FungPai.dong, FungPai.nan, FungPai.xi, FungPai.bei,
                SangenPai.haku, SangenPai.hatsu, SangenPai.chun,
                SangenPai.chun
            ]
        case .sianko, .toitoiho:
            [
                FungPai.xi, FungPai.xi,
                Wanzi.liuWan, Wanzi.liuWan, Wanzi.liuWan,
                Pinzi.yiPin, Pinzi.yiPin, Pinzi.yiPin,
                FungPai.bei, FungPai.bei, FungPai.bei,
                SangenPai.haku, SangenPai.haku, SangenPai.haku,
            ]
        case .daisangen:
            [
                FungPai.dong, FungPai.dong,
                Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
                SangenPai.haku, SangenPai.haku, SangenPai.haku,
                SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
                SangenPai.chun, SangenPai.chun, SangenPai.chun,
            ]
        case .shosishi:
            [
                FungPai.bei, FungPai.bei,
                Wanzi.qiWan, Wanzi.baWan, Wanzi.jiuWan,
                FungPai.dong, FungPai.dong, FungPai.dong,
                FungPai.nan, FungPai.nan, FungPai.nan,
                FungPai.xi, FungPai.xi, FungPai.xi,
            ]
        case .daisishi:
            [
                Suozi.yiSuo, Suozi.yiSuo,
                FungPai.dong, FungPai.dong, FungPai.dong,
                FungPai.nan, FungPai.nan, FungPai.nan,
                FungPai.xi, FungPai.xi, FungPai.xi,
                FungPai.bei, FungPai.bei, FungPai.bei
            ]
        case .ziiso:
            [
                FungPai.xi, FungPai.xi,
                FungPai.dong, FungPai.dong, FungPai.dong,
                FungPai.bei, FungPai.bei, FungPai.bei,
                SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
                SangenPai.chun, SangenPai.chun, SangenPai.chun,
            ]
        case .chinroto:
            [
                Wanzi.yiWan, Wanzi.yiWan,
                Wanzi.jiuWan, Wanzi.jiuWan, Wanzi.jiuWan,
                Suozi.yiSuo, Suozi.yiSuo, Suozi.yiSuo,
                Pinzi.yiPin, Pinzi.yiPin, Pinzi.yiPin,
                Pinzi.jiuPin, Pinzi.jiuPin, Pinzi.jiuPin
            ]
        case .ryuiso:
            [
                SangenPai.hatsu, SangenPai.hatsu,
                Suozi.liangSuo,Suozi.liangSuo,
                Suozi.sanSuo, Suozi.sanSuo,
                Suozi.siSuo, Suozi.siSuo,
                Suozi.liuSuo, Suozi.liuSuo, Suozi.liuSuo,
                Suozi.baSuo, Suozi.baSuo, Suozi.baSuo
            ]
        case .jiurenpoto:
            [
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan,
                Wanzi.liangWan, Wanzi.sanWan, Wanzi.siWan,
                Wanzi.wuWan, Wanzi.liuWan, Wanzi.qiWan,
                Wanzi.baWan,
                Wanzi.jiuWan, Wanzi.jiuWan, Wanzi.jiuWan,
                Wanzi.siWan
            ]
        case .sikantsu:
            [
                FungPai.bei, FungPai.bei,
                Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan,
                Pinzi.sanPin, Pinzi.sanPin, Pinzi.sanPin, Pinzi.sanPin,
                Suozi.jiuSuo, Suozi.jiuSuo, Suozi.jiuSuo, Suozi.jiuSuo,
                FungPai.dong, FungPai.dong, FungPai.dong, FungPai.dong
            ]
        default:
            [
                Pinzi.yiPin, Pinzi.yiPin,
                Pinzi.liangPin, Pinzi.sanPin, Pinzi.siPin,
                Wanzi.qiWan, Wanzi.baWan, Wanzi.jiuWan,
                Suozi.wuSuo, Suozi.wuSuo, Suozi.wuSuo,
                SangenPai.haku, SangenPai.haku, SangenPai.haku
            ]
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
            guard sangenPais.count == 3 else { return false }
            
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
