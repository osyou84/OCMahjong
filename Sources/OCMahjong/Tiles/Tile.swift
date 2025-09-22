//
//  Tile.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// OCMahjong Tile Model
///
/// This file defines the core type system for Mahjong tiles used across the app.
/// It provides a strongly typed, extensible model that classifies tiles into
/// suits, honors, and bonus tiles, and exposes protocols that concrete tile
/// types conform to.
///
/// Design goals:
/// - Type safety: Avoid invalid states (e.g., non-1–9 numbers) by modeling
///   values as enums.
/// - Clarity: Make the hierarchy and relationships explicit and discoverable.
/// - Extensibility: New tile implementations conform to the appropriate
///   protocol and inherit correct defaults.
/// - Usability: CaseIterable and raw values simplify iteration and sorting.

import Foundation

// MARK: - Tile Types

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

// MARK: - Subtypes (Honors / Bonus)

/// Wind tiles (East, South, West, North).
public enum Wind: Int, CaseIterable {
    case east = 1
    case south = 2
    case west = 3
    case north = 4
}

/// Dragon tiles (White, Green, Red).
///
/// Note: The ordering (white = 1, green = 2, red = 3) follows Japanese Mahjong
/// conventions (白・發・中). Keep this order if you rely on raw values for
/// sorting, encoding, or display.
public enum Dragon: Int, CaseIterable {
    case white = 1
    case green = 2
    case red = 3
}

/// Flower bonus tiles.
public enum Flower: Int, CaseIterable {
    case plumBlossom = 1
    case orchid = 2
    case chrysanthemum = 3
    case bamboo = 4
}

/// Season bonus tiles.
public enum Season: Int, CaseIterable {
    case spring = 1
    case summer = 2
    case autumn = 3
    case winter = 4
}

// MARK: - Numbers (Suits)

/// Valid numbers for suited tiles (1–9).
public enum SuitNumber: Int, CaseIterable {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
}

// MARK: - Protocols

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

