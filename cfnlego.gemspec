# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cfnlego/version'

Gem::Specification.new do |spec|
  spec.name          = "cfnlego"
  spec.version       = Cfnlego::VERSION
  spec.authors       = ["Kevin Yung"]
  spec.email         = ["me@howareyoukevin.com"]

  spec.summary       = %q{Templates to generate CloudFormation templates in cfndsl}
  spec.description   = %q{Command line tool to bootstrap CloudFormation development in cfndsl}
  spec.homepage      = "https://howareyoukevin.com/cfnlego"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
