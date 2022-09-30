#
#  Be sure to run `pod spec lint UPCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "UPCore"
  spec.version      = "0.0.1"
  spec.summary      = "UPCore, UPYUN SDK Lib"
  spec.description  = "UPCore, UPYUN SDK Lib"

  spec.homepage     = "https://www.upyun.com/"


  spec.license      = { :type => 'Commercial', :text => '© 2022 杭州又拍云科技有限公司' }


  spec.author             = { "UPYUN" => "gang.lin@upai.com" }
  spec.platform     = :ios, "11.0"
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '$(inherited) -ObjC', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

  spec.source       = { :git => "https://github.com/upyun/UPCore.git", :tag => "#{spec.version}" }

  spec.frameworks = 'AudioToolbox', 'MediaPlayer'
  spec.libraries = 'c++', 'resolv', 'conv', 'z.1.2.5', 'resolv9'


  spec.vendored_frameworks = ["TuSDKPulseEva.framework", "TuSDKPulseCore.framework", "TuSDKPulse.framework", "TuSDK.framework", "TuSDKFace.framework", "TuSDKVideo.framework", "libyuv.framework"]
 


  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  spec.requires_arc = true
  spec.xcconfig = {
    'VALID_ARCHS' =>  'arm64',
  }

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
