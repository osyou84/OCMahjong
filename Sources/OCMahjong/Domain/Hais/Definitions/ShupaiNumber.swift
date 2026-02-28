//
//  SuitNumber.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// 数牌の数字を表す列挙型（一〜九）。
/// `rawValue` は数値そのもの（1〜9）で、`Shupai.number` から参照される。
public enum ShupaiNumber: Int, CaseIterable {
    case one   = 1
    case two   = 2
    case three = 3
    case four  = 4
    case five  = 5
    case six   = 6
    case seven = 7
    case eight = 8
    case nine  = 9
}
