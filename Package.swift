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
        .package(url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.8/CloudXMetaAdapter.xcframework.zip",
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.8/CloudXMetaAdapter.xcframework.zip",
            checksum: "2ba81d8f1b41ba03a42f2bec1f82d1e90a82ff1a6a6d9ee19005e7afb7c478b2"
        )
    ]
)
