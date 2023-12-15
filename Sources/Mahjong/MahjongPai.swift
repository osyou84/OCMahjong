//
//  MahjongPai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public protocol SangenPai: Zipai {
    
}

public protocol FungPai: Zipai {
    
}

public enum ZipaiCategory {
    case FungPai
    case SangemPai
}

public protocol Zipai: MahjongPai {
    var name: String { get }
    var category: ZipaiCategory { get }
}

public protocol Suozi: Shupai {
    
}

public protocol Pinzi: Shupai {
    
}

public enum ShupaiCategory {
    case pinzi
    case shuzi
    case wanzi
}

public protocol Shupai: MahjongPai {
    var number: Int { get }
    var name: String { get }
    var category: ShupaiCategory { get }
}

public protocol MahjongPai {
    var image: Image { get }
}
