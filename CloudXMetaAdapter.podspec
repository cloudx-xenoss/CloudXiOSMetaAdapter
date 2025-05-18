Pod::Spec.new do |s|
  s.name = 'CloudXMetaAdapter'
  s.version = '1.1.2'
  s.summary = 'Mobile SDK for CloudX iOS Meta Adapter'
  s.description = 'iOS adapter add-on to the CloudX iOS SDK for a Meta bidder'
  s.homepage = 'https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter'
  s.license = { :type => 'Proprietary', :text => 'Copyright 2024 CloudX, Inc. All rights reserved.' }
  s.authors = { 'CloudX' => 'support@cloudx.com' }
  s.platform = :ios, '14.0'
  s.swift_versions = ['5.5', '5.6', '5.7', '5.8', '5.9', '5.10', '6.0']
  s.module_name = 'CloudXMetaAdapter'
  s.source = {
    :http => "https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases/download/#{s.version}/CloudXMetaAdapter-Static.xcframework.zip",
    :type => "zip",
    :flatten => false
  }
  s.vendored_frameworks = 'CloudXMetaAdapter-Static.xcframework'
  s.preserve_paths = 'CloudXMetaAdapter-Static.xcframework'
  s.dependency 'CloudXCore', '>= 1.0.0'
  s.dependency 'FBAudienceNetwork', '~> 6.16.0'
  s.frameworks = [
    'AVFoundation', 'AVKit', 'AdSupport', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'Foundation', 'StoreKit', 'SystemConfiguration', 'UIKit'
  ]
  s.weak_frameworks = [
    'Combine', 'CryptoKit', 'SafariServices', 'SwiftUI', 'WebKit', 'FBAudienceNetwork'
  ]
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC'
  }
end 