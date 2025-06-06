// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SNShared",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SNShared",
            targets: ["SNShared"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-navigation", from: "2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SNShared",
            dependencies: [
                .product(name: "SwiftNavigation", package: "swift-navigation"),
            ]
        ),

    ]
)
