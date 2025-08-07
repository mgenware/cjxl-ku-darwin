# cjxl-ku-darwin

cjxl (libjxl encoder) on iOS / macOS.

- libjxl 0.11.1
- Platforms: iOS 14+, macOS 11+.
- Archs: ios-arm64, ios-arm64-simulator, macos-arm64_x86_64

| iOS / macOS                                                  | Android                                                        |
|--------------------------------------------------------------|----------------------------------------------------------------|
| [cjxl-ku-darwin](https://github.com/mgenware/cjxl-ku-darwin) | [cjxl-ku-android](https://github.com/mgenware/cjxl-ku-android) |

## Installation

Swift Package Manager: `https://github.com/mgenware/cjxl-ku-darwin`

## Usage

```swift
import CjxlKu

let retCode = CjxlKu.run(arguments: [
  /** cjxl arguments */
  inputFile,
  outputFile,
])
```
