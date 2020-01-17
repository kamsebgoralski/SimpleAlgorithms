# SimpleAlgorithms 

## Description
SimpleAlgorithms is a lightweigh Swift freamowork that contains basic algorithms

## Installation

### Add source

Simply add [Algorithms.swift](https://github.com/kamsebgoralski/SimpleAlgorithms/blob/master/Sources/Algorithms.swift) file into your Xcode project.

### Installing with CocoaPods

If you are using CocoaPods add this text to your Podfile and run `pod install`.

```bash
platform :ios, '8.0'
use_frameworks!

pod 'SimpleAlgorithms'
```

### Installing with Carthage

Alternatively, add `github "kamsebgoralski/SimpleAlgorithms"` to your Cartfile and run `carthage update`.

## Usage

Add `import SimpleAlgorithms` to your source code unless you used the file setup method.

```Swift
let index = Algorithms.linearSearch(of: "hello world", at: ["value1", "value", "hello world"])
```

## Available algorithms

* linearSearch
* betterLinearSearch
* linearSearchWithSentinel

## Feedback

If you notice any issue, got stuck or just want to chat feel free to create an issue. I will be happy to help you.

## License

SimpleAlgorithms is released under the [MIT License](LICENSE).
