// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CloudXMetaAdapter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CloudXMetaAdapter",
            targets: ["CloudXMetaAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/cloudx-xenoss/CloudXCoreiOS.git", from: "1.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/1.0.10/CloudXMetaAdapter.xcframework.zip",
            checksum: "6f795515fd1388ab849316203a8200e5995898a2c0d71432f164c38fb9394f40"
        )
    ]
)
