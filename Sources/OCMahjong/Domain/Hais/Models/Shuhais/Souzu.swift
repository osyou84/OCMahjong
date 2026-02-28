//
//  Souzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

/// 索子（ソーズ）の牌を表す列挙型。
/// case の宣言順序（一〜九）が `ShupaiNumber` と対応しており、
/// `number` は `Shupai` プロトコルのデフォルト実装によって自動的に解決される。
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

    public var id: String { "\(number.rawValue)s" }
    public var shupaiType: ShupaiType { .souzu }
    // number は Shupai プロトコル extension のデフォルト実装（case 順 = 数値順）
}

// MARK: - UI
extension Souzu {
    public var name: String { "\(number.rawValue.kansuji)索" }
    public var image: Image { Image(id, bundle: .module) }
}
