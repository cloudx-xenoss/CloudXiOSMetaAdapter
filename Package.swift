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
        .package(url: "https://github.com/cloudx-xenoss/CloudXCoreiOS.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/1.0.0/CloudXMetaAdapter.xcframework.zip",
            checksum: "db38ec5e7d8f08d749c7271b62353faf2bffe5a4e7e9bbb3d902f1f9ab375768"
        )
    ]
)
