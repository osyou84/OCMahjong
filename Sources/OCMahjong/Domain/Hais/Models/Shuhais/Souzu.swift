//
//  Souzu.swift
//
//
//  Created by 斉藤尚也 on 2023/12/15.
//

import SwiftUI

public enum Souzu: Shupai, CaseIterable {
    case iiSou // yiSuo
    case ryanSou // liangSuo
    case sanSou // sanSuo
    case suSou // siSuo
    case uuSou // wuSuo
    case roSou // liuSuo
    case chiSou // qiSuo
    case paaSou // baSuo
    case kyuSou // jiuSuo

    public var id: String { "\(number.rawValue)s" }
    public var shupaiType: ShupaiType { .souzu }
    // number は protocol extension のデフォルト実装（case 順 = 数値順）
}

// MARK: - UI
extension Souzu {
    public var name: String { "\(number.rawValue.kansuji)索" }
    public var image: Image { Image(id, bundle: .module) }
}
