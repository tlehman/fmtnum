# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fmtnum/version'

Gem::Specification.new do |spec|
  spec.name          = "fmtnum"
  spec.version       = Fmtnum::VERSION
  spec.authors       = ["Tobi Lehman"]
  spec.email         = ["tobi.lehman@gmail.com"]
  spec.description   = %q{Command line utility to format a number with commas, and (optionally) output the word for the number.}
  spec.summary       = %q{Command line utility to format a number with commas, and (optionally) output the word for the number.}
  spec.homepage      = "https://github.com/tlehman/fmtnum#readme"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "turn"
end
