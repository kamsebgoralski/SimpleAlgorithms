Pod::Spec.new do |spec|

  spec.name         = "SimpleAlgorithms"
  spec.version      = "0.0.4"
  spec.summary      = "Algorithms"
  spec.description  = "Simple linear search and sorting algorithms"
  spec.homepage     = "https://github.com/kamsebgoralski/SimpleAlgorithms"
  spec.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  spec.author       = { "Kamil Góralski" => "kamsebgoralski@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target   = '10.0'
  spec.swift_versions = ['4.0', '4.2', '5.0']
  spec.source       = { :git => "https://github.com/kamsebgoralski/SimpleAlgorithms.git", :tag => "v0.0.4" }
  spec.source_files  = "SimpleAlgorithms/Sources/*.swift"
  spec.exclude_files = 'SimpleAlgorithms/**/*.plist'
  spec.requires_arc = true

  spec.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'SimpleAlgorithmsTests/*.swift'
  end

end
