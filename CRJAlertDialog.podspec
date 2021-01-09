#
# Be sure to run `pod lib lint CRJAlertDialog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CRJAlertDialog'
  s.version          = '0.1.1001'
  s.summary          = 'A short description of CRJAlertDialog.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/CelestialRotatingJade/CRJAlertDialog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhuyuhui434@gmail.com' => 'zhuyuhui434@gmail.com' }
  s.source           = { :git => 'https://github.com/CelestialRotatingJade/CRJAlertDialog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'CRJAlertDialog/Classes/**/*'
  s.public_header_files = 'CRJAlertDialog/**/CRJAlertDialog.h'
  s.source_files = 'CRJAlertDialog/**/CRJAlertDialog.h'

    
  s.subspec 'BaseDialog' do |ss|
    ss.source_files = 'CRJAlertDialog/**/BaseDialog/*.{h,m}'
    ss.dependency 'CRJCategories'
    ss.dependency 'Masonry'
    ss.dependency 'CRJTransitionAnimator'
  end
  
  s.subspec 'DateDialog' do |ss|
    ss.source_files = 'CRJAlertDialog/**/DateDialog/*.{h,m}'
    ss.dependency 'CRJAlertDialog/BaseDialog'
  end
  
  s.subspec 'SingleChoiceDialog' do |ss|
    ss.source_files = 'CRJAlertDialog/**/SingleChoiceDialog/*.{h,m}'
    ss.dependency 'CRJAlertDialog/BaseDialog'
  end
  
  s.subspec 'MultiChoiceDialog' do |ss|
    ss.source_files = 'CRJAlertDialog/**/MultiChoiceDialog/*.{h,m}'
    ss.dependency 'CRJAlertDialog/BaseDialog'
  end
  

  
   s.resource_bundles = {
     'CRJAlertDialog' => ['CRJAlertDialog/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
