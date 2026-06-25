// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "AMAUtils",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMAUtils",
            targets: ["AMAUtilsWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", exact: "7.7.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AMAUtils",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAUtils/AMAUtils-3.0.1.zip",
            checksum: "60e76d8cedd4260c689cd7028a05a6da7cfb4af5836cb11e67769ce1f2e59e16"
        ),
        .target(
            name: "AMAUtilsWrapper",
            dependencies: [
                .target(name: "AMAUtils"),
                .product(name: "MatomoTracker", package: "matomo-sdk-ios"),
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageModes: [.v5]
)
