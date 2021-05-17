// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomePage",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "HomePage",
            targets: ["HomePage"]),
    ],
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Commons"),
    ],
    targets: [
        .target(
            name: "HomePage",
            dependencies: ["DesignSystem", "Commons"]),
        .testTarget(
            name: "HomePageTests",
            dependencies: ["HomePage"]),
    ]
)
