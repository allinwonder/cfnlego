require 'yaml'

module  Cfnlego
  class Resource
    attr_reader :type, :name

    def initialize(type, name)
      @type = type
      @name = name 
    end

    def attributes
      definition["#{@type}"]["Attributes"]
    end

    def properties
      definition["#{@type}"]['Properties']
    end

    private

    # example AutoScaling::AutoScalingGroup
    def type2file
      @file ||= "#{File.realpath(File.dirname(__FILE__))}/resources/#{@type.gsub(/::/, "/")}.yaml"
    end

    def definition
      @definition ||= YAML.load_file(type2file)
    rescue
      $stderr.puts "unknown #{@type}, no matching definition found"
    end
  end
end
