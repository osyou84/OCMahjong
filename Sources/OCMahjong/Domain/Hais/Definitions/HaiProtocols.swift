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
    var name: String { get }
}

/// Suited tile: adds the suit (manzu/pinzu/souzu) and a valid number.
public protocol Shupai: Hai {
    var shupaiType: ShupaiType { get }
    var number: ShupaiNumber { get }
}

/// Default mapping from `Suit` to its `HaiType`.
public extension Shupai {
    var haiType: HaiType { .shupai }
}

/// Default `number` implementation for enums whose case order matches 1–9.
/// Conforming types must declare `CaseIterable` and keep cases in ascending order.
public extension Shupai where Self: CaseIterable & Equatable {
    var number: ShupaiNumber {
        let index = Array(Self.allCases).firstIndex(of: self)!
        return ShupaiNumber.allCases[index]
    }
}

/// Honor tile: winds and dragons via `JihaiType`.
public protocol Jihai: Hai {
    var jihaiType: JihaiType { get }
}

/// Default mapping from `Honor` to its `HaiType`.
public extension Jihai {
    var haiType: HaiType { .jihai }
}
