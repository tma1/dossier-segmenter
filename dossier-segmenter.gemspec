# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dossier/segmenter/version'

Gem::Specification.new do |spec|
  spec.name          = "dossier-segmenter"
  spec.version       = Dossier::Segmenter::VERSION
  spec.authors       = ["Adam Hunter"]
  spec.email         = ["adamhunter@me.com"]
  spec.description   = %q[Adds control breaks to dossier reports by defined segments based on query results.]
  spec.summary       = %q[Extends Dossier to have segmented report functionality.]
  spec.homepage      = "https://github.com/adamhunter/dossier-segmenter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "dossier", "~> 2.9"

  spec.add_development_dependency "bundler",     "~> 1.3"
  spec.add_development_dependency "rspec-rails", "~> 2.13"
  spec.add_development_dependency "rails",       "~> 3.2.13"
  spec.add_development_dependency "capybara",    "~> 2.1"
  spec.add_development_dependency "simplecov",   "~> 0.7"
  spec.add_development_dependency "pry",         ">= 0.9.10"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "dummy-application"
end
