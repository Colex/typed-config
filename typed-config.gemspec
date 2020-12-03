Gem::Specification.new do |s|
  s.name        = 'typed-config'
  s.version     = '1.1.3'
  s.date        = '2020-12-03'
  s.summary     = 'Hola!'
  s.description = 'A simple hello world gem'
  s.authors     = ['Nick Quaranto']
  s.email       = 'nick@quaran.to'
  s.files       = `git ls-files`.split($/)
  s.require_paths = ['lib']
  s.homepage    =
    'https://rubygems.org/gems/hola'
  s.license       = 'MIT'

  s.required_ruby_version = '>= 2.4.0'
  s.add_dependency 'deep_merge', '~> 1.2', '>= 1.2.1'
  s.add_dependency 'sorbet-runtime'
end
