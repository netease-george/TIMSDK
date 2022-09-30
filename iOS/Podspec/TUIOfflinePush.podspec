Pod::Spec.new do |spec|
  spec.name         = 'TUIOfflinePush'
  spec.version      = '6.7.3184'
  spec.platform     = :ios 
  spec.ios.deployment_target = '9.0'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2017 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'TUIOfflinePush'
  
  spec.requires_arc = true

  spec.source = { :http => 'https://im.sdk.cloud.tencent.cn/download/tuikit/6.7.3184/ios/TUIOfflinePush.zip'}
  
  spec.default_subspec = 'APNS'
  
  spec.subspec 'VoIP' do |ss|
    ss.dependency 'TUIOfflinePush/APNS'
    ss.source_files = '**/TUIOfflinePush/VoIP/**/*.{h,m,mm}'
    ss.frameworks = 'CallKit'
  end
  
  spec.subspec 'APNS' do |ss|
    ss.dependency 'TUIOfflinePush/Base'
    ss.source_files = '**/TUIOfflinePush/APNS/**/*.{h,m,mm}'
  end
  
  spec.subspec 'TPNS' do |ss|
    ss.dependency 'TUIOfflinePush/Base'
    ss.dependency 'TPNS-iOS'
    ss.source_files = '**/TUIOfflinePush/TPNS/**/*.{h,m,mm}'
  end
  
  spec.subspec 'Base' do |ss|
    ss.dependency 'TUICore','6.7.3184'
    ss.source_files = '**/TUIOfflinePush/Base/**/*.{h,m,mm}'
  end
  
end
