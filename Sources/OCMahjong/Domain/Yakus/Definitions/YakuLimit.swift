//
//  YakuLimit.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

/// 役の門前・副露制限を表す列挙型。
public enum YakuLimit {
    /// 門前（メンゼン）限定。副露すると成立しない。
    case memzenOnly
    /// 副露可能だが、食い下がりにより翻数が減少する。
    /// 関連値 `hansu` は門前時の翻数で、副露後は `hansu - 1` 翻となる。
    case withKuiSagari(hansu: Int)
    /// 暗刻以外での副露は不可。
    case ankoOutsideNakiOk
    /// 食い制限なし。副露しても翻数は変わらない。
    case noLimitation

    /// 制限の日本語テキスト表現。
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
