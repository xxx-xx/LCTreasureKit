#
# Be sure to run `pod lib lint LCTreasureKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LCTreasureKit'
  s.version          = '1.0.0'
  s.summary          = 'Treasure chest for iOS developers.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "This is a collection of commonly used tool classes to help developers develop better."

  s.homepage         = 'https://github.com/xxx-xx/LCTreasureKit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Xu Lichao' => 'hzxx_xlc@163.com' }
  s.source           = { :git => 'https://github.com/xxx-xx/LCTreasureKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'LCTreasureKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LCTreasureKit' => ['LCTreasureKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.subspec 'SystemClassCategory' do |category|
    category.source_files = 'LCTreasureKit/Classes/SystemClassCategory/**/*'
  end
  
end
