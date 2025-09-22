//
//  Int+.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

import Foundation

extension Int {
    var kansuji: String {
        if self >= Int(1E18) { return "" }
        if self <= -Int(1E18) { return "" }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = .init(identifier: "ja-JP")
        
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
