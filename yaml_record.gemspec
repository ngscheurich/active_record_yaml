# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yaml_record/version"

Gem::Specification.new do |spec|
  spec.name          = "yaml_record"
  spec.version       = YamlRecord::VERSION
  spec.authors       = ["Nicholas Scheurich"]
  spec.email         = ["nick@scheurich.me"]

  spec.summary       = "YAML backing for Rails models"
  spec.description   = "YAML backing for Rails models"
  spec.homepage      = "https://github.com/ngscheurich/yaml_record"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "> 3.1"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "combustion", "~> 0.5.5"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "pry", "> 0"
end
