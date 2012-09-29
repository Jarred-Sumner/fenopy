# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fenopy/version'

Gem::Specification.new do |gem|
  gem.name          = "fenopy"
  gem.version       = Fenopy::VERSION
  gem.authors       = ["Jarred Sumner"]
  gem.email         = ["jarred@jarredsumner.com"]
  gem.description   = %q{A really simple Fenopy API client for Ruby}
  gem.summary       = %q{A really simple Fenopy API client for Ruby}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "json"
  gem.add_dependency "nestful"
  gem.add_dependency "activesupport"
end
