//
//  Points.swift
//
//
//  Created by 斉藤尚也 on 2024/02/27.
//

import Foundation

/// 符数（フスウ）を表す列挙型。
/// 符は10の倍数で切り上げた値（20符〜110符）を表す。
/// `rawValue` は符の数値そのもの。
public enum Points: Int, CaseIterable {
    case twenty        = 20
    case twentyFive    = 25
    case thirty        = 30
    case forty         = 40
    case fifty         = 50
    case sixty         = 60
    case seventy       = 70
    case eighty        = 80
    case ninety        = 90
    case hundred       = 100
    case oneHundredTen = 110
}
