// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NEWKSPlayer",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NEWKSPlayer",
            targets: ["NEWKSPlayer"]),
    ],
    dependencies: [.package(url: "https://github.com/kingslay/FFmpegKit.git", from: Version("6.1.0"))],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NEWKSPlayer",
            dependencies: ["FFmpegKit"]
        ),
    ]
)
