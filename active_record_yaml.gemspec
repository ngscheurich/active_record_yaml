# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_record_yaml/version"

Gem::Specification.new do |spec|
  spec.name          = "active_record_yaml"
  spec.version       = ActiveRecordYaml::VERSION
  spec.authors       = ["Nicholas Scheurich"]
  spec.email         = ["nick@scheurich.me"]

  spec.summary       = "Flat-file YAML backing for Rails models"
  spec.description   = "An easy to use, YAML-based record storage solution, with ActiveRecord-like features"
  spec.homepage      = "https://github.com/ngscheurich/active_record_yaml"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "combustion", "~> 0.5.5"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "pry", "~> 0.1"
end
