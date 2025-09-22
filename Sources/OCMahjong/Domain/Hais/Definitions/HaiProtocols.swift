//
//  TileProtocols.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

/// Base protocol for all tiles. Conforming types provide a stable identifier
/// and their high-level category via `haiType`.
public protocol Hai: Identifiable {
    var id: String { get }
    var haiType: HaiType { get }
    var name: LocalizedStringResource { get }
}

/// Suited tile: adds the suit (manzu/pinzu/souzu) and a valid number.
public protocol Shupai: Hai {
    var shupaiType: ShuhaiType { get }
    var number: ShupaiNumber { get }
}

/// Default mapping from `Suit` to its `HaiType`.
public extension Shupai where Self: Hai {
    var haiType: HaiType { .shupai }
}

/// Honor tile: winds and dragons via `JihaiType`.
public protocol Jihai: Hai {
    var jihaiType: JihaiType { get }
}

/// Default mapping from `Honor` to its `HaiType`.
public extension Jihai where Self: Hai {
    var haiType: HaiType { .jihai }
}

/// Bonus tile: flowers and seasons via `BonusType`.
public protocol Bonus: Hai {
    var bonusType: BonusType { get }
}

/// Default mapping from `Bonus` to its `HaiType`.
public extension Bonus where Self: Hai {
    var haiType: HaiType { .bonus }
}
