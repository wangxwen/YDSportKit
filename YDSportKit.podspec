#
#  Be sure to run `pod spec lint YDSportKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "YDSportKit"
  s.version      = "1.0.7"
  s.summary      = 'YDSportKit.'

  s.homepage     = 'https://github.com/wangxwen/YDSportKit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'wangxuewen' => 'wangxuewen@51yund.com' }
  s.source       = { :git => "https://github.com/wangxwen/YDSportKit.git", :tag => "#{s.version}" }
  # s.description  = 'provided by yodo.'

  # s.source_files  = 'YDSportKit'
  # s.public_header_files = 'YDSportKit.framework/Headers/*.h'

  s.frameworks = 'CoreFoundation', 'CoreGraphics', 'Foundation', 'ImageIO', 'MobileCoreServices', 'Security', 'QuartzCore', 'SystemConfiguration', 'UIKit'
  s.vendored_frameworks = 'YDSportKit/YDSportKit.framework'
  s.resources    = 'YDSportKit/YDSportKit.bundle'
  s.libraries = 'c++'
  s.platform = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  s.dependency 'AFNetworking'
  s.dependency 'Masonry'
  s.dependency 'DateTools'
  s.dependency 'FMDB'
  s.dependency 'Reachability'
  s.dependency 'MBProgressHUD'
  s.dependency 'SVProgressHUD'
  s.dependency 'MMPopupView'
  s.dependency 'UICountingLabel'
  s.dependency 'SDWebImage'
  # s.dependency 'SDWebImage/WebP'
  s.dependency 'YYDispatchQueuePool'
  s.dependency 'YYCache'
  s.dependency 'CocoaLumberjack'
  s.dependency 'AMap3DMap'
  s.dependency 'YCMatrix'

end
