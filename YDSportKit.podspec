#
#  Be sure to run `pod spec lint YDSportKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "YDSportKit"
  s.version      = "1.0.1"
  s.summary      = 'YDSportKit.'

  s.homepage     = 'https://github.com/wangxwen/YDSportKit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'wangxuewen' => 'wangxuewen@51yund.com' }
  s.source       = { :git => "https://github.com/wangxwen/YDSportKit.git", :tag => "#{s.version}" }

  # s.source_files  = 'YDSportKit'
  # s.public_header_files = 'YDSportKit/YDSportKit.framework/Headers/*.h'
  s.framework = 'YDSportKit'
  s.platform = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'Masonry', '~> 1.0.2'
  s.dependency 'DateTools', '~> 2.0.0'
  s.dependency 'FMDB', '~> 2.6'
  s.dependency 'Reachability', '~> 3.2'
  s.dependency 'MBProgressHUD', '~> 1.0.0'
  s.dependency 'SVProgressHUD', '~> 2.1.2'
  s.dependency 'MMPopupView', '~> 1.6'
  s.dependency 'UICountingLabel', '~> 1.4.0'
  s.dependency 'SDWebImage'
  s.dependency 'YYDispatchQueuePool', '~> 1.0'
  s.dependency 'YYCache'
  s.dependency 'CocoaLumberjack', '~> 3.4.1'
  s.dependency 'YCMatrix'


end
