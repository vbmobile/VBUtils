// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VBUtils",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VBUtils",
            targets: ["VBUtilsWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vbmobile/matomo-sdk-ios", .exact("7.7.0")),
    ],

    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "VBUtils",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBUtils/VBUtils-2.0.2.zip",
            checksum: "691c5c8ba7747d99c43e9c68d8b2d4142554e8aca9ea289c5e7c97a49988c1ae"
        ),
        .target(
            name: "VBUtilsWrapper",
            dependencies: [
                .target(name: "VBUtils"),
                .product(name: "MatomoTracker", package: "matomo-sdk-ios"),
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
