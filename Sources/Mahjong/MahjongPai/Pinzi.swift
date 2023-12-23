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
}
