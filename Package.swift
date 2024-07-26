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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.4.0/GRDB.xcframework.zip",
            checksum: "507f6f6ff2091ec70dca20ca47bbcf47955fbf34d73d05bd3f5fa67c3e7b0753"
        ),
        .target(name: "_GRDBDummy")
    ]
)
