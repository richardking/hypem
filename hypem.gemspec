# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hypem/version"

Gem::Specification.new do |s|
  s.name        = "hypem"
  s.version     = Hypem::VERSION
  s.authors     = ["Jack Anderson"]
  s.email       = ["jackcanderson@gmail.com"]
  s.homepage    = ""
  s.summary     = "a light Ruby wrapper for the Hype Machine public API"

  s.rubyforge_project = "hypem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "vcr", "~> 2.0"
  s.add_development_dependency "rake"
  s.add_dependency 'faraday', '~> 0.7'
  s.add_dependency 'multi_json', '~> 1.1'
  s.add_dependency 'hashie', '~> 1.2'

end
