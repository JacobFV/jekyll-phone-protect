# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/phone-protect/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-phone-protect"
  spec.version       = Jekyll::PhoneProtect::VERSION
  spec.authors       = ["Vincent Wochnik", "Jacob Valdez"]
  spec.email         = ["v.wochnik@gmail.com", "jacobfv123@gmail.com"]
  spec.description   = %q{Phone protection liquid filter for Jekyll}
  spec.summary       = %q{This plugin provides a simple liquid filter which converts phones into percent-encoded strings.}
  spec.homepage      = "https://github.com/JacobFV/jekyll-phone-protect"
  spec.license       = "MIT"

  spec.files         = [*Dir["lib/**/*.rb"], "README.md", "LICENSE.md"]
  spec.test_files    = [*Dir["spec/*.rb"]]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_development_dependency 'liquid'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.6"
end
