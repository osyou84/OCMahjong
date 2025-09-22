//
//  Kazehai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

/// Wind tiles (Kazehai: East, South, West, North).
public enum Kazehai: Int, Jihai {
    case ton = 1 // east / dong
    case nan = 2 // south / nan
    case sya = 3  // west / xi
    case pei = 4 // north / bei
    
    public var jihaiType: JihaiType {
        .kazehai(self)
    }
    
    public var id: String {
        switch self {
        case .ton: return "Tk"
        case .nan: return "Nk"
        case .sya: return "Sk"
        case .pei: return "Pk"
        }
    }
}
