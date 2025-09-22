//
//  HaiSubtypes.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// Wind tiles (Kazehai: East, South, West, North).
public enum Kazehai: Int, CaseIterable {
    case east = 1
    case south = 2
    case west = 3
    case north = 4
}

/// Dragon tiles (Sangenpai: White, Green, Red).
///
/// Note: The ordering (white = 1, green = 2, red = 3) follows Japanese Mahjong
/// conventions (白・發・中). Keep this order if you rely on raw values for
/// sorting, encoding, or display.
public enum Sangenpai: Int, CaseIterable {
    case white = 1
    case green = 2
    case red = 3
}

/// Flower bonus tiles (Hana).
public enum Hana: Int, CaseIterable {
    case plumBlossom = 1
    case orchid = 2
    case chrysanthemum = 3
    case bamboo = 4
}

/// Season bonus tiles (Kisetsu).
public enum Kisetsu: Int, CaseIterable {
    case spring = 1
    case summer = 2
    case autumn = 3
    case winter = 4
}
