# AppLovin MAX - iOS Pangle (ByteDance) Mediation Adapter

The AppLovin MAX ByteDance / Pangle mediation adapter for iOS, distributed via Swift Package Manager.

> **Versioning note**
> The upstream Pangle SDK SPM repository ([`bytedance/AdsGlobalPackage`](https://github.com/bytedance/AdsGlobalPackage)) currently only tags releases up to `7.9.1-release.1`. This package pins the adapter to the matching `7.9.1.1.0` release. The latest CocoaPods adapter (8.x) cannot be distributed via SPM until ByteDance publishes an 8.x tag upstream.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Pangle
   ```
3. Choose **Up to Next Major Version** and pin to the latest adapter version (currently `7.9.1.1.0`).
4. Add the `AppLovinMediationByteDanceAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Pangle.git",
        from: "7.9.1.1.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`AdsGlobalPackage`](https://github.com/bytedance/AdsGlobalPackage) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://developers.applovin.com/en/max/ios/overview/integration)
