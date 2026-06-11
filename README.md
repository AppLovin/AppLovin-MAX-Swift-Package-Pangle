# AppLovin MAX - iOS Pangle (ByteDance) Mediation Adapter

The AppLovin MAX ByteDance / Pangle mediation adapter for iOS, distributed via Swift Package Manager.

> **Versioning note**
>
> The upstream Pangle SDK SPM repository ([`bytedance/AdsGlobalPackage`](https://github.com/bytedance/AdsGlobalPackage)) uses a `X.Y.Z-release.N` tag scheme and may lag behind the latest certified adapter on CocoaPods. This package pins to the latest upstream-available SDK version. For the absolute latest Pangle adapter, use **CocoaPods**: `pod 'AppLovinMediationByteDanceAdapter'`

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
3. Select **Exact Version** and enter `709010100.0.0` (adapter version `7.9.1.1.0`).
4. Add the `AppLovinMediationByteDanceAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Pangle.git",
        exact: "709010100.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`AdsGlobalPackage`](https://github.com/bytedance/AdsGlobalPackage) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.axon.ai/en/max/ios/overview/integration)
