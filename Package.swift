// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OhMyGif",
    platforms: [
           .iOS(.v13)
    ],
    products: [
        .library(
            name: "OhMyGif",
            targets: ["OhMyGif"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OhMyGif",
            dependencies: []),
    ]
)
