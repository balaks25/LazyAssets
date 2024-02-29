// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LazyAssets",
    products: [
        .library(
            name: "LazyAssets",
            targets: ["LazyAssets"]),
    ],
    targets: [
        .target(
            name: "LazyAssets",
            dependencies: [],
            path: "CommonAssetsPackage"),
    ]
)
