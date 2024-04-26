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
      name: "MLImage",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/MLImage.xcframework.zip",
      checksum: "41f17227837581a8091623cce710959092c6d9f5950c7d0b8fcb997b1e66f324"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/MLKitBarcodeScanning.xcframework.zip",
      checksum: "8889146e7e08d8ccb2edc5c1d6b7a5d3f9cde6919516d56b9cf410bb2914d775"),
    .binaryTarget(
      name: "MLKitCommon",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/MLKitCommon.xcframework.zip",
      checksum: "3e586d0d3c6365c163be7a14fbd6d441fffcd4c695274ecab8f03fc9bfc3df9c"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/MLKitFaceDetection.xcframework.zip",
      checksum: "5e55fecbe31321d40112b3d07f79a775acfabb7075ae960d061f52f072f2b580"),
    .binaryTarget(
      name: "MLKitVision",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/MLKitVision.xcframework.zip",
      checksum: "12c8ddb377fe0991300842c8af393a2f6ba3cd9cff60ad392a8d7e6af265aadb"),
    .binaryTarget(
      name: "GoogleToolboxForMac",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/GoogleToolboxForMac.xcframework.zip",
      checksum: "f9740ddd8fc5ea0b5860aceec57391d13ee206741e1fe8740a5a7a70e8dac372"),
    .binaryTarget(
      name: "GoogleUtilitiesComponents",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/5.0.0/GoogleUtilitiesComponents.xcframework.zip",
      checksum: "2971ed8237c591e06a95da630f538380119f708ca73099efce5628ae4c513a66"),
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
