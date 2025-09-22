//
//  YakuProtocol.swift
//  OCMahjong
//
//  Created by 斉藤尚也 on 2025/09/22.
//

public protocol YakuProtocol {
    var name: String { get }
    var hansu: Int? { get }
    var isYakuman: Bool { get }
    
    var limit: YakuLimit { get }
}
