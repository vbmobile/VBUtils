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
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAUtils/AMAUtils-3.0.3.zip",
            checksum: "c856e99fedd609b985768281d2f98178583936cf31eda1a7ffe00a71c5182359"
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
