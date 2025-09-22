//
//  Tenbo.swift
//
//
//  Created by 斉藤尚也 on 2024/01/10.
//

import SwiftUI

// Sticks
public enum Tenbo: Int, CaseIterable {
    case hyakutenbo = 100 // oneHundred
    case sentenbo = 1000 // oneThousand
    case gosentenbo = 5000 // fiveThousand
    case ichimantenbo = 10000 // tenThousand
    
    public var image: Image {
        switch self {
        case .hyakutenbo:
            .init("p100", bundle: .module)
        case .sentenbo:
            .init("p1000", bundle: .module)
        case .gosentenbo:
            .init("p5000", bundle: .module)
        case .ichimantenbo:
            .init("p10000", bundle: .module)
        }
    }
    
    public var color: Color {
        switch self {
        case .hyakutenbo:
            Color(red: 255/255, green: 255/255, blue: 255)
        case .sentenbo:
            Color(red: 0, green: 104/255, blue: 183/255)
        case .gosentenbo:
            Color(red: 243/255, green: 150/255, blue: 0)
        case .ichimantenbo:
            Color(red: 231/255, green: 0, blue: 18/255)
        }
    }
}
