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
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download//GRDB.xcframework.zip",
            checksum: "e6b34699fa82383463c562c19ed6a78a2487f1ba3b9a0d892a5fa0ec6b29e19e"
        ),
        .target(name: "_GRDBDummy")
    ]
)
