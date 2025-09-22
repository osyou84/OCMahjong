//
//  TileProtocols.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// Base protocol for all tiles. Conforming types provide a stable identifier
/// and their high-level category via `tileType`.
public protocol Tile: Identifiable {
    var identifier: String { get }
    var tileType: TileType { get }
}

/// Suited tile: adds the suit (characters/dots/bamboos) and a valid number.
public protocol Suit: Tile {
    var suitType: SuitType { get }
    var number: SuitNumber { get }
}

/// Default mapping from `Suit` to its `TileType`.
public extension Suit where Self: Tile {
    var tileType: TileType { .suit }
}

/// Honor tile: winds and dragons via `HonorType`.
public protocol Honor: Tile {
    var honorType: HonorType { get }
}

/// Default mapping from `Honor` to its `TileType`.
public extension Honor where Self: Tile {
    var tileType: TileType { .honor }
}

/// Bonus tile: flowers and seasons via `BonusType`.
public protocol Bonus: Tile {
    var bonusType: BonusType { get }
}

/// Default mapping from `Bonus` to its `TileType`.
public extension Bonus where Self: Tile {
    var tileType: TileType { .bonus }
}
