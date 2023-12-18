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
        
        let fail1Hands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, Wanzi.qiWan,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
            Suozi.jiuSuo, Suozi.jiuSuo
        ]
        XCTAssertFalse(yaku.evaluate(hands: fail1Hands))
    }
}
