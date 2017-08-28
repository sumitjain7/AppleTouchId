#
# Be sure to run `pod lib lint appleTouchId.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppleTouchId'
  s.version          = '0.1.0'
  s.summary          = 'AppleTouchId provides you framework for using Apple Touch Id for authentication'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AppleTouchId provides you framework for using Apple Touch Id for authentication. It contains a single class for your touch id and passcode system.
                       DESC

  s.homepage         = 'https://github.com/sumitjain7/AppleTouchId.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SumitJain' => 'sumit.jain7389@gmail.com' }
  s.source           = { :git => 'https://github.com/sumitjain7/AppleTouchId.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'appleTouchId/Classes/**/*'

  # s.resource_bundles = {
  #   'appleTouchId' => ['appleTouchId/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'LocalAuthentication'
  # s.dependency 'AFNetworking', '~> 2.3'
end
