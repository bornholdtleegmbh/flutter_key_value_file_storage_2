// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "flutter_key_value_file_storage",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "flutter-key-value-file-storage", targets: ["flutter_key_value_file_storage"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_key_value_file_storage",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
