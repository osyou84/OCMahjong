// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OCMahjong",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "OCMahjong",
            targets: ["OCMahjong"]),
    ],
    targets: [
        .target(
            name: "OCMahjong",
            resources: [
                .process("Resources/Media.xcassets")
            ]
        ),
        .testTarget(
            name: "OCMahjongTests",
            dependencies: ["OCMahjong"]
        ),
    ]
)
