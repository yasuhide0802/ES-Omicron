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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.4.2/GRDB.xcframework.zip",
            checksum: "5380265b0e70f0ed28eb1e12640eb6cde5e4bfd39893c86b31f8d17126887174"
        ),
        .target(name: "_GRDBDummy")
    ]
)
