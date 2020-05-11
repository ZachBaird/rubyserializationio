# frozen_string_literal: true

require 'yaml'

# Describes a Person
class Person
  attr_accessor :name, :age, :height

  def initialize(name, age, height)
    @name = name
    @age = age
    @height = height
  end

  def to_yaml
    YAML.dump ({
      name: name,
      age: age,
      height: height
    })
  end

  def self.from_yaml(string)
    data = YAML.safe_load string
    puts data
    new(data[:name], data[:age], data[:height])
  end
end
