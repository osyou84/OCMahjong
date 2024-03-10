//
//  Doubles.swift
//
//
//  Created by 斉藤尚也 on 2024/02/27.
//

import Foundation

public struct Doubles: Equatable {
    public let value: Int
    public static let min: Doubles = .init(value: 1)
    
    init(value: Int) {
        guard value >= Self.min.value else {
            self.value = Self.min.value
            return
        }
        
        self.value = value
    }
}
