// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BoxoSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "BoxoSDK", targets: ["BoxoSDK", "BoxoSDKDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-ios.git", exact: "4.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "BoxoSDK",
            path: "BoxoSDK.xcframework"
        ),
        .target(
            name: "BoxoSDKDependencies",
            dependencies: [
                .product(name: "Lottie", package: "lottie-ios")
            ],
            path: "Sources/BoxoSDKDependencies"
        )
    ]
)
