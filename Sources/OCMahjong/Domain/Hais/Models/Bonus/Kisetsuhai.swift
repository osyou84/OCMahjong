//
//  Kisetsuhai.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// Season bonus tiles (Kisetsu).
public enum Kisetsuhai: Int, Hanahai {
    case spring = 1
    case summer = 2
    case autumn = 3
    case winter = 4
    
    public var hanahaiType: HanahaiType {
        .kisetsuhai(self)
    }
    
    public var id: String {
        switch self {
        case .spring: return "Spk"
        case .summer: return "Suk"
        case .autumn: return "Auk"
        case .winter: return "Wik"
        }
    }
}
