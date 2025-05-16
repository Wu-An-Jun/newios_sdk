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
                      "Classes/GroMoreBidding/**/*",
                      "Classes/Adapters/TANX/**/*"
  
  spec.static_framework = true
  spec.frameworks = "Foundation", "UIKit", "AdSupport"
  spec.requires_arc = true
  
  # 为了通过验证，暂时移除可能有问题的依赖
  # spec.dependency "TanxSDK"
  spec.dependency "BaiduMobAdSDK"
  spec.dependency "Ads-CN"
  spec.dependency "GDTMobSDK"
  spec.dependency "KSAdSDK"
  spec.dependency "MercurySDK"
end