// swift-tools-version: 5.10
import PackageDescription

let featureFlags: [SwiftSetting] = [
    .enableExperimentalFeature("StrictConcurrency=complete"),
    .enableUpcomingFeature("ExistentialAny"),
    .enableUpcomingFeature("ConciseMagicFile"),
    .enableUpcomingFeature("ImplicitOpenExistentials"),
]

let package = Package(
    name: "Elementary",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .library(
            name: "Elementary",
            targets: ["Elementary"]
        ),
    ],
    targets: [
        .target(
            name: "Elementary",
            swiftSettings: featureFlags
        ),
        .testTarget(
            name: "ElementaryTests",
            dependencies: ["Elementary"],
            swiftSettings: featureFlags
        ),
    ]
)
