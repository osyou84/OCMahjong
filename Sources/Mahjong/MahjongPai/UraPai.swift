//
//  UraPai.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/07/05.
//

import SwiftUI

public enum UraPai {
    case upper
    case under
    
    public var image: Image {
        switch self {
        case .upper:
            return .init("0ura")
        case .under:
            return .init("1ura")
        }
    }
}
