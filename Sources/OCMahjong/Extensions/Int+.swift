//
//  Int+.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

extension Int {
    /// 整数を日本語の漢数字文字列に変換する（例: 1 → "一"、9 → "九"）。
    /// `NumberFormatter` の `spellOut` スタイルと日本語ロケールを使用する。
    /// 絶対値が 10^18 以上の場合は空文字列を返す。
    var kansuji: String {
        if self >= Int(1E18) { return "" }
        if self <= -Int(1E18) { return "" }

        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = .init(identifier: "ja-JP")

        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
