require 'yaml'
class Resource
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name 
  end

  def attributes
    definition["AWS::#{@type}"]["Attributes"]
  end

  def properties
    definition["AWS::#{@type}"]['Properties']
  end

  private

  # example AutoScaling::AutoScalingGroup
  def type2file
    @file ||= "#{File.dirname(__FILE__)}/resources/#{@type.gsub(/::/, "/")}.yaml"
  end

  def definition
    @definition ||= YAML.load_file(type2file)
  end
end
