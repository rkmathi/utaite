# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utaite/version'

Gem::Specification.new do |spec|
  spec.name          = 'utaite'
  spec.version       = Utaite::VERSION
  spec.authors       = ['@rkmathi']
  spec.email         = ['utaite']

  spec.summary       = %q{utaite}
  spec.description   = %q{utaite}
  spec.homepage      = 'https://github.com/rkmathi/utaite'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'apache_log-parser', '~> 3.1'
end
