// swift-tools-version: 5.9
import PackageDescription

// let count = 800 // no crash
let count = 900 // crash

let targetsNames = (1...count).map { "Pkg1Target\($0)" }

let targets = targetsNames.map { Target.target(name: $0) }

let package = Package(
    name: "Pkg1TargetLibrary",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "Pkg1TargetLibrary", targets: targets.map(\.name)),
    ],
    targets: targets
)
