require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-zendesk-chat"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.3"
  s.source       = { :git => "https://github.com/robertmurray/react-native-zendesk-chat.git", :tag => "v#{s.version}" }
  s.source_files = "ios/*.{h,m}"
  s.static_framework = true

  s.framework    = 'Foundation'
  s.framework    = 'UIKit'

  s.dependency 'React'
  s.dependency 'ZDCChat'
end