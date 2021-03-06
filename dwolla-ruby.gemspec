# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dwolla/version"

Gem::Specification.new do |s|
  s.name        = "dwolla-ruby"
  s.version     = Dwolla::VERSION
  s.authors     = ["Michael Schonfeld"]
  s.email       = ["michael@dwolla.com"]
  s.homepage    = "https://github.com/dwolla/dwolla-ruby"
  s.summary     = %q{Official Ruby Wrapper for Dwolla's API}
  s.description = %q{Official Ruby Wrapper for Dwolla's API}

  s.rubyforge_project = "dwolla-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'faraday', '= 0.7.6'
  s.add_dependency 'multi_json', '~> 1.3'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'simplecov'
end
