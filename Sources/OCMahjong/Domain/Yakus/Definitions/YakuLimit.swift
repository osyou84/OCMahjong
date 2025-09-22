//
//  YakuLimit.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

public enum YakuLimit {
    case memzenOnly
    case withKuiSagari(hansu: Int)
    case ankoOutsideNakiOk
    case noLimitation
    
    public var text: String {
        switch self {
        case .memzenOnly:
            "門前のみ"
        case .withKuiSagari(let hansu):
            "食い下がり\(hansu - 1)飜"
        case .ankoOutsideNakiOk:
            "暗刻以外鳴き無し"
        case .noLimitation:
            "食い制限無し"
        }
    }
}
