Pod::Spec.new do |spec|
  spec.platform = :ios, '9.0'
  spec.name         = "newios_sdk"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of newios_sdk."
  # spec.description  = <<-DESC
  #                  DESC
  spec.description  = "A longlong description of newios_sdk."

  spec.homepage     = "https://github.com/Wu-An-Jun/newios_sdk"
  
  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "Lzc" => "2489754250@qq.com" }
  
  spec.source = { :git => "https://github.com/Wu-An-Jun/newios_sdk.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

end
