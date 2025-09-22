//
//  Pinzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

public enum Pinzu: Shupai {
    case iiPin // yiPin
    case ryanPin // liangPin
    case sanPin // sanPin
    case suPin // siPin
    case uuPin // wuPin
    case roPin // liuPin
    case chiPin // qiPin
    case paaPin // baPin
    case kyuPin // jiuPin
    
    public var id: String {
        "\(number.rawValue)p"
    }
    
    public var shupaiType: ShuhaiType {
        .pinzu
    }
    
    public var number: ShupaiNumber {
        switch self {
        case .iiPin: return .one
        case .ryanPin: return .two
        case .sanPin: return .three
        case .suPin: return .four
        case .uuPin: return .five
        case .roPin: return .six
        case .chiPin: return .seven
        case .paaPin: return .eight
        case .kyuPin: return .nine
        }
    }
}
