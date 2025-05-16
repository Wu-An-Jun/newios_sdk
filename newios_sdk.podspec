Pod::Spec.new do |spec|
  spec.platform = :ios, '12.0'  # 提高到12.0版本，解决部署目标问题
  spec.name         = "newios_sdk"
  spec.version      = "0.0.1"
  spec.summary      = "newios_sdk."
  spec.description  = "test newios_sdk I wish win"
  
  spec.homepage     = "https://github.com/Wu-An-Jun/newios_sdk"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Lzc" => "2489754250@qq.com" }
  
  spec.source = { :git => "https://github.com/Wu-An-Jun/newios_sdk.git", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  
  # 添加静态框架设置，解决静态链接库问题
  spec.static_framework = true
  
  spec.frameworks = "Foundation", "UIKit", "AdSupport"
  spec.requires_arc = true
  
  # 广告SDK依赖
  spec.dependency "TanxSDK"
  spec.dependency "BaiduMobAdSDK"
  spec.dependency "Ads-CN"
  spec.dependency "GDTMobSDK"
  spec.dependency "KSAdSDK"
  spec.dependency "MercurySDK"
  # spec.dependency "WindSDK"  # 暂时注释掉，验证通过后再查找正确的名称
end