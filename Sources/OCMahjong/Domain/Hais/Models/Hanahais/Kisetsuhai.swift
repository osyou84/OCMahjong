//
//  Kisetsuhai.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// Season bonus tiles (Kisetsu).
public enum Kisetsuhai: Int, Hanahai {
    case haru = 1 // spring
    case matsu = 2 // summer
    case aki = 3 // autumn
    case fuyu = 4 // winter
    
    public var hanahaiType: HanahaiType {
        .kisetsuhai(self)
    }
    
    public var id: String {
        switch self {
        case .haru: return "Hk"
        case .matsu: return "Nk"
        case .aki: return "Ak"
        case .fuyu: return "Fk"
        }
    }
}
