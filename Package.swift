// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MTTransitions",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "MTTransitions",
                 targets: ["MTTransitions"])
    ],
    dependencies: [
        .package(url: "https://github.com/MetalPetal/MetalPetal", from: "1.24.0")
    ],
    targets: [
        .target(
            name: "MTTransitions",
            dependencies: ["MetalPetal"],
            path: "Source",
            resources: [
                .process("Transitions")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
