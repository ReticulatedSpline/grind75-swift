// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required 
// to build this package.

import PackageDescription

let package = Package(
    name: "grind75",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "grind75"
        ),
        .testTarget(
            name: "grind75Tests",
            dependencies: ["grind75"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
