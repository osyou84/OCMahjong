//
//  HaiTypes.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// High-level Mahjong tile categories.
public enum HaiType {
    case shupai // suits
    case jihai // honors
    case hanahai
}

/// The three suited tile families.
public enum ShuhaiType {
    case manzu // characters
    case pinzu // dots
    case souzu // bamboos
}

/// Honor tiles.
public enum JihaiType {
    case kazehai(Kazehai) // winds
    case sangenpai(Sangenpai) // dragons
}

/// Bonus tiles.
public enum HanahaiType {
    case kisetsuhai(Kisetsuhai) // seasons
    case soumokuhai(Soumokuhai) // flowers
}
