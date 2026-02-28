//
//  Kazehai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

/// 風牌（カゼハイ）を表す列挙型。
/// `rawValue` は局の進行順に対応している（東=1、南=2、西=3、北=4）。
public enum Kazehai: Int, Jihai, CaseIterable {
    case ton = 1 // 東（トン）
    case nan = 2 // 南（ナン）
    case sya = 3 // 西（シャー）
    case pei = 4 // 北（ペー）

    public var jihaiType: JihaiType { .kazehai(self) }

    /// 牌の識別子。アセット名と対応している（例: "Tk" = 東風牌）。
    public var id: String {
        switch self {
        case .ton: return "Tk"
        case .nan: return "Nk"
        case .sya: return "Sk"
        case .pei: return "Pk"
        }
    }
}

// MARK: - UI
extension Kazehai {
    public var name: String {
        switch self {
        case .ton: return "東"
        case .nan: return "南"
        case .sya: return "西"
        case .pei: return "北"
        }
    }

    public var image: Image { Image(id, bundle: .module) }
}
