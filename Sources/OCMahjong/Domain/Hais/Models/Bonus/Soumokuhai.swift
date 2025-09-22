//
//  Soumokuhai.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// Flower bonus tiles (Hana).
public enum Soumokuhai: Int, Hanahai {
    case ume = 1 // plumBlossom
    case ran = 2 // orchid
    case kiku = 3 // chrysanthemum
    case take = 4 // bamboo
    
    public var hanahaiType: HanahaiType {
        .soumokuhai(self)
    }
    
    public var id: String {
        switch self {
        case .ume: return "Us"
        case .ran: return "Rs"
        case .kiku: return "Ks"
        case .take: return "Ts"
        }
    }
}
