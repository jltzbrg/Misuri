import PackageDescription

let package = Package(
    name: "Misuri",
    platforms: [.iOS(.v15), .macOS(.v10_15)], 
    products: [
        .library(
            name: "Misuri",
            targets: ["Misuri"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Misuri",
            dependencies: []),
        .testTarget(
            name: "MisuriTests",
            dependencies: ["Misuri"]),
    ]
)
