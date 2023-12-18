//
//  HandEvaluatorTests.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/18.
//

import XCTest
@testable import Mahjong

final class HandEvaluatorTests: XCTestCase {
    private var instance: HandEvaluator!

    override func tearDownWithError() throws {
        instance = nil
    }

    func testInit() throws {
        let correctHands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
            FungPai.bei, FungPai.bei
        ]
        
        XCTAssertNoThrow {
            self.instance = try HandEvaluator(hands: correctHands)
        }
        
        let failHands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
        ]
        
        XCTAssertThrowsError(try HandEvaluator(hands: failHands)) { error in
            print(error)
        }
    }
    
    func testEvaluateYaku() throws {
        let DaiSangenHands: [MahjongPaiable] = [
            SangenPai.haku, SangenPai.haku, SangenPai.haku,
            SangenPai.hatsu, SangenPai.hatsu, SangenPai.hatsu,
            SangenPai.chun, SangenPai.chun, SangenPai.chun,
            Wanzi.yiWan, Wanzi.liangWan, Wanzi.sanWan,
            FungPai.bei, FungPai.bei
        ]
        
        self.instance = try HandEvaluator(hands: DaiSangenHands)
        
        let result = instance.evaluateYaku()
        
        XCTAssertEqual(result.count, 1)
    }
}
