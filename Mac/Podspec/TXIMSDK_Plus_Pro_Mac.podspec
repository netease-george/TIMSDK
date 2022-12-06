Pod::Spec.new do |spec|
  spec.name         = 'TXIMSDK_Plus_Pro_Mac'
  spec.version      = '6.9.3557'
  spec.platform     = :osx  
  spec.osx.deployment_target = '10.10'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2017 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'TXIMSDK_Plus_Pro_Mac'
  
  spec.requires_arc = true

  spec.source = { :http => 'https://im.sdk.qcloud.com/download/plus/6.9.3557/ImSDKForMac_Plus_Pro_6.9.3557.framework.zip'}
  spec.preserve_paths = '**/ImSDKForMac_Plus_Pro.framework'
  spec.source_files = '**/ImSDKForMac_Plus_Pro.framework/Versions/A/Headers/*.h'
  spec.public_header_files = '**/ImSDKForMac_Plus_Pro.framework/Versions/A/Headers/*.h'
  spec.vendored_frameworks = '**/ImSDKForMac_Plus_Pro.framework'
  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/TXIMSDK_Plus_Pro_Mac/ImSDKForMac_Plus_Pro.framework/Versions/A/Headers/'} 
end

# export EXPANDED_CODE_SIGN_IDENTITY=""
# export EXPANDED_CODE_SIGN_IDENTITY_NAME=""
# export EXPANDED_PROVISIONING_PROFILE=""