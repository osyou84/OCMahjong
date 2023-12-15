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
    
    public var number: Int {
        switch self {
        case .yiWan:
            1
        case .liangWan:
            2
        case .sanWan:
            3
        case .siWan:
            4
        case .wuWan:
            5
        case .liuWan:
            6
        case .qiWan:
            7
        case .baWan:
            8
        case .jiuWan:
            9
        }
    }
    
    public var name: String {
        switch self {
        case .yiWan:
            "一萬"
        case .liangWan:
            "二萬"
        case .sanWan:
            "三萬"
        case .siWan:
            "四萬"
        case .wuWan:
            "五萬"
        case .liuWan:
            "六萬"
        case .qiWan:
            "七萬"
        case .baWan:
            "八萬"
        case .jiuWan:
            "九萬"
        }
    }
    
    public var category: ShupaiCategory { .wanzi }
    
    public var image: Image { .init("0m\(number)", bundle: .module) }
}
