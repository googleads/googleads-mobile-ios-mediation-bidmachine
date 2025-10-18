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
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "BidMachineAdapterTarget",
      targets: ["BidMachineAdapterTarget", "BidMachineSDK"]
    )
  ],
  targets: [
    .target(
      name: "BidMachineAdapterTarget",
      dependencies: [
        .target(name: "BidMachineAdapter")
      ],
      path: "BidMachineAdapterTarget"
    ),
    .binaryTarget(
      name: "BidMachineAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/bidmachine/BidMachineAdapter-3.4.0.1.zip",
      checksum: "7b1b253ebb544655a2747002650a2e4a97f06024f559446011c311c1a8be3d05"
    ),
    .binaryTarget(
      name: "BidMachineSDK",
      url:
        "https://bidmachine-ios.s3.amazonaws.com/BidMachine/3.4.0/pod/BidMachine.zip",
      checksum: "84ed75716e2fb9530a758a614d26d783b92a95e4bda6771ea9e66082573de790"
    ),
  ]
)
