//
//  MahjongYakuTests.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/18.
//

import XCTest
@testable import Mahjong

final class MahjongYakuTests: XCTestCase {
    private var yaku: MahjongYaku!

    override func setUpWithError() throws {
     
    }

    override func tearDownWithError() throws {
        yaku = nil
    }

    func testIsDaisangen() {
        yaku = MahjongYaku.daisangen
        
        let correct1Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
            FungPai.bei, FungPai.bei
        ]
        XCTAssertTrue(yaku.evaluate(hands: correct1Hands))
        
        let correct2Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
            Suozi.jiuSuo, Suozi.jiuSuo
        ]
        XCTAssertTrue(yaku.evaluate(hands: correct2Hands))
        
        let correct3Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan, Wanzi.yiWan
        ]
        XCTAssertTrue(yaku.evaluate(hands: correct3Hands))
        
        let fail1Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, Wanzi.qiWan,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
            Suozi.jiuSuo, Suozi.jiuSuo
        ]
        XCTAssertFalse(yaku.evaluate(hands: fail1Hands))
    }
    
    func testIsZiiso() {
        yaku = MahjongYaku.ziiso
        
        let correct1Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            FungPai.nan, FungPai.nan, FungPai.nan, FungPai.nan,
            FungPai.bei, FungPai.bei, FungPai.bei, FungPai.bei,
            FungPai.dong, FungPai.dong
        ]
        XCTAssertTrue(yaku.evaluate(hands: correct1Hands))
        
        let correct2Hands: [MahjongPaiable] = [
            FungPai.dong, FungPai.dong, FungPai.dong, FungPai.dong,
            FungPai.nan, FungPai.nan, FungPai.nan, FungPai.nan,
            FungPai.xi, FungPai.xi, FungPai.xi, FungPai.xi,
            FungPai.bei, FungPai.bei, FungPai.bei, FungPai.bei,
            SangenPai.haku, SangenPai.haku
        ]
        XCTAssertTrue(yaku.evaluate(hands: correct2Hands))
        
        let correct3Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun, SangenPai.chun,
            FungPai.xi, FungPai.xi, FungPai.xi, FungPai.xi
        ]
        XCTAssertTrue(yaku.evaluate(hands: correct3Hands))
        
        let fail1Hands: [MahjongPaiable] = [
            Wanzi.yiWan, FungPai.dong, FungPai.dong, FungPai.dong,
            FungPai.nan, FungPai.nan, FungPai.nan, FungPai.nan,
            FungPai.xi, FungPai.xi, FungPai.xi, FungPai.xi,
            FungPai.bei, FungPai.bei, FungPai.bei, FungPai.bei,
            SangenPai.haku, SangenPai.haku
        ]
        XCTAssertFalse(yaku.evaluate(hands: fail1Hands))
    }
}
