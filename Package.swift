// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CommonCrypto",
	products: [
		.library(
			name: "CommonCrypto",
			targets: ["CommonCrypto"]
		),
	],
	dependencies: [
		// Dependencies declare other packages that this package depends on.
	],
	targets: [
		.systemLibrary(
			name: "CLibrary",
			pkgConfig: "clibrary",
			providers: [
				.brew(["clibrary"]),
				.apt(["clibrary-dev"])
			]
		),
		.target(
			name: "CommonCrypto",
			dependencies: [.target(name: "CLibrary") ]
		),
	]
)
