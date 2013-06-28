$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mochajs_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mochajs_rails"
  s.version     = MochajsRails::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of MochajsRails."
  s.description = "TODO: Description of MochajsRails."

  s.files         = `git ls-files`.split($\)
  s.test_files    = Dir["test/**/*"]
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.2'
  s.add_dependency 'railties', '>= 3.2.3', "< 5"
end
