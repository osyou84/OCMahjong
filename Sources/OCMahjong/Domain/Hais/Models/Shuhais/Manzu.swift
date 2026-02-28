//
//  Manzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

/// 萬子（マンズ）の牌を表す列挙型。
public enum Manzu: Shupai, CaseIterable {
    case iiMan   // 一萬（イーマン）
    case ryanMan // 二萬（リャンマン）
    case sanMan  // 三萬（サンマン）
    case suMan   // 四萬（スーマン）
    case uuMan   // 五萬（ウーマン）
    case roMan   // 六萬（ローマン）
    case chiMan  // 七萬（チーマン）
    case paaMan  // 八萬（パーマン）
    case kyuMan  // 九萬（キューマン）
    case unknown // 1〜9 以外の数値で生成した場合

    /// 数値（1〜9）から萬子を生成する。範囲外の場合は `.unknown`。
    public init(_ number: Int) {
        switch number {
        case 1: self = .iiMan
        case 2: self = .ryanMan
        case 3: self = .sanMan
        case 4: self = .suMan
        case 5: self = .uuMan
        case 6: self = .roMan
        case 7: self = .chiMan
        case 8: self = .paaMan
        case 9: self = .kyuMan
        default: self = .unknown
        }
    }

    public static var allCases: [Manzu] {
        [.iiMan, .ryanMan, .sanMan, .suMan, .uuMan, .roMan, .chiMan, .paaMan, .kyuMan]
    }

    public var id: String {
        switch self {
        case .unknown: return "?m"
        default: return "\(number.rawValue)m"
        }
    }
    public var shupaiType: ShupaiType { .manzu }
    public var number: ShupaiNumber {
        switch self {
        case .iiMan:   return .one
        case .ryanMan: return .two
        case .sanMan:  return .three
        case .suMan:   return .four
        case .uuMan:   return .five
        case .roMan:   return .six
        case .chiMan:  return .seven
        case .paaMan:  return .eight
        case .kyuMan:  return .nine
        case .unknown: fatalError("Manzu.unknown has no number")
        }
    }
}

// MARK: - UI
extension Manzu {
    public var name: String {
        switch self {
        case .unknown: return "不明萬"
        default: return "\(number.rawValue.kansuji)萬"
        }
    }
    public var image: Image { Image(id, bundle: .module) }
}
