Pod::Spec.new do |s|
  s.name = 'GraphQLite'
  s.version = '1.0.3'
  s.license = { :type => 'Copyright', :file => 'LICENSE' }

  s.summary = 'GraphQLite is a toolkit to work with GraphQL servers easily.'
  s.homepage = 'https://relatedcode.com'
  s.author = { 'Related Code' => 'info@relatedcode.com' }

  s.source = { :git => 'https://github.com/relatedcode/GraphQLite.git', :tag => s.version }

  s.ios.vendored_frameworks = 'Framework/GraphQLite.xcframework'

  s.platform = :ios, '10.0'
  s.requires_arc = true
end
