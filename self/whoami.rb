require 'pry'
class Person
  attr_accessor :name
  # instance method
  def whoami
    binding.pry
  end

  # class method
  def self.whoami
    binding.pry
  end
end

p = Person.new
p.name = "Bogdan"

binding.pry