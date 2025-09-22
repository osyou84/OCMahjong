# OCMahjong

[English README](./README.md)

OCMahjong は、麻雀の役判定・点数計算・牌効率解析を行うためのオープンソースライブラリです。

## 機能
- 牌・手牌・局面を表す堅牢なモデル
- [DRAFT] 役判定（門前/副露、食い下がり、複合役に対応）
- [DRAFT] 点数計算（符計算・場風/自風・親子・積み棒・供託）
- [DRAFT] 牌効率/シャンテン数の計算（一般形・七対子・国士無双）

## インストール
### 動作環境
- Swift 5.9+
- iOS 16+

### Swift Package Manager
`Package.swift` の `dependencies` に以下を追加してください:

```swift
let package = Package(
    name: "MyPackage",
    products: [...],
    dependencies: [
        .package(url: "https://github.com/osyou84/OCMahjong.git", .upToNextMajor(from: "0.1.0"))
    ],
    targets: [...]
)
```

## 画像について
[麻雀王国](https://mj-king.net/)様の無料利用可能な画像を利用しています。
