//
//  Pinzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

/// 筒子（ピンズ）の牌を表す列挙型。
public enum Pinzu: Shupai, CaseIterable {
    case iiPin   // 一筒（イーピン）
    case ryanPin // 二筒（リャンピン）
    case sanPin  // 三筒（サンピン）
    case suPin   // 四筒（スーピン）
    case uuPin   // 五筒（ウーピン）
    case roPin   // 六筒（ローピン）
    case chiPin  // 七筒（チーピン）
    case paaPin  // 八筒（パーピン）
    case kyuPin  // 九筒（キューピン）
    case unknown // 1〜9 以外の数値で生成した場合

    /// 数値（1〜9）から筒子を生成する。範囲外の場合は `.unknown`。
    public init(_ number: Int) {
        switch number {
        case 1: self = .iiPin
        case 2: self = .ryanPin
        case 3: self = .sanPin
        case 4: self = .suPin
        case 5: self = .uuPin
        case 6: self = .roPin
        case 7: self = .chiPin
        case 8: self = .paaPin
        case 9: self = .kyuPin
        default: self = .unknown
        }
    }

    public static var allCases: [Pinzu] {
        [.iiPin, .ryanPin, .sanPin, .suPin, .uuPin, .roPin, .chiPin, .paaPin, .kyuPin]
    }

    public var id: String {
        switch self {
        case .unknown: return "?p"
        default: return "\(number.rawValue)p"
        }
    }
    public var shupaiType: ShupaiType { .pinzu }
    public var number: ShupaiNumber {
        switch self {
        case .iiPin:   return .one
        case .ryanPin: return .two
        case .sanPin:  return .three
        case .suPin:   return .four
        case .uuPin:   return .five
        case .roPin:   return .six
        case .chiPin:  return .seven
        case .paaPin:  return .eight
        case .kyuPin:  return .nine
        case .unknown: fatalError("Pinzu.unknown has no number")
        }
    }
}

// MARK: - UI
extension Pinzu {
    public var name: String {
        switch self {
        case .unknown: return "不明筒"
        default: return "\(number.rawValue.kansuji)筒"
        }
    }
    public var image: Image { Image(id, bundle: .module) }
}
