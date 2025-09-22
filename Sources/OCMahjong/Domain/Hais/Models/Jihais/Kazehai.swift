//
//  Kazehai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation

/// Wind tiles (Kazehai: East, South, West, North).
public enum Kazehai: Int, Jihai {
    case east = 1
    case south = 2
    case west = 3
    case north = 4
    
    public var jihaiType: JihaiType {
        .kazehai(self)
    }
    
    public var id: String {
        switch self {
        case .east: return "Tk"
        case .south: return "Nk"
        case .west: return "Xk"
        case .north: return "Pk"
        }
    }
}
