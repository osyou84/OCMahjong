//
//  Souzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

public enum Souzu: Shupai {
    case iiSou // yiSuo
    case ryanSou // liangSuo
    case sanSou // sanSuo
    case suSou // siSuo
    case uuSou // wuSuo
    case roSou // liuSuo
    case chiSou // qiSuo
    case paaSou // baSuo
    case kyuSou // jiuSuo
    
    public var id: String {
        "\(number.rawValue)s"
    }
    
    public var shupaiType: ShuhaiType {
        .souzu
    }

    public var number: ShupaiNumber {
        switch self {
        case .iiSou: return .one
        case .ryanSou: return .two
        case .sanSou: return .three
        case .suSou: return .four
        case .uuSou: return .five
        case .roSou: return .six
        case .chiSou: return .seven
        case .paaSou: return .eight
        case .kyuSou: return .nine
        }
    }
}
