#
# Be sure to run `pod lib lint HRBocSignContract.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HRBocSignContract'
  s.version          = '2.1.7.1' #成绩gitlab上的2.1.11，是其下一个版本
  s.summary          = '远程签约SDK'

  s.description      = <<-DESC
                远程签约SDK，用来集成APP
                       DESC

  s.homepage         = 'https://gitee.com/bizhanlu/HRBocSignContract'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bizhanlu' => 'bizhanlu@hrfax.cn' }
  s.source           = { :git => 'https://gitee.com/bizhanlu/HRBocSignContract.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.vendored_frameworks = 'Frameworks/*'
  s.resources = 'Resources/*'

  s.frameworks = 'UIKit', 'MapKit','SystemConfiguration','CoreMotion','CoreMedia','AVFoundation'

  s.dependency 'AFNetworking'
  s.dependency 'MJRefresh'
  s.dependency 'SDWebImage'
  s.dependency 'MBProgressHUD'
  s.dependency 'IQKeyboardManager'
  s.dependency 'MJExtension'
  s.dependency 'NIMSDK'
  s.dependency 'UITableView+FDTemplateLayoutCell'
  s.dependency 'Toast'
  s.dependency 'Masonry'
  s.dependency 'FontAwesome'
  s.dependency 'WPAttributedMarkup'
  s.dependency 'eHRFaceSDK'
  s.dependency 'eCameraLib'
end
