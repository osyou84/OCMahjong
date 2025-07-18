//
//  File.swift
//  
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import Foundation
import SwiftUI

public enum FungPai: Zipai, CaseIterable {
    case dong
    case nan
    case xi
    case bei
    
    public var id: UUID { .init() }
    public var category: ZipaiCategory { .fungPai }
    
    public var name: String {
        switch self {
        case .dong:
            "東"
        case .nan:
            "南"
        case .xi:
            "西"
        case .bei:
            "北"
        }
    }
    
    public var image: Image {
        return .init("j\(String(describing: self))", bundle: .module)
    }
}
