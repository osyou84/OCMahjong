//
//  TileProtocols.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation
import SwiftUI

/// すべての牌が準拠するベースプロトコル。
/// 安定した識別子（`id`）、牌の大分類（`haiType`）、牌名（`name`）を提供する。
public protocol Hai: Identifiable, Sendable {
    /// 牌を一意に識別する文字列（例: "1m"、"Tk"、"Ws"）。
    var id: String { get }
    /// 牌の大分類（数牌 or 字牌）。
    var haiType: HaiType { get }
    /// 牌の名称（例: "一萬"、"東"、"白"）。
    var name: String { get }
    /// 牌の画像。
    var image: Image { get }
}

/// 数牌（萬子・筒子・索子）のプロトコル。
/// スーツ（`shupaiType`）と数字（`number`）を追加で提供する。
public protocol Shupai: Hai {
    /// 数牌のスーツ（萬子 / 筒子 / 索子）。
    var shupaiType: ShupaiType { get }
    /// 数牌の数字（一〜九）。
    var number: ShupaiNumber { get }
}

/// `Shupai` のデフォルト実装: `haiType` は常に `.shupai`。
public extension Shupai {
    var haiType: HaiType { .shupai }
}

/// `number` のデフォルト実装。
/// case の宣言順序が数値の昇順（一〜九）と一致する `CaseIterable & Equatable` な型で利用できる。
/// 準拠する型は必ず case を昇順で宣言すること。
public extension Shupai where Self: CaseIterable & Equatable {
    var number: ShupaiNumber {
        let index = Array(Self.allCases).firstIndex(of: self)!
        return ShupaiNumber.allCases[index]
    }
}

/// 字牌（風牌・三元牌）のプロトコル。
public protocol Jihai: Hai {
    /// 字牌の種類（風牌 or 三元牌）。
    var jihaiType: JihaiType { get }
}

/// `Jihai` のデフォルト実装: `haiType` は常に `.jihai`。
public extension Jihai {
    var haiType: HaiType { .jihai }
}
