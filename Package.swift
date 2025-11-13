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
        "https://dl.google.com/googleadmobadssdk/mediation/ios/bidmachine/BidMachineAdapter-3.5.0.0.zip",
      checksum: "8eda8e7c127ffd4d711a8c081aa3327527de8bdc71e910ec62a0c04682d0edde"
    ),
    .binaryTarget(
      name: "BidMachineSDK",
      url:
        "https://bidmachine-ios.s3.amazonaws.com/BidMachine/3.5.0/pod/BidMachine.zip",
      checksum: "eb95538f1a883f519b464af3d068f9071e6e3f46568b921ebb1d2f87478b1977"
    ),
  ]
)
