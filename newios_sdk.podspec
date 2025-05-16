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
  
  # 排除有问题的文件夹
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude", "Classes/Adapters/Sigmob/**/*", "Classes/GroMoreBidding/**/*"
  
  spec.static_framework = true
  spec.frameworks = "Foundation", "UIKit", "AdSupport"
  spec.requires_arc = true
  
  # 添加SDK依赖，但不包括有问题的SDK
  spec.dependency "TanxSDK"
  spec.dependency "BaiduMobAdSDK"
  spec.dependency "Ads-CN"         # 穿山甲基础SDK
  # spec.dependency "ABUAdSDK"     # 穿山甲GroMore SDK，如果需要请添加
  spec.dependency "GDTMobSDK"
  spec.dependency "KSAdSDK"
  spec.dependency "MercurySDK"
  
  # 不要设置xcconfig，避免冲突
end