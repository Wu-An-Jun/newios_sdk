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
  
  # 排除所有问题适配器
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude", 
                      "Classes/Adapters/Sigmob/**/*", 
                      "Classes/Adapters/TANX/**/*",
                      "Classes/Adapters/Mercury/**/*",
                      "Classes/GroMoreBidding/**/*"
  
  spec.static_framework = true
  spec.frameworks = "Foundation", "UIKit", "AdSupport"
  spec.requires_arc = true
  
  # 移除问题依赖
  # spec.dependency "TanxSDK"
  spec.dependency "BaiduMobAdSDK"
  spec.dependency "Ads-CN"
  spec.dependency "GDTMobSDK"
  spec.dependency "KSAdSDK"
  # spec.dependency "MercurySDK"
  
  # 添加模块化支持
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }
end