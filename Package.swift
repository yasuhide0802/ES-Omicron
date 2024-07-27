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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.4.1/GRDB.xcframework.zip",
            checksum: "23fbe17f552a2a1f893ae78aa823fbb38cc851bc5a4597309a5e83016460260d"
        ),
        .target(name: "_GRDBDummy")
    ]
)
