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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/2.1.1/GRDB.xcframework.zip",
            checksum: "bbc36d8e5d1c8fecce738d7218197b6ac63281f6b0936dffb1b923acf53a90ab"
        ),
        .target(name: "_GRDBDummy")
    ]
)
