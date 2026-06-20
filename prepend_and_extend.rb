# Prepend - add module to the beginning of the ancestor chain
# Extend - add module methods as class methods

module Purchasable
  def purchase(item)
    "#{item} has been purchased."
  end
end

class Bookstore
  prepend Purchasable

  def purchase(item)
    "#{item} has been purchased from the bookstore."
  end
end

bookstore = Bookstore.new
puts bookstore.purchase("Ruby Programming Book") # Output: Ruby Programming Book has been purchased from the bookstore.

puts "\nAncestor chain for Bookstore:"
# Purchasable module is added to the beginning of the ancestor chain, so it takes precedence over the purchase method defined in the Bookstore class.
p Bookstore.ancestors # Output: [Purchasable, Bookstore, Object, Kernel, BasicObject]

puts "\nUsing extend to add class method:"
class Supermarket
  # Using extend adds the methods from the Purchasable module as class methods
  # not instance methods, so we can call the purchase method directly on the Supermarket class.
  extend Purchasable

  def self.purchase(item)
    "#{item} has been purchased from the supermarket."
  end
end

# if we create instance of the Supermarket class and call the purchase method, it will raise an error because the purchase method is added as a class method, not an instance method.
# supermarket = Supermarket.new
# puts supermarket.purchase("Milk") # This will raise an error

# we can call the purchase method directly on the Supermarket class because it is added as a class method.
puts Supermarket.purchase("Milk") # Output: Milk has been purchased.

puts "\nAncestor chain for Supermarket:"
# Purchasable module is added to the beginning of the ancestor chain, so it takes precedence over the purchase method defined in the Supermarket class.
p Supermarket.ancestors # Output: [Purchasable, Supermarket, Object, Kernel, BasicObject]
