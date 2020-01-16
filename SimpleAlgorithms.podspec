Pod::Spec.new do |spec|

  spec.name         = "SimpleAlgorithms"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of SimpleAlgorithms."
  spec.description  = "Description"
  spec.homepage     = "http://EXAMPLE/SimpleAlgorithms"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "Ziomek" => "kamsebgoralski@gmail.com" }
  # Or just: spec.author    = "Ziomek"
  # spec.authors            = { "Ziomek" => "kamsebgoralski@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/Ziomek"
  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  spec.source       = { :git => "http://EXAMPLE/SimpleAlgorithms.git", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"
  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"
  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"
  # spec.requires_arc = true
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
