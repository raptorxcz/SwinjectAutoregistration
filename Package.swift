// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwinjectAutoregistration",
    products: [
        .library(
            name: "SwinjectAutoregistration",
            targets: ["SwinjectAutoregistration"]),
        .library(
            name: "SwinjectAutoregistration-Dynamic",
            type: .dynamic,
            targets: ["SwinjectAutoregistration-Dynamic"])
        
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.6.0"),
    ],
    targets: [
        .target(
            name: "SwinjectAutoregistration",
            dependencies: [
                "Swinject",
            ],
            path: "Sources"),
        .target(
            name: "SwinjectAutoregistration-Dynamic",
            dependencies: [
                "Swinject-Dynamic",
            ],
            path: "Sources"),
    ]
)
