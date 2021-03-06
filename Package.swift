import PackageDescription

let package = Package(
    name: "BlueZ",
    dependencies: [
        .Package(url: "https://github.com/PureSwift/CBlueZ.git", majorVersion: 1),
        .Package(url: "https://github.com/PureSwift/SwiftFoundation.git", majorVersion: 1),
    ],
    targets: [
        Target(
            name: "UnitTests",
            dependencies: [.Target(name: "BlueZ")]),
        Target(
            name: "BlueZ")
    ]
)