import ProjectDescription

let packages: [Package] = [
    .local(path: "Packages/Pkg1")
]

let project = Project(
    name: "MyApp",
    options: .options(automaticSchemesOptions: .enabled()),
    packages: packages,
    targets: [
        .target(
            name: "MyApp",
            destinations: .iOS,
            product: .app,
            bundleId: "com.example.MyApp",
            deploymentTargets: .iOS("16.0"),
            infoPlist: .extendingDefault(with: ["UILaunchScreen": [:]]),
            sources: ["App/Sources/**"],
            dependencies: [
                .package(product: "Pkg1TargetLibrary"),
            ]
        )
    ]
)
