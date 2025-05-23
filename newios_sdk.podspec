#  
# Be sure to run `pod lib lint newios_sdk.podspec' to ensure this is a# valid spec before submitting.#  
# Any lines starting with a # are optional, but their use is encouraged# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html#  
  
Pod::Spec.new do |s|  
  
    s.name             = 'newios_sdk'  
    s.version          = '0.0.2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }  
    s.summary          = 'newios_sdk.'  
    s.description      = 'test newios_sdk I wish win'  
  
    s.homepage         = 'https://github.com/Wu-An-Jun/newios_sdk'  
    s.author           = { 'Lzc' => '2489754250@qq.com' }  
    s.source           = { :git => 'https://github.com/Wu-An-Jun/newios_sdk.git', :tag => s.version.to_s }  
  
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }  
    s.platform     = :ios, "12.0"  
    s.requires_arc = true  
    s.static_framework = true  
  
  
s.resource_bundles = {  
  'newios_sdk' => ['Assets/**/*.*']  
}  
  
  
    # 默认的使用模块  
    s.default_subspec = 'Core'  
  
    s.subspec 'Core' do |core|  
        core.source_files = 'Classes/Core/**/*.{h,m}'  
        core.frameworks = 'UIKit', 'Foundation', 'AdSupport'  
    end  
  
    s.subspec 'AdSpot' do |adSpot|  
        adSpot.dependency 'newios_sdk/Core'  
        adSpot.source_files = 'Classes/AdSpot/**/*.{h,m}'  
    end  
    s.subspec 'MercuryAdapter' do |mer|  
        mer.dependency 'newios_sdk/AdSpot'  
        mer.dependency 'MercurySDK', '4.4.7'  
        mer.source_files = 'Classes/Adapters/Mercury/**/*.{h,m}'  
        mer.pod_target_xcconfig = {  
          'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'  
        }  
        mer.user_target_xcconfig = {  
          'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'  
        }  
    end  

    s.subspec 'CSJAdapter' do |csj|  
        csj.dependency 'newios_sdk/AdSpot'  
        csj.dependency 'Ads-CN-Beta/BUAdSDK', '6.8.0.1'  
        csj.source_files = 'Classes/Adapters/CSJ/**/*.{h,m}'  
    end  

    s.subspec 'GDTAdapter' do |gdt|  
        gdt.dependency 'newios_sdk/AdSpot'  
        gdt.dependency 'GDTMobSDK', '4.15.30'  
        gdt.source_files =  'Classes/Adapters/GDT/**/*.{h,m}'  
    end  

    s.subspec 'KSAdapter' do |ks|  
        ks.dependency 'newios_sdk/AdSpot'  
        ks.dependency 'KSAdSDK', '3.3.74'  
        ks.source_files = 'Classes/Adapters/KS/**/*.{h,m}'  
    end  

    s.subspec 'BDAdapter' do |bd|  
        bd.dependency 'newios_sdk/AdSpot'  
        bd.dependency 'BaiduMobAdSDK', '5.373'  
        bd.source_files =  'Classes/Adapters/BD/**/*.{h,m}'  
    end  

    s.subspec 'TanxAdapter' do |tanx|  
        tanx.dependency   'newios_sdk/AdSpot'  
        tanx.dependency 'TanxSDK', '3.7.2'  
        tanx.source_files =  'Classes/Adapters/TANX/**/*.{h,m}'  
    end  

    s.subspec 'SigmobAdapter' do |sigmob|  
        sigmob.dependency 'newios_sdk/AdSpot'  
        sigmob.dependency 'SigmobAd-iOS', '4.17.0'  
        sigmob.source_files =  'Classes/Adapters/Sigmob/**/*.{h,m}'  
    end
end