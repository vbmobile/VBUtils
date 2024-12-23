// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VBUtils",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VBUtils",
            targets: ["VBUtils"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "VBUtils",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBUtils/VBUtils-1.0.0.zip",
            checksum: "adcd9e82ff8aa18c36f6e6a976b279389beb5b27d0cf1002b4308ce79239fe4c"
        )
    ],
    swiftLanguageVersions: [.v5]
)
