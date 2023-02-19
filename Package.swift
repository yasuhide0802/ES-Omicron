// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.1.0/GRDB.xcframework.zip",
            checksum: "de6813ed04738da36fd78d4f624898150a6c92fe1ec5d7402109e57a87ea3537"
        ),
        .target(name: "_GRDBDummy")
    ]
)
