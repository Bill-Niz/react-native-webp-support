require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name     = "react-native-webp-support"
  s.version  = package['version']
  s.summary  = package['description']
  s.homepage = "https://github.com/Bill-Niz/react-native-webp-support"
  s.license  = package['license']
  s.author   = package['author']
  s.source   = { :git => "https://github.com/Bill-Niz/react-native-webp-support", :tag => "v#{s.version}" }

  s.platform = :ios, "9.0"

  s.preserve_paths = 'README.md', 'LICENSE', 'package.json', 'index.js'
  s.source_files   = "./*.{h,m}"

  s.dependency 'React'
  s.dependency 'libwebp'
end
