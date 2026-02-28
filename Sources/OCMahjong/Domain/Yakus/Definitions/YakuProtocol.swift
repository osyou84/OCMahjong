//
//  YakuProtocol.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// 役が準拠するプロトコル。
/// 役名・翻数・役満判定・鳴き制限を提供する。
public protocol YakuProtocol {
    /// 役名（日本語表記、例: "立直"、"平和"）。
    var name: String { get }
    /// 翻数。役満の場合は `nil`。
    var hansu: Int? { get }
    /// 役満かどうか。`hansu == nil` の役が役満に相当する。
    var isYakuman: Bool { get }
    /// 門前・副露に関する鳴き制限。
    var limit: YakuLimit { get }
}
