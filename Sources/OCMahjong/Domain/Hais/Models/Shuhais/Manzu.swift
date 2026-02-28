//
//  Manzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

/// 萬子（マンズ）の牌を表す列挙型。
/// case の宣言順序（一〜九）が `ShupaiNumber` と対応しており、
/// `number` は `Shupai` プロトコルのデフォルト実装によって自動的に解決される。
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

    public var id: String { "\(number.rawValue)m" }
    public var shupaiType: ShupaiType { .manzu }
    // number は Shupai プロトコル extension のデフォルト実装（case 順 = 数値順）
}

// MARK: - UI
extension Manzu {
    public var name: String { "\(number.rawValue.kansuji)萬" }
    public var image: Image { Image(id, bundle: .module) }
}
