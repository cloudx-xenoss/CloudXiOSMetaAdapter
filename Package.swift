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
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/1.0.11/CloudXMetaAdapter.xcframework.zip",
            checksum: "3937e8b0f240c208f0e71bb801261098ef8a60494620470ab63e3d7b12913eb4"
        )
    ]
)
