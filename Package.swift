// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "danger-deps",
    products: [
        .library(
            name: "DangerDeps",
            type: .dynamic,
            targets: ["DangerDependencies"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/danger/swift.git",
            from: "3.10.1"),
        .package(
            url: "https://github.com/f-meloni/danger-swift-coverage.git",
            from: "1.2.1"),
        .package(
            url: "https://github.com/f-meloni/danger-swift-xcodesummary",
            from: "1.2.1"),
        .package(
            url: "https://github.com/leoniralves/DangerSwiftPeriphery.git",
            .branch("issue-01")),
    ],
    targets: [
        .target(
            name: "DangerDependencies",
            dependencies: [
                .product(name: "Danger", package: "swift"),
                .product(name: "DangerSwiftCoverage", package: "danger-swift-coverage"),
                .product(name: "DangerXCodeSummary", package: "danger-swift-xcodesummary"),
                .product(name: "DangerSwiftPeriphery", package: "DangerSwiftPeriphery")
            ],
            path: "DangerDeps"),
    ]
)