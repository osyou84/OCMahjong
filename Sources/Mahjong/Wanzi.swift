//
//  Wanzi.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public protocol Wanzi: Shupai { }

extension Wanzi {
    public var category: ShupaiCategory { .wanzi }
    
    public var image: Image {
        .init("\(status.rawValue)m\(number)")
    }
}

public struct YiWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 1 }
    
    public var name: String { "一萬" }
}

public struct LiangWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 2 }
    
    public var name: String { "二萬"}
}

public struct SanWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 3 }
    
    public var name: String { "三萬"}
}

public struct SiWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 4 }
    
    public var name: String { "四萬"}
}

public struct WuWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 5 }
    
    public var name: String { "五萬"}
}

public struct LiuWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 6 }
    
    public var name: String { "六萬"}
}

public struct QiWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 7 }
    
    public var name: String { "七萬"}
}

public struct BaWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 8 }

    public var name: String { "八萬"}
}

public struct JiuWan: Wanzi {
    public var status: MahjongPaiStatus = .liPai
    
    public var number: Int { 9 }
    
    public var name: String { "九萬"}
}
