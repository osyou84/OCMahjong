//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum SangenPai: Zipai, CaseIterable {
    case haku
    case hatsu
    case chun
    
    public var id: UUID { .init() }
    public var category: ZipaiCategory { .sangemPai }
    
    public var name: String {
        switch self {
        case .haku:
            "白"
        case .hatsu:
            "發"
        case .chun:
            "中"
        }
    }
    
    public var image: Image {
        return .init("j\(String(describing: self))", bundle: .module)
    }
}
