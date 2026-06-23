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
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAUtils/AMAUtils-3.0.0.zip",
            checksum: "57d6f0e44fe7224ec33c32c509e90756020e1928d0c039ddf9058c71cc8e61f7"
        )
    ],
    swiftLanguageModes: [.v5]
)
