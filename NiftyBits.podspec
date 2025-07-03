Pod::Spec.new do |s|
  s.name         = 'NiftyBits'
  s.version      = '1.0.5'
  s.summary      = 'A NiftyBits framework for third-party integrations'
  s.description  = <<-DESC
    NiftyBits is an Objective-C framework that integrates Moya, Facebook Login, RevenueCat, AppsFlyer, and SVProgressHUD.
  DESC
  s.homepage     = 'https://github.com/zy1020/NiftyBits'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'zy1020' => '985446278@qq.com' }
  s.source       = { :git => 'https://github.com/zy1020/NiftyBits.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.swift_version = ['5.0']
  
  # ✅ 按照 Objective-C 文件路径填写
  s.source_files  = 'Sources/**/*.{h,m}'

  # ✅ 引用必要的系统库（按需修改）
  s.frameworks = 'AVFoundation', 'Photos'

  # ✅ 如果你使用了 `static_framework` 可以保留（可选）
  s.static_framework = true

  s.requires_arc = true

  # ✅ 第三方依赖（如果支持 OC）
  s.dependency 'AFNetworking'
  s.dependency 'FBSDKLoginKit'
  s.dependency 'RevenueCat'
  s.dependency 'AppsFlyerFramework'
  s.dependency 'SVProgressHUD'
end
