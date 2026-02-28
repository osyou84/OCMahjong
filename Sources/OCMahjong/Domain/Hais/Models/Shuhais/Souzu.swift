//
//  Souzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

/// 索子（ソーズ）の牌を表す列挙型。
public enum Souzu: Shupai, CaseIterable {
    case iiSou   // 一索（イーソー）
    case ryanSou // 二索（リャンソー）
    case sanSou  // 三索（サンソー）
    case suSou   // 四索（スーソー）
    case uuSou   // 五索（ウーソー）
    case roSou   // 六索（ローソー）
    case chiSou  // 七索（チーソー）
    case paaSou  // 八索（パーソー）
    case kyuSou  // 九索（キューソー）
    case unknown // 1〜9 以外の数値で生成した場合

    /// 数値（1〜9）から索子を生成する。範囲外の場合は `.unknown`。
    public init(_ number: Int) {
        switch number {
        case 1: self = .iiSou
        case 2: self = .ryanSou
        case 3: self = .sanSou
        case 4: self = .suSou
        case 5: self = .uuSou
        case 6: self = .roSou
        case 7: self = .chiSou
        case 8: self = .paaSou
        case 9: self = .kyuSou
        default: self = .unknown
        }
    }

    public var id: String {
        switch self {
        case .unknown: return "?s"
        default: return "\(number.rawValue)s"
        }
    }
    public var shupaiType: ShupaiType { .souzu }
    public var number: ShupaiNumber {
        switch self {
        case .iiSou:   return .one
        case .ryanSou: return .two
        case .sanSou:  return .three
        case .suSou:   return .four
        case .uuSou:   return .five
        case .roSou:   return .six
        case .chiSou:  return .seven
        case .paaSou:  return .eight
        case .kyuSou:  return .nine
        case .unknown: fatalError("Souzu.unknown has no number")
        }
    }
}

// MARK: - UI
extension Souzu {
    public var name: String {
        switch self {
        case .unknown: return "不明索"
        default: return "\(number.rawValue.kansuji)索"
        }
    }
    public var image: Image { Image(id, bundle: .module) }
}
