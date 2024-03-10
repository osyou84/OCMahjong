//
//  Doubles.swift
//
//
//  Created by 斉藤尚也 on 2024/02/27.
//

import Foundation

public struct Doubles {
    public let value: Int
    public static let min: Int = 1
    
    init(value: Int) {
        guard value >= Self.min else {
            self.value = Self.min
            return
        }
        
        self.value = value
    }
}
