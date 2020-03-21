Pod::Spec.new do |s|
  s.name         = 'MTTransitions'
  s.version      = '0.0.9'
  s.license = 'MIT'
  s.requires_arc = true
  s.source = { :git => 'https://github.com/alexiscn/MTTransitions.git', :tag => s.version.to_s }

  s.summary         = 'MTTransitions'
  s.homepage        = 'https://github.com/alexiscn/MTTransitions'
  s.license         = { :type => 'MIT' }
  s.author          = { 'xushuifeng' => 'shuifengxu@gmail.com' }
  s.platform        = :ios
  s.swift_version   = '4.2'
  s.source_files    = 'Source/**/*.{swift,metal,h}'
  s.resource  = 'Source/**/Assets.bundle'
  s.ios.deployment_target = '9.0'
  s.xcconfig = { 'MTL_HEADER_SEARCH_PATHS' => '${PODS_CONFIGURATION_BUILD_DIR}/MetalPetal/MetalPetal.framework/Headers'}
  
  s.weak_frameworks = 'MetalKit'
  
  s.dependency 'MetalPetal'
  
end
