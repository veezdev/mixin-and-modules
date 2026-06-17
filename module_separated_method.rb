# Module can be separated method in one file
# if we create same method in same file, it will override the previous method with the same name. 
# This is because Ruby uses the last defined method with the same name as the one that will be called when the method is invoked.
# But we can use different modules with the same method name, and we can call them using the module name followed by the method name

module Squareable
  def self.area(side_length)
    side_length * side_length
  end
end

module Rectangleable
  def self.area(length, width)
    length * width
  end
end

puts "#{Squareable.area(4)} cm²" # Output: 16 cm²
puts "#{Rectangleable.area(4, 5)} cm²" # Output: 20 cm²

=begin
  notice that we can use the same method name area in both modules, 
  but they are different methods because they are defined in different modules.
=end