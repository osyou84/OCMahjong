//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum Pinzi: Shupai, CaseIterable {    
    case yiPin
    case liangPin
    case sanPin
    case siPin
    case wuPin
    case liuPin
    case qiPin
    case baPin
    case jiuPin
    
    public var id: UUID { .init() }
    public var category: ShupaiCategory { .pinzi }
    
    public var number: ShupaiNumber {
        switch self {
        case .yiPin:
            return .yi
        case .liangPin:
            return .liang
        case .sanPin:
            return .san
        case .siPin:
            return .si
        case .wuPin:
            return .wu
        case .liuPin:
            return .liu
        case .qiPin:
            return .qi
        case .baPin:
            return .ba
        case .jiuPin:
            return .jiu
        }
    }
    
    public var name: String {
        "\(number.chinese)筒"
    }
    
    public var image: Image {
        .init("p\(number.rawValue)", bundle: .module)
    }
    
    public init (number: Int) {
        switch number {
        case 1: self = .yiPin
        case 2: self = .liangPin
        case 3: self = .sanPin
        case 4: self = .siPin
        case 5: self = .wuPin
        case 6: self = .liuPin
        case 7: self = .qiPin
        case 8: self = .baPin
        case 9: self = .jiuPin
        default:
            fatalError("Invalid number \(number)")
        }
    }
}
