// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirstFeature",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FirstFeature",
            targets: ["FirstFeature"]),
    ],
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Commons"),
    ],
    targets: [
        .target(
            name: "FirstFeature",
            dependencies: ["DesignSystem", "Commons"]),
        .testTarget(
            name: "FirstFeatureTests",
            dependencies: ["FirstFeature"]),
    ]
)
