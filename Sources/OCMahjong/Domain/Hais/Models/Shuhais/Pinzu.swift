//
//  Pinzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

public enum Pinzu: Shupai, CaseIterable {
    case iiPin // yiPin
    case ryanPin // liangPin
    case sanPin // sanPin
    case suPin // siPin
    case uuPin // wuPin
    case roPin // liuPin
    case chiPin // qiPin
    case paaPin // baPin
    case kyuPin // jiuPin

    public var id: String { "\(number.rawValue)p" }
    public var shupaiType: ShupaiType { .pinzu }
    // number は protocol extension のデフォルト実装（case 順 = 数値順）
}

// MARK: - UI
extension Pinzu {
    public var name: String { "\(number.rawValue.kansuji)筒" }
    public var image: Image { Image(id, bundle: .module) }
}
