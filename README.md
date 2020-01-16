# SimpleAlgorithms 

## Description
SimpleAlgorithms is a lightweigh Swift freamowork that contains basic algorithms

## Installation

### Installing with CocoaPods

If you are using CocoaPods add this text to your Podfile and run `pod install`.

```bash
platform :ios, '10.0'
use_frameworks!

pod 'SimpleAlgorithms'
```

## Usage

Add `import SimpleAlgorithms` to your source code unless you used the file setup method.

```Swift
let algorithms = Algorithms()
algorithms.linearSearch(of: "hello world", at: ["value1", "value", "hello world"])
```

## Available algorithms

* linearSearch
* betterLinearSearch
* linearSearchWithSentinel

## Feedback

If you notice any issue, got stuck or just want to chat feel free to create an issue. I will be happy to help you.

## License

SimpleAlgorithms is released under the [MIT License](LICENSE).
