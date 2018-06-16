Pod::Spec.new do |s|
  s.name             = 'MontserratFont'
  s.version          = '1.1'
  s.summary          = 'Brings Monstserrat font to iOS.'
  s.homepage         = 'https://github.com/cj-zeiger/MontserratFont'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CJ Zeiger' => 'cjzeiger@gmail.com' }
  s.source           = { :git => 'https://github.com/cj-zeiger/MontserratFont.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'MontserratFont/Classes/**/*'
  s.resource_bundles = {
    'MontserratFont' => ['MontserratFont/Assets/*.ttf']
  }
  s.swift_version    = '4.1'
  s.frameworks = 'UIKit', 'CoreText'
end
