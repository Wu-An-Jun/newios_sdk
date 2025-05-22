Pod::Spec.new do |spec|  
  spec.platform = :ios, '12.0'  
  spec.name         = "newios_sdk"  
  spec.version      = "0.0.1"  
  spec.summary      = "newios_sdk."  
  spec.description  = "test newios_sdk I wish win"  
  
  spec.homepage     = "https://github.com/Wu-An-Jun/newios_sdk"  
  spec.license = { :type => "MIT", :file => "LICENSE" }  
  spec.author       = { "Lzc" => "2489754250@qq.com" }  
  
  spec.source = { :git => "https://github.com/Wu-An-Jun/newios_sdk.git", :tag => "#{spec.version}" }  
  
  # 只保留核心文件  
  spec.source_files  = "Classes/Core/**/*.{h,m}"  
  
  spec.static_framework = true  
  spec.frameworks = "Foundation", "UIKit", "AdSupport"  
  spec.requires_arc = true  
  
  # 移除所有第三方依赖，先确保基础功能能通过验证  
  # spec.dependency "BaiduMobAdSDK"  # spec.dependency "Ads-CN"  # spec.dependency "GDTMobSDK"  # spec.dependency "KSAdSDK"  
  # 为不同架构添加设置  
  spec.pod_target_xcconfig = {  
    'DEFINES_MODULE' => 'YES',  
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',  
    'OTHER_LDFLAGS' => '-ObjC'  
  }  
end