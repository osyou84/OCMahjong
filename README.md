# OCMahjong

![Swift](https://img.shields.io/badge/Swift-6.0-orange.svg)
![Platforms](https://img.shields.io/badge/platforms-iOS%2016%2B-lightgrey.svg)
![SPM](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

麻雀の役情報・点数計算・牌モデルを提供する Swift Package です。

## 機能

- **牌モデル** — 数牌（萬子・筒子・索子）と字牌（風牌・三元牌）の完全な定義
- **役情報** — 43種類の役（翻数・食い下がり・役満判定・サンプル手牌）
- **点数計算** — 三人麻雀 / 四人麻雀のツモ・ロン点数を算出

> **Note**
> 牌効率解析（シャンテン数計算）は現在未実装です。

## 動作環境

| 項目 | バージョン |
|------|-----------|
| Swift | 6.0+ |
| iOS | 16.0+ |
| Xcode | 16.0+ |

## インストール

### Swift Package Manager

`Package.swift` の `dependencies` に追加してください。

```swift
dependencies: [
    .package(url: "https://github.com/osyou84/OCMahjong.git", from: "0.1.0")
]
```

ターゲットに依存関係を追加します。

```swift
targets: [
    .target(
        name: "MyTarget",
        dependencies: ["OCMahjong"]
    )
]
```

Xcode から追加する場合は **File > Add Package Dependencies…** からリポジトリ URL を入力してください。

## 使い方

### 牌を扱う

```swift
import OCMahjong

// 萬子
let iiMan = Manzu.iiMan       // 一萬
print(iiMan.name)             // "一萬"
print(iiMan.id)               // "1m"
print(iiMan.number)           // .one
print(iiMan.shupaiType)       // .manzu

// 字牌
let haku = Sangenpai.haku     // 白
print(haku.name)              // "白"
print(haku.jihaiType)         // .sangenpai(.haku)
```

### 役の情報を取得する

```swift
import OCMahjong

// 翻数
print(Yaku.pinfu.hansu)       // Optional(1)
print(Yaku.chinitsu.hansu)    // Optional(6)
print(Yaku.suanko.hansu)      // nil（役満）

// 役満判定
print(Yaku.suanko.isYakuman)  // true
print(Yaku.pinfu.isYakuman)   // false

// 役名
print(Yaku.riichi.name)       // "立直"

// 鳴き制限
print(Yaku.pinfu.limit)       // .memzenOnly
print(Yaku.tanyao.limit)      // .noLimitation

// 全役一覧
Yaku.allCases.forEach { print($0.name) }
```

### 点数を計算する

```swift
import OCMahjong

// 子の立直ツモ（2飜30符・四麻）
let score = Score(
    isParent: false,
    doubles: Doubles(value: 2),
    points: .thirty,
    numberOfPeople: .four
)

if let tsumo = score.getThumoPoint() {
    print("親: \(tsumo.parent)点")  // 親: 1000点
    print("子: \(tsumo.child)点")   // 子: 500点
}

if let ron = score.getRonPoint() {
    print("ロン: \(ron)点")          // ロン: 2000点
}
```

## 実装済み役一覧

<details>
<summary>全43種類を表示</summary>

### 1飜役

| 役名 | 門前 | 副露 |
|------|------|------|
| 立直 | ○ | — |
| 一発 | ○ | — |
| 門前清自摸和 | ○ | — |
| 平和 | ○ | — |
| 断么九 | ○ | ○ |
| 役牌 | ○ | ○ |
| 一盃口 | ○ | — |
| 嶺上開花 | ○ | ○ |
| 搶槓 | ○ | ○ |
| 海底撈月 | ○ | ○ |
| 河底撈魚 | ○ | ○ |

### 2飜役

| 役名 | 門前 | 副露 |
|------|------|------|
| 七対子 | ○ | — |
| 一気通貫 | ○ | 1飜 |
| 三色同順 | ○ | 1飜 |
| 三色同刻 | ○ | ○ |
| 三暗刻 | ○ | △ |
| 三槓子 | ○ | ○ |
| 対々和 | ○ | ○ |
| 混全帯么九 | ○ | 1飜 |
| ダブル立直 | ○ | — |

### 3飜役

| 役名 | 門前 | 副露 |
|------|------|------|
| 混一色 | ○ | 2飜 |
| 純全帯么九 | ○ | 2飜 |
| 二盃口 | ○ | — |

### 4飜役

| 役名 | 門前 | 副露 |
|------|------|------|
| 小三元 | ○ | ○ |
| 混老頭 | ○ | ○ |

### 6飜役

| 役名 | 門前 | 副露 |
|------|------|------|
| 清一色 | ○ | 5飜 |

### 役満

| 役名 |
|------|
| 国士無双 |
| 四暗刻 |
| 大三元 |
| 小四喜 |
| 大四喜 |
| 字一色 |
| 清老頭 |
| 緑一色 |
| 九蓮宝燈 |
| 四槓子 |
| 天和 |
| 地和 |

</details>

## コントリビューション

バグ報告・機能要望・プルリクエストを歓迎します。

### Issue の送り方

- バグ報告は **[Bug Report]** テンプレートを使用してください。
- 機能要望は **[Feature Request]** テンプレートを使用してください。

### Pull Request の手順

1. このリポジトリを Fork する
2. 作業ブランチを作成する（例: `git checkout -b feature/shanten`）
3. 変更をコミットする（例: `git commit -m 'Add shanten calculation'`）
4. ブランチを Push する（`git push origin feature/shanten`）
5. Pull Request を作成する

### 開発環境

- Xcode 16+ / iOS Simulator で動作確認してください（`swift build` は SwiftUI の制約でmacOS CLI環境では失敗します）
- テストは `swift test` または Xcode の Test ナビゲーターから実行できます

## ライセンス

[MIT License](./LICENSE)
Copyright © 2025 Osyou create

## 画像について

牌画像・点棒画像は [麻雀王国](https://mj-king.net/) 様の無料素材を使用しています。
