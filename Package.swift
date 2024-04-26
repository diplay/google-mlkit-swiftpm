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
      checksum: "d4ac7a32b036e379eb6914bf18e0a8b2dc5ee2df1b47e339b4b8991b2fe69b4d"),
    .binaryTarget(
      name: "GoogleUtilitiesComponents",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/GoogleUtilitiesComponents.xcframework.zip",
      checksum: "877e1236404b313fa7fb17c3c24babe963005a8e501b5c3bf6f5aa03da5a9090"),
    .binaryTarget(
      name: "MLImage",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLImage.xcframework.zip",
      checksum: "91bdd3914a5cc23d40dbe9aaf5f609f571a61ce0ba0ef645defed39d0d62f347"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitBarcodeScanning.xcframework.zip",
      checksum: "66f5f3e7b3207862d7ee1c5dd39c7869b049820bcccf6ae3ccf9eb7ba8ecb7d7"),
    .binaryTarget(
      name: "MLKitCommon",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitCommon.xcframework.zip",
      checksum: "59b16a8e63d0cf6dc4132c2b3bd061ae89fd0a98792d433358dadf6934a320b0"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitFaceDetection.xcframework.zip",
      checksum: "648361f92566f5cb26e95d111e1b4c8643f2192e03d10f66059ebb36d041317d"),
    .binaryTarget(
      name: "MLKitVision",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0-ios14/MLKitVision.xcframework.zip",
      checksum: "893951770b201e2d78bf14e889bc796fb6bbcda791d0692604b559658400ac38"),
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
