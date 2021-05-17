// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SecondFeature",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SecondFeature",
            targets: ["SecondFeature"]),
    ],
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Commons"),
    ],
    targets: [
        .target(
            name: "SecondFeature",
            dependencies: ["DesignSystem", "Commons"]),
        .testTarget(
            name: "SecondFeatureTests",
            dependencies: ["SecondFeature"]),
    ]
)
