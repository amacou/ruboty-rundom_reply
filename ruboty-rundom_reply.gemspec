# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/rundom_reply/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-rundom_reply"
  spec.version       = Ruboty::RundomReply::VERSION
  spec.authors       = ["amacou"]
  spec.email         = ["amacou.abf@gmail.com"]
  spec.summary       = %q{ruboty rundom reply plugin.}
  spec.description   = %q{ruboty rundom reply plugin.}
  spec.homepage      = "https://github.com/amacou/ruboty-rundom_reply"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
