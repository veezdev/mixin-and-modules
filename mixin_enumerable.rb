# Mixin
# mixin is a module that provides additional functionality to classes that include it. 
# It allows for the sharing of methods and behaviors across different classes, promoting code reuse and modularity. 
# By including a mixin, a class can gain access to the methods defined in the mixin without needing to inherit from a specific superclass. 
# for using it we can use "include [NameOfModule]" in the class, and then we can use the methods defined in the module as if they were defined in the class itself.

class Refrigerator
  include Enumerable # enumerable is a built-in module in Ruby that provides a set of methods for working with collections of objects, such as arrays and hashes.

  attr_reader :snacks, :drinks

  def initialize(snacks:, drinks:)
    @snacks = snacks
    @drinks = drinks
  end

  def items
    snacks + drinks
  end

 def each(&item)
   items.each(&item)
 end
end

fridge = Refrigerator.new(
  snacks: ['chips', 'cookies', 'candy'],
  drinks: ['soda', 'juice', 'water']
)

p fridge.items # Output: ["chips", "cookies", "candy", "soda", "juice", "water"]

# if we didn't include the Enumerable module, we wouldn't be able to use the items method such as each, reject, select directly (for this case should use object.items firstly)

fridge.each do |item|
  puts "#{item} is delicious"
end



