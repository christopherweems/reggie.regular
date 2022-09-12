// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "reggie.regular",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "reggie.regular",
            targets: ["reggie.regular"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/christopherweems/unstandard.git", branch: "main"),
        
    ],
    targets: [
        .target(
            name: "reggie.regular",
            dependencies: [
                .product(name: "unstandard", package: "unstandard"),
            ]),
        
        .testTarget(
            name: "reggie.regularTests",
            dependencies: ["reggie.regular"]),
        
    ]
)
