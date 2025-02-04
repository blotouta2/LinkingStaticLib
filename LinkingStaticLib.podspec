#
#  Be sure to run `pod spec lint LinkingStaticLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "LinkingStaticLib"
  spec.version      = "0.0.4"
  spec.summary      = "A short description of LinkingStaticLib."
  spec.source           = { :git => 'https://github.com/blotouta2/LinkingStaticLib.git', :tag => '0.0.4' }
  spec.source_files 	= 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_libraries = 'Classes/libBlotoutAnalytics.a'
  spec.platform = :ios, '10.0'
  spec.static_framework = true

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
A new LinkProject testing project.
                       DESC

  spec.homepage     = "https://github.com/blotouta2/LinkingStaticLib"
  spec.license      = {:file => 'LICENSE'}
  spec.author             = { "blotouta2" => "ankur@blotout.io" }
  #spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	
  
end
