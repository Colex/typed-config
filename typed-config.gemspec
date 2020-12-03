$:.push File.expand_path('../lib', __FILE__)

require 'typed_config/version'

Gem::Specification.new do |s|
  s.name          = 'typed-config'
  s.version       = TypedConfig::VERSION
  s.date          = Time.now.strftime('%F')
  s.summary       = 'Type-safe settings for Rails'
  s.description   = 'Manage multi-environment settings with type-safety in Ruby'
  s.authors       = ['Alex Santos']
  s.email         = 'hello@alexcsantos.com'
  s.files         = `git ls-files lib rbi Gemfile*`.split($/)
  s.require_paths = ['lib']
  s.homepage      = 'https://rubygems.org/gems/typed-config'
  s.license       = 'MIT'

  s.required_ruby_version = '>= 2.4.0'
  s.add_dependency 'deep_merge', '~> 1.2', '>= 1.2.1'

  s.add_development_dependency 'rubocop', '~> 0.84.0'
  s.add_development_dependency 'rubocop-performance', '~> 1.6.1'
  s.add_development_dependency 'rubocop-sorbet', '~> 0.4.0'
  s.add_development_dependency 'rubocop-rspec', '~> 1.39.0'
  s.add_development_dependency 'sorbet-runtime'
end
