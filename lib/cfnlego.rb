$LOAD_PATH << File.dirname(__FILE__)

require 'yaml'
require 'erb'
require 'cfnlego/cloudformation'
require 'cfnlego/resource'
require 'cfnlego/version'

module Cfnlego
  def self.Resources
    basedir = File.join("#{File.realpath(File.dirname(__FILE__))}", "cfnlego","resources", File::SEPARATOR)
    resource_yaml_files = File.join(basedir, "**", "*.yaml")
    resources = []
    Dir.glob(resource_yaml_files) do |filename| 
      resources << filename.sub(/#{basedir}/, '').gsub(/#{File::SEPARATOR}/, '::').sub(/\.yaml/, '')
    end
    return resources
  end
end
