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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/0.0.1/GRDB.xcframework.zip",
            checksum: "448ec3b0b60c0484a7efad9bbc915c21e79231ab9a33e39e6f7539fc4e19c1ca"
        ),
        .target(name: "_GRDBDummy")
    ]
)
