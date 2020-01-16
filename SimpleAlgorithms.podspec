Pod::Spec.new do |spec|

  spec.name         = "SimpleAlgorithms"
  spec.version      = "0.0.1"
  spec.summary      = "Algorithms"
  spec.description  = "Simple linear search and sorting algorithms"
  spec.homepage     = "https://github.com/kamsebgoralski/SimpleAlgorithms"
  spec.license      = "MIT"
  spec.author       = { "Kamil Góralski" => "kamsebgoralski@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target   = '10.0'
  spec.swift_version           = '4.2'
  spec.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
  spec.source       = { :git => "https://github.com/kamsebgoralski/SimpleAlgorithms.git", :tag => "#spec.version.to_s" }
  spec.source_files = "SimpleAlgorithms/Sources/*.swift"
  spec.requires_arc = true

end
