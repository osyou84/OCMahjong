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
    public var hands: [MahjongPaiable]
    
    public init(hands: [MahjongPaiable]) throws {
        guard COLLECT_PAI_COUNT_RANGE ~= hands.count else {
            throw HandEvaluatorError.incorrectNumberOfTiles
        }

        let tileCounts = Dictionary(grouping: hands, by: \.name).mapValues(\.count)
        for (_, count) in tileCounts {
            if count > MAX_PAIS_OF_SAME_KIND {
                throw HandEvaluatorError.excessiveTilesOfSameKind
            }
        }
        
        self.hands = hands
    }
    
    public func evaluateYaku() -> [MahjongYaku] {
        var yakuList: [MahjongYaku] = []
        
        for yaku in MahjongYaku.allCases {
            guard yaku.evaluate(hands: hands) else { continue }
            yakuList.append(yaku)
        }
        
        return yakuList
    }
}
