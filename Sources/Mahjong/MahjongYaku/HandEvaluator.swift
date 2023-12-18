//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/18.
//

import Foundation

public enum HandEvaluatorError: Error {
    case excessiveTilesOfSameKind
    case incorrectNumberOfTiles
}

public struct HandEvaluator {
    private var hands: [MahjongPaiable]
    
    init(hands: [MahjongPaiable]) throws {
        guard hands.count == 14 else {
            throw HandEvaluatorError.incorrectNumberOfTiles
        }

        let tileCounts = Dictionary(grouping: hands, by: \.name).mapValues(\.count)
        for (_, count) in tileCounts {
            if count > 4 {
                throw HandEvaluatorError.excessiveTilesOfSameKind
            }
        }
        
        self.hands = hands
    }
    
    func evaluateYaku() -> [MahjongYaku] {
        var yakuList: [MahjongYaku] = []
        
        for yaku in MahjongYaku.allCases {
            guard yaku.evaluate(hands: hands) else { break }
            yakuList.append(yaku)
        }
        
        return yakuList
    }
}
