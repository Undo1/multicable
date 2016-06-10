# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multicable/version'

Gem::Specification.new do |spec|
  spec.name          = "multicable"
  spec.version       = Multicable::VERSION
  spec.authors       = ["Undo1"]
  spec.email         = ["parker@erwaysoftware.com"]

  spec.summary       = %q{Easily publish to multiple ActionCable broadcastings.}
  spec.homepage      = "https://github.com/Undo1/multicable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
