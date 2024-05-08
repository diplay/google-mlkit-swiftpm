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
    .package(url: "https://github.com/google/GoogleUtilities.git", exact: "7.13.2"),
    .package(url: "https://github.com/google/gtm-session-fetcher.git", exact: "3.4.1"),
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
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/MLImage.xcframework.zip",
      checksum: "16830cb10bb6a16b7bcdb2ca5e0c0188c52626dc9da674ec7794dcb394e515d0"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/MLKitBarcodeScanning.xcframework.zip",
      checksum: "b3ef7297e20c2c100ca8bc61cf1fd32f2b68571cf6505ea9bd5194913c615db2"),
    .binaryTarget(
      name: "MLKitCommon",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/MLKitCommon.xcframework.zip",
      checksum: "adbd85cd4f5c90952b603b13415fd1fae1db4452ceb4a0daf3934acd5d19b589"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/MLKitFaceDetection.xcframework.zip",
      checksum: "6f21534c73bd5a9fa0987869787a0e0f77db46115df1921c54de4bf5b8b80016"),
    .binaryTarget(
      name: "MLKitVision",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/MLKitVision.xcframework.zip",
      checksum: "a87cdb74c9bb30a500cb54ca84f261535653fe7f8eafd0fc037d7b1ef70521c6"),
    .binaryTarget(
      name: "GoogleToolboxForMac",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/GoogleToolboxForMac.xcframework.zip",
      checksum: "e97a6cf98bfeb31453849d7f41f016da46ffd49e16c1f91b66099f3e43bea7b3"),
    .binaryTarget(
      name: "GoogleUtilitiesComponents",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.0/GoogleUtilitiesComponents.xcframework.zip",
      checksum: "ae8d33e1ae32b6a5e35bafc2c0c56d811bf44c496f3a9d30b2112a450c324214"),
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
