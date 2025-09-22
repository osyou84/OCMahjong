//
//  Suozi.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum Suozi: Shupai, CaseIterable {
    case yiSuo
    case liangSuo
    case sanSuo
    case siSuo
    case wuSuo
    case liuSuo
    case qiSuo
    case baSuo
    case jiuSuo
    
    public var id: UUID { .init() }
    public var category: ShupaiCategory { .suozi }
    
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
    
    public var image: Image {
        .init("s\(number.rawValue)", bundle: .module)
    }
    
    public var isGreen: Bool {
        self == .liangSuo || self == .sanSuo || self == .siSuo || self == .liuSuo || self == .baSuo
    }
    
    public init (number: Int) {
        switch number {
        case 1: self = .yiSuo
        case 2: self = .liangSuo
        case 3: self = .sanSuo
        case 4: self = .siSuo
        case 5: self = .wuSuo
        case 6: self = .liuSuo
        case 7: self = .qiSuo
        case 8: self = .baSuo
        case 9: self = .jiuSuo
        default:
            fatalError("Invalid number \(number)")
        }
    }
}
