//
//  Doubles.swift
//
//
//  Created by 斉藤尚也 on 2024/02/27.
//

import Foundation

/// 翻数（ハンスウ）を表す値型。
/// 最小値は 1 に制限されており、0 以下の値を渡した場合は 1 として扱われる。
public struct Doubles: Equatable {
    /// 実際の翻数（1 以上）。
    public let value: Int
    /// 翻数の最小値（= 1）。
    public static let min: Int = 1

    /// - Parameter value: 翻数。1 未満の場合は自動的に 1 に補正される。
    public init(value: Int) {
        guard value >= Self.min else {
            self.value = Self.min
            return
        }
        self.value = value
    }
}
