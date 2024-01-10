//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2024/01/10.
//

import SwiftUI

public enum MahjongPoint: Int {
    case oneHundred = 100
    case oneThousand = 1000
    case fiveThousand = 5000
    case tenThousand = 10000
    
    var image: Image {
        switch self {
        case .oneHundred:
            .init("p100", bundle: .module)
        case .oneThousand:
            .init("p1000", bundle: .module)
        case .fiveThousand:
            .init("p5000", bundle: .module)
        case .tenThousand:
            .init("p10000", bundle: .module)
        }
    }
}
