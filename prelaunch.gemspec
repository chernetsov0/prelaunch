$:.push File.expand_path('../lib', __FILE__)

require 'prelaunch/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'prelaunch'
  s.version     = Prelaunch::VERSION
  s.license     = 'MIT'
  s.authors     = ['Alexey Chernetsov']
  s.email       = ['alexey.chernetsov@forbinde.net']
  s.summary     = 'Development environment access restriction Rails plugin.'
  s.description = 'Prelaunch allows you to restrict access to the Rails app while it is still in development.'

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.files      = Dir['{app,config,lib}/**/*', 'Rakefile', 'README.md']
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 3.2.6'. '< 5'
end
