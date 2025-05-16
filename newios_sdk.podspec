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

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  
  spec.frameworks = "Foundation", "UIKit", "AdSupport"
  spec.requires_arc = true
  
  # 添加所有需要的依赖
  spec.dependency "TanxSDK"     # TANX广告SDK
  spec.dependency "WindSDK"     # Sigmob广告SDK
  spec.dependency "BaiduMobAdSDK"        # 百度广告
  spec.dependency "Ads-CN"               # 穿山甲/CSJ
  spec.dependency "GDTMobSDK"            # 广点通/GDT/优量汇
  spec.dependency "KSAdSDK"              # 快手广告
  spec.dependency "MercurySDK"         # Mercury广告（如果需要）
end