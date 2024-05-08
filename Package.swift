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
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/MLImage.xcframework.zip",
      checksum: "5d0ac67874f6ec37abd45478cb2559ce571e540185afd35a771e24227d686dd7"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/MLKitBarcodeScanning.xcframework.zip",
      checksum: "ad34bf0b6955fb0de083db17807e2f6de90f3ff258f515e351e5a439580dc019"),
    .binaryTarget(
      name: "MLKitCommon",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/MLKitCommon.xcframework.zip",
      checksum: "e81c619cfd6fbadbf74d3426ecbad593dd76fae3ef2f63e59e60969801182812"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/MLKitFaceDetection.xcframework.zip",
      checksum: "d59e7f436d343206fb59035cc10e9343a5ac274ff479ed34b42345deb22a7486"),
    .binaryTarget(
      name: "MLKitVision",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/MLKitVision.xcframework.zip",
      checksum: "2bbd839952ec32ff5994920e9f4cfc91444f8aeb8a674cceeb4b27c93efa1114"),
    .binaryTarget(
      name: "GoogleToolboxForMac",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/GoogleToolboxForMac.xcframework.zip",
      checksum: "a8024f5c9c4fd35de576f2b875d1a7ca2be3eb686d6f6807da6428d58512e552"),
    .binaryTarget(
      name: "GoogleUtilitiesComponents",
      url:
        "https://github.com/diplay/google-mlkit-swiftpm/releases/download/6.0.1/GoogleUtilitiesComponents.xcframework.zip",
      checksum: "f9295b707e71217673fa81cf055d06cb89c303b09ad78cd2ab10f798a711b47b"),
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
