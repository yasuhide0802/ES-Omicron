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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.3.0/GRDB.xcframework.zip",
            checksum: "9692d57b3b7dddfc8c970465492309f8fdd58cf720b21d5a850525b52952acf7"
        ),
        .target(name: "_GRDBDummy")
    ]
)
