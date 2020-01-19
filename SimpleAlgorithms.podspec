Pod::Spec.new do |spec|

  spec.name         = "SimpleAlgorithms"
  spec.version      = "0.1.0"
  spec.summary      = "Algorithms"
  spec.description  = "Simple linear search and sorting algorithms"
  spec.homepage     = "https://github.com/kamsebgoralski/SimpleAlgorithms"
  spec.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  spec.author       = { "Kamil Góralski" => "kamsebgoralski@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target   = '8.0'
  spec.swift_versions = ['4.0', '4.2', '5.0']
  spec.source       = { :git => "https://github.com/kamsebgoralski/SimpleAlgorithms.git", :tag => "0.1.0" }
  spec.source_files  = "Sources/*.swift"
  spec.requires_arc = true

  spec.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/SimpleAlgorithmsTests/*.swift'
    #test_spec.dependency 'OCMock' # This dependency will only be linked with your tests.
    #test_spec.requires_app_host = true
  end

end
