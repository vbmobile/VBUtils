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
            targets: ["AMAUtils"]),
    ],
    targets: [
        .binaryTarget(
            name: "AMAUtils",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAUtils/AMAUtils-3.0.1.zip",
            checksum: "60e76d8cedd4260c689cd7028a05a6da7cfb4af5836cb11e67769ce1f2e59e16"
        )
    ],
    swiftLanguageModes: [.v5]
)
