//
//  Pinzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

/// 筒子（ピンズ）の牌を表す列挙型。
/// case の宣言順序（一〜九）が `ShupaiNumber` と対応しており、
/// `number` は `Shupai` プロトコルのデフォルト実装によって自動的に解決される。
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

    public var id: String { "\(number.rawValue)p" }
    public var shupaiType: ShupaiType { .pinzu }
    // number は Shupai プロトコル extension のデフォルト実装（case 順 = 数値順）
}

// MARK: - UI
extension Pinzu {
    public var name: String { "\(number.rawValue.kansuji)筒" }
    public var image: Image { Image(id, bundle: .module) }
}
