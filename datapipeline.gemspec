# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datapipeline/version'

Gem::Specification.new do |spec|
  spec.name          = 'datapipeline'
  spec.version       = Datapipeline::VERSION
  spec.authors       = ['Harlow Ward']
  spec.email         = ['harlow@hward.com']
  spec.summary       = %q{CLI for generating AWS Data Pipeline definitions}
  spec.description   = %q{CLI for generating AWS Data Pipeline definitions}
  spec.homepage      = 'https://github.com/datapipeline/cli'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
