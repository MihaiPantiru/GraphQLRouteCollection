// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporGraphQL",
    products: [
        .library(
            name: "VaporGraphQL",
            targets: ["VaporGraphQL"]),
        .library(
            name: "StarWars",
            targets: ["StarWars"]),
        .executable(
            name: "Example",
            targets: ["Example"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .exact("3.1.0")),
        //        .package(url: "https://github.com/GraphQLSwift/GraphQL.git", from: "0.0.0"),
        .package(url: "https://github.com/MihaiPantiru/Graphiti.git", from: "0.7.1"),
        ],
    targets: [
        .target(
            name: "VaporGraphQL",
            dependencies: ["Vapor", "Graphiti"]),
        .target(
            name: "StarWars",
            dependencies: ["Vapor", "Graphiti"]),
        .target(
            name: "Example",
            dependencies: ["VaporGraphQL", "StarWars", "Vapor", "Graphiti"]),
        .testTarget(
            name: "VaporGraphQLTests",
            dependencies: ["VaporGraphQL", "StarWars"]),
        ]
)
