# module constant
# create module constant with constant variable PI
module Constant
  PI = 3.14
end

# for using it without a class, we can use the module name to access the constant variable
puts Constant::PI # call the constant variable PI from the module Constant

# for using it with a class, we can include the module in the class and access the constant variable
class Circle
  include Constant

  def self.area(radius)
    PI * radius * radius
  end
end

puts Circle.area(5) # call the method area from the class Circle