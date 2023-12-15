//
//  Wanzi.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum Wanzi: Shupai {
    case yiWan
    case liangWan
    case sanWan
    case siWan
    case wuWan
    case liuWan
    case qiWan
    case baWan
    case jiuWan
    
    public var category: ShupaiCategory { .wanzi }
    
    public var number: ShupaiNumber {
        switch self {
        case .yiWan:
            return .yi
        case .liangWan:
            return .liang
        case .sanWan:
            return .san
        case .siWan:
            return .si
        case .wuWan:
            return .wu
        case .liuWan:
            return .liu
        case .qiWan:
            return .qi
        case .baWan:
            return .ba
        case .jiuWan:
            return .jiu
        }
    }
    
    public var name: String {
        "\(number.chinese)萬"
    }
    
    public var image: Image {
        .init("0m\(number.rawValue)", bundle: .module)
    }
}
