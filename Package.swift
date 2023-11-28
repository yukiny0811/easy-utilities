// swift-tools-version: 5.9
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
        .package(url: "git@github.com:yukiny0811/easy-string.git", from: "1.0.0"),
        .package(url: "https://github.com/SFSafeSymbols/SFSafeSymbols", from: "4.1.1"),
    ],
    targets: [
        .target(
            name: "EasyUtilities",
            dependencies: [
                .product(name: "EasyString", package: "easy-string"),
                "SFSafeSymbols",
            ]
        ),
    ]
)
