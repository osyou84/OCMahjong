//
//  Wanzi.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum Wanzi: Shupai, CaseIterable {
    case yiWan
    case liangWan
    case sanWan
    case siWan
    case wuWan
    case liuWan
    case qiWan
    case baWan
    case jiuWan
    
    public var id: UUID { .init() }
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
        .init("m\(number.rawValue)", bundle: .module)
    }
    
    public init (number: Int) {
        switch number {
        case 1: self = .yiWan
        case 2: self = .liangWan
        case 3: self = .sanWan
        case 4: self = .siWan
        case 5: self = .wuWan
        case 6: self = .liuWan
        case 7: self = .qiWan
        case 8: self = .baWan
        case 9: self = .jiuWan
        default:
            fatalError("Invalid number \(number)")
        }
    }
}
