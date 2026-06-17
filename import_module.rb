# Import module
# In Ruby, you can import a module from another file using the require or require_relative method.
# The require method is used to load a module from a file that is located in the load path, while the require_relative method is used to load a module from a file that is located relative to the current file.

require_relative 'module_intro'
require_relative 'module_separated_method'

puts LengthOfConvertionable.miles_to_feet(1).to_s + " feet"  # Output: 5280 feet
puts Squareable.area(4).to_s + " cm²" # Output: 16 cm²
puts Rectangleable.area(4, 5).to_s + " cm²" # Output: 20 cm²