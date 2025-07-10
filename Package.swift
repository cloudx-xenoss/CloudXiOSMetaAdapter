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
        .package(url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.10/CloudXMetaAdapter.xcframework.zip",
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.10/CloudXMetaAdapter.xcframework.zip",
            checksum: "15b582344a6eb0eb45865b620befafb1dc101323f6e558e62e3f610ca320c138"
        )
    ]
)
