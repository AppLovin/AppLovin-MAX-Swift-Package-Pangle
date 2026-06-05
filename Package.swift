// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.
//
//  NOTE: The upstream Pangle SDK SPM repository (bytedance/AdsGlobalPackage) only
//  publishes tags up to 7.9.1-release.1, so this package pins the adapter to the
//  matching 7.9.1.1.0 release. The CocoaPods adapter has advanced to 8.1.0.7.0
//  but cannot be distributed via SPM until ByteDance ships an 8.x tag upstream.

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
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "7.9.1-release.1")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bytedance-adapter/AppLovinMediationByteDanceAdapter-7.9.1.1.0.zip",
            checksum: "4f4476194afd61d47196a3538a14cf55bb4a0f2300945ff110c5222970794fdd"
        )
    ]
)
