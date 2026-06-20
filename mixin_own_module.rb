# Mixin own module
# besides of the built-in module in ruby, also we can create own module
# commonly ruby developer using -able in every name of the module

module Purchasable
  def purchase(item)
    puts "#{item} has been purchased."
  end
end

class Bookstore
  include Purchasable
end

class Supermarket
  include Purchasable
end

class Sandwich < Supermarket
end

# because Bookstore and Supermarket include the Purchasable module, they can use the purchase method defined in the module.
# and because the Sandwich class inherits from the Supermarket class, it can also use the purchase method defined in the Purchasable module.

bookstore = Bookstore.new
bookstore.purchase("Ruby Programming Book") # Output: Ruby Programming Book has been purchased.

supermarket = Supermarket.new
supermarket.purchase("Milk") # Output: Milk has been purchased.

sandwich = Sandwich.new
sandwich.purchase("Beef Sandwich") # Output: Beef Sandwich has been purchased.

