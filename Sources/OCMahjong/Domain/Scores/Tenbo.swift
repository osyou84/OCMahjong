//
//  Tenbo.swift
//
//
//  Created by 斉藤尚也 on 2024/01/10.
//

import SwiftUI

/// 点棒（テンボウ）の種類を表す列挙型。
/// `rawValue` は点棒の点数に対応している。
public enum Tenbo: Int, CaseIterable {
    case hyakutenbo   = 100   // 百点棒
    case sentenbo     = 1000  // 千点棒
    case gosentenbo   = 5000  // 五千点棒
    case ichimantenbo = 10000 // 一万点棒

    /// 点棒の画像。
    public var image: Image {
        switch self {
        case .hyakutenbo:   .init("p100",   bundle: .module)
        case .sentenbo:     .init("p1000",  bundle: .module)
        case .gosentenbo:   .init("p5000",  bundle: .module)
        case .ichimantenbo: .init("p10000", bundle: .module)
        }
    }

    /// 点棒の色。UI 表示に利用する。
    public var color: Color {
        switch self {
        case .hyakutenbo:   Color(red: 255/255, green: 255/255, blue: 255)
        case .sentenbo:     Color(red: 0,       green: 104/255, blue: 183/255)
        case .gosentenbo:   Color(red: 243/255, green: 150/255, blue: 0)
        case .ichimantenbo: Color(red: 231/255, green: 0,       blue: 18/255)
        }
    }
}
