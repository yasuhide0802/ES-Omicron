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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.2.0/GRDB.xcframework.zip",
            checksum: "3733b6b2111e20df30336ab27c579ae6502ef6a498c8418fa969bcd700cfd4cb"
        ),
        .target(name: "_GRDBDummy")
    ]
)
