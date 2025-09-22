//
//  Kazehai.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

/// Wind tiles.
public enum Kazehai: Int, Jihai, CaseIterable {
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

// MARK: - UIs
extension Kazehai {
    public var name: String {
        switch self {
        case .ton: return "東"
        case .nan: return "南"
        case .sya: return "西"
        case .pei: return "北"
        }
    }
    
    public var image: Image {
        Image(id, bundle: .module)
    }
}
