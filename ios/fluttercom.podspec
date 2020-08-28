#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint fluttercom.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'fluttercom'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin for intercom.'
  s.description      = 'A flutter plugin for intercom.'
  s.homepage         = 'https://j0nscalet.github.io/fluttercom'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jon Scalet' => 'jon.scalet@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Intercom', '~> 7.1.2'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
