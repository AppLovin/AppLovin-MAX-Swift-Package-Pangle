// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.
//
//  NOTE: The upstream Pangle SDK SPM repository (bytedance/AdsGlobalPackage) uses a
//  X.Y.Z-release.N tag scheme and may lag behind the latest certified adapter. This
//  package pins to the latest upstream-available SDK (8.1.0-release.6 = SDK 8.1.0.6)
//  and the matching adapter binary (8.1.0.6.0).

import PackageDescription

let package = Package(
    name: "AppLovinMediationByteDanceAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationByteDanceAdapter",
            targets: ["AppLovinMediationByteDanceAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.1.1-release.1")
    ],
    targets: [
        .target(
            name: "AppLovinMediationByteDanceAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationByteDanceAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationByteDanceAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bytedance-adapter/AppLovinMediationByteDanceAdapter-8.1.1.1.0.zip",
            checksum: "e6f75cb9857cd01da021c0d78d18bb3b0d7ec453d81feaf25afa299ed994bdef"
        )
    ]
)
