# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dr_cyan/version'

Gem::Specification.new do |spec|
  spec.name          = "dr_cyan"
  spec.version       = DrCyan::VERSION
  spec.authors       = ["Dmitri Zagidulin"]
  spec.email         = ["dzagidulin@gmail.com"]
  spec.description   = %q{Dr Cyan is a simple Choose Your Own Adventure engine based on Markdown files.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/dmitrizagidulin/dr_cyan"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-spec-context"
end
