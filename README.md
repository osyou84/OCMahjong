# OCMahjong

OCMahjong is an open-source library for Mahjong hand evaluation, score calculation, and tile-efficiency analysis.

## Features
- Robust models for tiles, hands, and game state
- [DRAFT] Yaku detection (supports closed/open hands, kuisagari reductions, and compound yaku)
- [DRAFT] Score calculation (fu calculation, round/seat wind, dealer/non-dealer, honba, and riichi deposits)
- [DRAFT] Tile efficiency and Shanten calculation (standard hand, Seven Pairs, and Thirteen Orphans)

## Installation
### Requirements
- Swift 5.9+
- iOS 16+

### Swift Package Manager
Add the package to your `Package.swift` under `dependencies`:

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

## Special Thanks
Images used in this project are sourced from Mahjong Kingdom (麻雀王国)
https://mj-king.net/
