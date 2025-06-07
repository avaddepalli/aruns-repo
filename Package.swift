// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "BubbleGame",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BubbleGame",
            targets: ["BubbleGame"]),
    ],
    targets: [
        .target(
            name: "BubbleGame",
            path: ".",
            exclude: ["Tests"],
            sources: ["GameScene.swift", "GameViewController.swift"],
            resources: [
                .copy("Main.storyboard")
            ]
        ),
        .testTarget(
            name: "BubbleGameTests",
            dependencies: ["BubbleGame"],
            path: "Tests"
        )
    ]
)
