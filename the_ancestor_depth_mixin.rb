# The ancestor depth mixin
# This mixin provides a method to calculate the depth of an object's ancestor chain

module Eatable
  # module eatable have a method eat and attr_reader name to access the name instance variable in the classes that include this module
  attr_reader :name

  def eat(food)
    puts "#{self.name} is eating #{food}."
  end
end

class Animal
  include Eatable

  def initialize(name)
    @name = name
  end

  def eat(food, quantity)
    puts "#{@name} is eating #{quantity} of #{food}."
  end
end


class Dog

  include Eatable

  def initialize(name)
    @name = name
  end

  def bark
    puts "#{@name} is barking."
  end
end

class Cat < Animal
  def meow
    puts "#{@name} is meowing."
  end
end

# Because the Animal class includes the Eatable module but it class overrides the eat method
# So the eat method will execute the eat method defined in the Animal class instead of the Eatable module when called on an instance of the Animal class or its subclasses.
animal = Animal.new("Generic Animal")
animal.eat("food", 2) # Output: Generic Animal is eating 2 of food.

cat = Cat.new("Whiskers")
cat.eat("fish", 1) # Output: Whiskers is eating 1 of fish.
cat.meow # Output: Whiskers is meowing.

dog = Dog.new("Buddy")
dog.eat("bone") # Output: Buddy is eating bone.
dog.bark # Output: Buddy is barking.


puts "\nAncestor chain for Animal:"
p Animal.ancestors # Output: [Animal, Eatable, Object, Kernel, BasicObject] => Animal includes Eatable module, and then it inherits from Object, Kernel, and BasicObject.

puts "\nAncestor chain for Dog:"
p Dog.ancestors # Output: [Dog, Eatable, Object, Kernel, BasicObject] => Dog includes Eatable module, and then it inherits from Object, Kernel, and BasicObject.

puts "\nAncestor chain for Cat:"
p Cat.ancestors # Output: [Cat, Animal, Eatable, Object, Kernel, BasicObject] => Cat inherits from Animal which includes Eatable module, and then it inherits from Object, Kernel, and BasicObject.


puts "\nChecking if instances (will check superclass hierarchy) are of certain classes using is_a?() method:"
p animal.is_a?(Animal) # Output: true => animal is an instance of the Animal class, so it returns true.
p cat.is_a?(Eatable) # Output: true => Cat is a subclass of Animal, so it returns true.
p dog.is_a?(Eatable) # Output: true => Dog is a subclass of Animal, so it returns true.

puts "\nChecking if instances (will check a specific class) are of certain classes using instance_of?() method:"
p animal.instance_of?(Animal) # Output: true => animal is an instance of the Animal class, so it returns true.
p cat.instance_of?(Eatable) # Output: false => Cat is a subclass of Animal, not an instance of Eatable module, so it returns false.
p dog.instance_of?(Eatable) # Output: false => Dog is a subclass of Animal, not an instance of Eatable module, so it returns false.