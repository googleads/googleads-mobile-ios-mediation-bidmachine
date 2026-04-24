// swift-tools-version:5.6

// Copyright 2025 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "BidMachineAdapter",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "BidMachineAdapterTarget",
      targets: ["BidMachineAdapterTarget"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/bidmachine/BidMachine-SPM.git",
      exact: "3.6.1"
    ),
    .package(
      url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
      from: "13.0.0"
    )
  ],
  targets: [
    .target(
      name: "BidMachineAdapterTarget",
      dependencies: [
        .target(name: "BidMachineAdapter"),
        .product(name: "BidMachine", package: "BidMachine-SPM"),
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
      ],
      path: "BidMachineAdapterTarget"
    ),
    .binaryTarget(
      name: "BidMachineAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/bidmachine/BidMachineAdapter-3.6.1.0.zip",
      checksum: "08fb5a40d188eaa7ddaf7e5353325cbae0f4fddf4d13c87faf5c0d9bf7cad3bf"
    )
  ]
)
