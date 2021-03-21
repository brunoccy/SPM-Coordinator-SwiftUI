// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Commons",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Commons",
            targets: ["Commons"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "Commons",
            dependencies: []),
        .testTarget(
            name: "CommonsTests",
            dependencies: ["Commons"]),
    ]
)
