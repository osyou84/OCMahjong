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
    case white = 1
    case green = 2
    case red = 3
    
    public var jihaiType: JihaiType {
        .sangenpai(self)
    }
    
    public var id: String {
        switch self {
        case .white: return "Ws"
        case .green: return "Gs"
        case .red: return "Rs"
        }
    }
}
