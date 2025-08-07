// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CjxlKu",
    platforms: [
      .macOS(.v11),
      .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CjxlKu",
            targets: ["CjxlKu"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CjxlKu",
            dependencies: [
              .target(name: "libcjxlx"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "libcjxlx",
            url: "https://github.com/mgenware/cjxl-ku-darwin/releases/download/0.11.1-binary/libcjxlx.xcframework.zip",
            checksum: "d116cf72dd93c9bbaf1d531d696353fee0f4e3c8bc00950b408595694c921a16"
        ),
        // .binaryTarget(
        //     name: "libcjxlx",
        //     path: "./.bin/libcjxlx.xcframework"
        // ),
    ],
    cLanguageStandard: .c99,
    cxxLanguageStandard: .cxx20
)
