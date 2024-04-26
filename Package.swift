// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "GoogleMLKitSwiftPM",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "MLKitBarcodeScanning",
      targets: ["MLKitBarcodeScanning", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitFaceDetection",
      targets: ["MLKitFaceDetection", "MLImage", "MLKitVision", "Common"]),
  ],
  dependencies: [
    .package(url: "https://github.com/google/promises.git", exact: "2.4.0"),
    .package(url: "https://github.com/google/GoogleDataTransport.git", exact: "9.4.0"),
    .package(url: "https://github.com/google/GoogleUtilities.git", exact: "7.13.1"),
    .package(url: "https://github.com/google/gtm-session-fetcher.git", exact: "3.3.2"),
    .package(url: "https://github.com/firebase/nanopb.git", exact: "2.30910.0"),
  ],
  targets: [
    // For debugging
    // .binaryTarget(
    //   name: "MLImage",
    //   path: "GoogleMLKit/MLImage.xcframework"),
    // .binaryTarget(
    //   name: "MLKitBarcodeScanning",
    //   path: "GoogleMLKit/MLKitBarcodeScanning.xcframework"),
    // .binaryTarget(
    //   name: "MLKitCommon",
    //   path: "GoogleMLKit/MLKitCommon.xcframework"),
    // .binaryTarget(
    //   name: "MLKitFaceDetection",
    //   path: "GoogleMLKit/MLKitFaceDetection.xcframework"),
    // .binaryTarget(
    //   name: "MLKitVision",
    //   path: "GoogleMLKit/MLKitVision.xcframework"),
    // .binaryTarget(
    //   name: "GoogleToolboxForMac",
    //   path: "GoogleMLKit/GoogleToolboxForMac.xcframework"),
    // .binaryTarget(
    //   name: "GoogleUtilitiesComponents",
    //   path: "GoogleMLKit/GoogleUtilitiesComponents.xcframework"),

    .binaryTarget(
      name: "GoogleToolboxForMac",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/GoogleToolboxForMac.xcframework.zip",
      checksum: "64d9709bb1737faec045b281e76c8905670c5ae357b46df700e9032de9385d01"),
    .binaryTarget(
      name: "GoogleUtilitiesComponents",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/GoogleUtilitiesComponents.xcframework.zip",
      checksum: "cd267f46d8e7e8b7799816a1d7e3b86e5e78d29cf8b6eda5644d7cd05cef2bb7"),
    .binaryTarget(
      name: "MLImage",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLImage.xcframework.zip",
      checksum: "32632a2c9e0eb5c1bb63f4ed5ef97fc3a80c91d53c62da829f3773ca3258ab08"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitBarcodeScanning.xcframework.zip",
      checksum: "69fa7cdbc226e12487c98acb72f3b5623f79f5d2f5537d7bc3ddfce10f55795c"),
    .binaryTarget(
      name: "MLKitCommon",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitCommon.xcframework.zip",
      checksum: "32513abe224661fb0cd0c65d8f2ce682c0b47ca15c62a96ebb60b461353bd19b"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitFaceDetection.xcframework.zip",
      checksum: "2d2f69e88f109caabf186c5ccfa674b0245bcd0bde002509690ff8307b07a7da"),
    .binaryTarget(
      name: "MLKitVision",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitVision.xcframework.zip",
      checksum: "cb7760131388cc6a44585d6acc1e8a81c69db2e0540992c9b69cceaccf5a8c55"),
    .target(
      name: "Common",
      dependencies: [
        "MLKitCommon",
        "GoogleToolboxForMac",
        "GoogleUtilitiesComponents",
        .product(name: "GULAppDelegateSwizzler", package: "GoogleUtilities"),
        .product(name: "GULEnvironment", package: "GoogleUtilities"),
        .product(name: "GULISASwizzler", package: "GoogleUtilities"),
        .product(name: "GULLogger", package: "GoogleUtilities"),
        .product(name: "GULMethodSwizzler", package: "GoogleUtilities"),
        .product(name: "GULNSData", package: "GoogleUtilities"),
        .product(name: "GULNetwork", package: "GoogleUtilities"),
        .product(name: "GULReachability", package: "GoogleUtilities"),
        .product(name: "GULUserDefaults", package: "GoogleUtilities"),
        .product(name: "GTMSessionFetcher", package: "gtm-session-fetcher"),
        .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),
        .product(name: "nanopb", package: "nanopb"),
        .product(name: "FBLPromises", package: "promises"),
      ]),
  ]
)
