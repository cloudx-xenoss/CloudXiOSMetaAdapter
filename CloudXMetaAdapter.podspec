Pod::Spec.new do |s|
  s.name = 'CloudXMetaAdapter'
  s.version = '1.1.0'
  s.summary = 'Meta Adapter for CloudX'
  s.description = 'Meta adapter for CloudX iOS SDK'
  s.homepage = 'https://github.com/cloudx-xenoss/CloudXMetaAdapter'
  s.license = { :type => 'Copyright', :text => 'Copyright 2024 CloudX, Inc. All rights reserved.' }
  s.authors = { 'CloudX' => 'support@cloudx.com' }
  s.platform = :ios, '14.0'
  s.swift_version = '5.9'
  s.module_name = 'CloudXMetaAdapter'
  s.source = {
    :http => "https://github.com/cloudx-xenoss/CloudXMetaAdapter/releases/download/#{s.version}/CloudXMetaAdapter-Static.xcframework.zip",
    :type => "zip",
    :flatten => false
  }
  s.vendored_frameworks = 'CloudXMetaAdapter-Static.xcframework'
  s.dependency 'CloudXCore'
  s.dependency 'FBAudienceNetwork', '6.16.0'
  s.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64',
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO'
  }
  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO'
  }
  s.requires_arc = true
end 