# Module
# In Ruby, a module is a collection of methods and constants. It is similar to a class, but it cannot be instantiated. 
# Instead, modules are used to group related methods and constants together, and they can be included in classes to add functionality.
# mostly developer using [NameOfModule]able for naming modules, for example, Drinkable, Enumerable, Comparable, etc.

module LengthOfConvertionable
  # self is used to define class methods in a module. 
  # Class methods are methods that can be called on the module itself, rather than on an instance of the module.
  # for using it in module, we can use the module name followed by the method name, like this: LengthOfConvertionable.miles_to_feet(1)
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

# for using it because we are not using class we can use like this: LengthOfConvertionable.miles_to_feet(1)
puts "#{LengthOfConvertionable.miles_to_feet(1)} feet" # Output: 5280 feet
puts "#{LengthOfConvertionable.miles_to_inches(1)} inches" # Output: 63360 inches
puts "#{LengthOfConvertionable.miles_to_centimeters(1)} centimeters" # Output: 160934.4 centimeters