//
//  MahjongPai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public protocol MahjongPai {
    var name: String { get }
    var image: Image { get }
}

// MARK: - 数牌
public enum ShupaiCategory {
    case pinzi
    case suozi
    case wanzi
}

public protocol Shupai: MahjongPai {
    var number: ShupaiNumber { get }
    var name: String { get }
    var category: ShupaiCategory { get }
}

public enum ShupaiNumber: Int {
    case yi = 1
    case liang = 2
    case san = 3
    case si = 4
    case wu = 5
    case liu = 6
    case qi = 7
    case ba = 8
    case jiu = 9
    
    var chinese: String {
        switch self {
        case .yi:
            "一"
        case .liang:
            "二"
        case .san:
            "三"
        case .si:
            "四"
        case .wu:
            "五"
        case .liu:
            "六"
        case .qi:
            "七"
        case .ba:
            "八"
        case .jiu:
            "九"
        }
    }
}

// MARK: - 字牌
public enum ZipaiCategory {
    case fungPai
    case sangemPai
}

public protocol Zipai: MahjongPai {
    var name: String { get }
    var category: ZipaiCategory { get }
}
