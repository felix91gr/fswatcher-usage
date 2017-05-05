// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "fswatcher-test",
    dependencies: [
    	.Package(url: "https://github.com/felix91gr/FileSystemWatcher.git",
    		majorVersion: 1)
    ]
)



