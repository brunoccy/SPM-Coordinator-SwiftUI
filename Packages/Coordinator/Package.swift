// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Coordinator",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Coordinator",
            targets: ["Coordinator"]),
    ],
    dependencies: [
        .package(path: "../Commons"),
        .package(path: "../HomePage"),
        .package(path: "../FirstFeature"),
        .package(path: "../SecondFeature"),
    ],
    targets: [
        .target(
            name: "Coordinator",
            dependencies: ["Commons", "HomePage", "FirstFeature", "SecondFeature"]),
        .testTarget(
            name: "CoordinatorTests",
            dependencies: ["Coordinator"]),
    ]
)
