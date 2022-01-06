Pod::Spec.new do |s|
  s.name             = 'NGCorePocLib'
  s.version          = '0.0.3'
  s.summary          = 'NGCorePocLib is a poc for VMNgLibs'
  s.description      = 'NGCorePocLib will implement CI-CD via Jenkins and Appium'
  s.homepage         = 'https://github.com/Cloy Monis/NGCorePocLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cloy Monis' => 'cloy.m@vmax.com' }
  s.source           = { :git => 'https://github.com/Cloy Monis/NGCorePocLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'NGCorePocLib/Classes/**/*'
end
