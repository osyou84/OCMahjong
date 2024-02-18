//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2024/01/10.
//

import SwiftUI

public enum MahjongPoint: Int, CaseIterable {
    case oneHundred = 100
    case oneThousand = 1000
    case fiveThousand = 5000
    case tenThousand = 10000
    
    public var image: Image {
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
    
    public var color: Color {
        switch self {
        case .oneHundred:
            Color(red: 255/255, green: 255/255, blue: 255)
        case .oneThousand:
            Color(red: 0, green: 104/255, blue: 183/255)
        case .fiveThousand:
            Color(red: 243/255, green: 150/255, blue: 0)
        case .tenThousand:
            Color(red: 231/255, green: 0, blue: 18/255)
        }
    }
}
