//
//  Manzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
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
    
    public var id: String {
        "\(number.rawValue)m"
    }
    
    public var shupaiType: ShuhaiType {
        .manzu
    }

    public var number: ShupaiNumber {
        switch self {
        case .iiMan: return .one
        case .ryanMan: return .two
        case .sanMan: return .three
        case .suMan: return .four
        case .uuMan: return .five
        case .roMan: return .six
        case .chiMan: return .seven
        case .paaMan: return .eight
        case .kyuMan: return .nine
        }
    }
}

// MARK: - UIs
extension Manzu {
    public var name: String {
        "\(number.rawValue.kansuji)萬"
    }
    
    public var image: Image {
        Image(id, bundle: .module)
    }
}
