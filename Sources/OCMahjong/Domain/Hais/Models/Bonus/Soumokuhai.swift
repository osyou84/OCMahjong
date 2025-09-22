//
//  Soumokuhai.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// Flower bonus tiles (Hana).
public enum Soumokuhai: Int, Hanahai {
    case plumBlossom = 1
    case orchid = 2
    case chrysanthemum = 3
    case bamboo = 4
    
    public var hanahaiType: HanahaiType {
        .soumokuhai(self)
    }
    
    public var id: String {
        switch self {
        case .plumBlossom: return "Pls"
        case .orchid: return "Ors"
        case .chrysanthemum: return "Chs"
        case .bamboo: return "Bas"
        }
    }
}
