# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "test-env/version"

Gem::Specification.new do |s|
  s.name        = "test-env"
  s.version     = Test::Env::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Anders Janmyr"]
  s.email       = ["anders@janmyr.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "test-env"

  s.add_dependency 'sinatra'
  s.add_dependency 'sinatra-reloader'
  s.add_dependency 'coffee-script'
  s.add_dependency 'haml'
  s.add_dependency 'sass'
  s.add_dependency 'json'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'jasmine'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
