# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cfnlego/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.0'
  spec.name          = "cfnlego"
  spec.version       = Cfnlego::VERSION
  spec.authors       = ["Kevin Yung"]
  spec.email         = ["jwrong@gmail.com"]
  spec.licenses      = ["MIT"]

  spec.summary       = %q{Command Line tool to bootstrap CloudForamtion development with cfndsl}
  spec.description   = %q{Command line tool to bootstrap CloudFormation development with cfndsl}
  spec.homepage      = "https://github.com/allinwonder/cfnlego"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.bindir        = "bin"
  spec.executables   << "cfnlego"

  spec.add_runtime_dependency "ruby-beautify", "~> 0.97"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "cfndsl", "~> 0.2"
end
