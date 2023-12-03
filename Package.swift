// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EasyUtilities",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "EasyUtilities",
            targets: ["EasyUtilities"]
        ),
    ], 
    dependencies: [
        .package(url: "https://github.com/SFSafeSymbols/SFSafeSymbols", from: "4.1.1"),
        .package(url: "https://github.com/sindresorhus/Defaults", from: "7.0.0"),
        .package(url: "https://github.com/omaralbeik/Drops", from: "1.7.0"),
        .package(url: "https://github.com/malcommac/SwiftDate", from: "7.0.0"),
    ],
    targets: [
        .target(
            name: "EasyUtilities",
            dependencies: [
                "SFSafeSymbols",
                "Defaults",
                "Drops",
                "SwiftDate",
            ]
        ),
    ]
)
