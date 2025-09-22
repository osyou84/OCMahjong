// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OCMahjong",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    products: [
        .library(
            name: "OCMahjong",
            targets: ["OCMahjong"]),
    ],
    targets: [
        .target(
            name: "OCMahjong",
            resources: [.process("Resources/Media")]
        ),
        .testTarget(
            name: "MahjongTests",
            dependencies: ["OCMahjong"]
        ),
    ]
)
