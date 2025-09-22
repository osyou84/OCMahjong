//
//  Sangenpai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

/// Dragon tiles (Sangenpai: White, Green, Red).
///
/// Note: The ordering (white = 1, green = 2, red = 3) follows Japanese Mahjong
/// conventions (白・發・中). Keep this order if you rely on raw values for
/// sorting, encoding, or display.
public enum Sangenpai: Int, Jihai, CaseIterable {
    case haku = 1 // white dragon
    case hatsu = 2 // green dragon
    case chun = 3 // red dragon
    
    public var jihaiType: JihaiType {
        .sangenpai(self)
    }
    
    public var id: String {
        switch self {
        case .haku: return "Ws"
        case .hatsu: return "Gs"
        case .chun: return "Rs"
        }
    }
}
