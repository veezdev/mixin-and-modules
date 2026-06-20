# Mixin comparable
# comparable is a module built-in ruby that provides a set of methods for comparing objects.
# it allows classes to define their own comparison logic by implementing the <=> operator, also known as the spaceship operator.
# The <=> operator returns -1, 0, or 1 depending on whether the object is less than, equal to, or greater than the other object being compared. 
# By including the Comparable module and defining the <=> operator, classes can gain access to a variety of comparison

class Person
  include Comparable # comparable is a built-in module in Ruby that provides a set of methods for comparing objects.

  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # The <=> operator is used to compare two objects. It returns -1 if the first object is less than the second object, 0 if they are equal, and 1 if the first object is greater than the second object.
  # By implementing the <=> operator, we can define how two Person objects should be compared based on their age like <, >, <=, >=, ==, between?, etc. methods are available for use.
  def <=>(other)
    age <=> other.age
  end
end

person1 = Person.new("Alice", 25)
person2 = Person.new("Bob", 30)

# for using it we can built like this
puts person1 < person2 # Output: true
puts person1 > person2 # Output: false
puts person1 == person2 # Output: false
puts person1.between?(Person.new("Charlie", 20), Person.new("David", 28)) # Output: true