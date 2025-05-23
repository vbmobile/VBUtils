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
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBUtils/VBUtils-2.0.0.zip",
            checksum: "204a74aba77547ba71ea4b4a408e4048c9b5c8362d399ae17e35803b5f0599d4"
        ),
        .binaryTarget(
            name: "JWTDecode",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/JWTDecode/JWTDecode-2.6.3.zip",
            checksum: "5642db1982cfd167214a6e1c579fa089bf39f8dda63afefbb47f2fcb303b8ce2"
        ),
        .target(
            name: "VBUtilsWrapper",
            dependencies: [
                .target(name: "VBUtils"),
                .target(name: "JWTDecode"),
                .product(name: "MatomoTracker", package: "matomo-sdk-ios"),
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
