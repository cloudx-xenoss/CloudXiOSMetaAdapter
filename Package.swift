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
        .package(url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.7/CloudXMetaAdapter.xcframework.zip",
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/v1.1.7/CloudXMetaAdapter.xcframework.zip",
            checksum: "7b6fb14bd4805eb268ee4b9faac73e9412b2d64117b9c2471f8ba972772850b4"
        )
    ]
)
