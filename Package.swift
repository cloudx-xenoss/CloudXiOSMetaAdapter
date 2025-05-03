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
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/1.0.9/CloudXMetaAdapter.xcframework.zip",
            checksum: "8017fe67021457e65cc976cceb3e56fb02bb96235b8089283c5c766b8c4e15d6"
        )
    ]
)
