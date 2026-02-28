//
//  HaiTypes.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// 牌の大分類。
public enum HaiType: Sendable, CaseIterable {
    /// 数牌（萬子・筒子・索子）
    case shupai
    /// 字牌（風牌・三元牌）
    case jihai
}

/// 数牌のスーツ（種類）。
public enum ShupaiType: Sendable, CaseIterable {
    /// 萬子（マンズ）
    case manzu
    /// 筒子（ピンズ）
    case pinzu
    /// 索子（ソーズ）
    case souzu
}

/// 字牌の種類。
public enum JihaiType: Sendable {
    /// 風牌（東・南・西・北）
    case kazehai(Kazehai)
    /// 三元牌（白・發・中）
    case sangenpai(Sangenpai)
}
