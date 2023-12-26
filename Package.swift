// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnBoardingKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OnBoardingKit",
            targets: ["OnBoardingKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "OnBoardingKit",
            dependencies: ["SnapKit"]),
        .testTarget(
            name: "OnBoardingKitTests",
            dependencies: ["OnBoardingKit"]),
    ]
)
