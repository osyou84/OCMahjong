//
//  Sangenpai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

/// 三元牌（サンゲンパイ）を表す列挙型。
///
/// 注意: 順序（白=1、發=2、中=3）は日本麻雀の慣習（白・發・中）に従っている。
/// `rawValue` をソート・エンコード・表示に用いる場合はこの順序を維持すること。
public enum Sangenpai: Int, Jihai, CaseIterable {
    case haku  = 1 // 白（ハク）
    case hatsu = 2 // 發（ハツ）
    case chun  = 3 // 中（チュン）

    public var jihaiType: JihaiType { .sangenpai(self) }

    /// 牌の識別子。アセット名と対応している（例: "Ws" = 白）。
    public var id: String {
        switch self {
        case .haku:  return "Ws"
        case .hatsu: return "Gs"
        case .chun:  return "Rs"
        }
    }
}

// MARK: - UI
extension Sangenpai {
    public var name: String {
        switch self {
        case .haku:  return "白"
        case .hatsu: return "發"
        case .chun:  return "中"
        }
    }

    public var image: Image { Image(id, bundle: .module) }
}
