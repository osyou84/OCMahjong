//
//  TileTypes.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// High-level tile categories.
public enum TileType {
    case suit
    case honor
    case bonus
}

/// The three Mahjong suits (characters/manzu, dots/pinzu, bamboos/souzu).
public enum SuitType {
    case character
    case dot
    case bamboo
}

/// Honor tiles, parameterized by wind or dragon subtype.
public enum HonorType {
    case wind(Wind)
    case dragon(Dragon)
}

/// Bonus tiles, parameterized by flower or season subtype.
public enum BonusType {
    case flowers(Flower)
    case seasons(Season)
}
