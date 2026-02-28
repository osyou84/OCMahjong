//
//  Manzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

public enum Manzu: Shupai, CaseIterable {
    case iiMan // yiwan
    case ryanMan // liangwan
    case sanMan // sanwan
    case suMan // siwan
    case uuMan // wuwan
    case roMan // liuwan
    case chiMan // qiwan
    case paaMan // bawan
    case kyuMan // jiuwan

    public var id: String { "\(number.rawValue)m" }
    public var shupaiType: ShupaiType { .manzu }
    // number は protocol extension のデフォルト実装（case 順 = 数値順）
}

// MARK: - UI
extension Manzu {
    public var name: String { "\(number.rawValue.kansuji)萬" }
    public var image: Image { Image(id, bundle: .module) }
}
