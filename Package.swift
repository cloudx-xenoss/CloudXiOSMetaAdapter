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
        .package(url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.11/CloudXMetaAdapter.xcframework.zip",
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.11/CloudXMetaAdapter.xcframework.zip",
            checksum: "4baa498c53a8ac7daaf415b2ed335553c26ea23f04e6cbdf72f725c4f5005cc4"
        )
    ]
)
