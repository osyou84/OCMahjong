//
//  Wanzi.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum Character: Suit {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    
    public var id: String {
        switch self {
        case .one: return "one"
        case .two: return "two"
        case .three: return "three"
        case .four: return "four"
        case .five: return "five"
        case .six: return "six"
        case .seven: return "seven"
        case .eight: return "eight"
        case .nine: return "nine"
        }
    }
    
    public var suitType: SuitType {
        .character
    }

    public var number: SuitNumber {
        switch self {
        case .one: return .one
        case .two: return .two
        case .three: return .three
        case .four: return .four
        case .five: return .five
        case .six: return .six
        case .seven: return .seven
        case .eight: return .eight
        case .nine: return .nine
        }
    }
    
    public var name: LocalizedStringResource {
        return ""
    }
}
