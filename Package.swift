// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModuleBTuist",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ModuleBTuist",
            targets: ["ModuleBTuist"]),
    ],
    dependencies: [
        .package(url: "https://github.com/agustindeleon7/ModuleCTuist.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "ModuleBTuist",
                dependencies: [
                    .product(name: "ModuleCTuist", package: "ModuleCTuist")
                ])
    ]
)
