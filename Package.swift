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
        .package(url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.25/CloudXMetaAdapter.xcframework.zip",
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.25/CloudXMetaAdapter.xcframework.zip",
            checksum: "1de4dffd27c735d59de48f2c8205cf209e2accc7ecf0cadcf70f14c9b60c068c"
        )
    ]
)
