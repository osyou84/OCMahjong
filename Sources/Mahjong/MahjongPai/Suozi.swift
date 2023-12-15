//
//  Suozi.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum Suozi: Shupai {
    case yiSuo
    case liangSuo
    case sanSuo
    case siSuo
    case wuSuo
    case liuSuo
    case qiSuo
    case baSuo
    case jiuSuo
    
    public var number: ShupaiNumber {
        switch self {
        case .yiSuo:
            return .yi
        case .liangSuo:
            return .liang
        case .sanSuo:
            return .san
        case .siSuo:
            return .si
        case .wuSuo:
            return .wu
        case .liuSuo:
            return .liu
        case .qiSuo:
            return .qi
        case .baSuo:
            return .ba
        case .jiuSuo:
            return .jiu
        }
    }
    
    public var name: String { "\(number.chinese)索" }
    
    public var category: ShupaiCategory { .suozi }
}
