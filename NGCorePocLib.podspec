Pod::Spec.new do |s|
  s.name             = 'NGCorePocLib'
  s.version          = '0.0.14'
  s.summary          = 'NGCorePocLib is a poc for VMNgLibs'
  s.description      = 'NGCorePocLib will implement CI-CD via Jenkins and Appium'
  s.homepage         = 'https://github.com/CloyMonisVMax/NGCorePocLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cloy Monis' => 'cloy.m@vmax.com' }
  s.source           = { :git => 'https://github.com/CloyMonisVMax/NGCorePocLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'NGCorePocLib/Classes/**/*'
  s.dependency 'VMaxAdsSDK', '0.0.92'
  s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
