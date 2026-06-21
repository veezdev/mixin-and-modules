# Mixin Multiple Module
module A
  def whatever
    "Whatever"
  end

  def something_method
    "Something from A"
  end
end

module B
  def something_method
    "Something from B"
  end
end

# module A and module B are mixed into SomeClass
class SomeClass
  # this means that SomeClass will have access to the methods defined in module A and module B
  # if there are methods with the same name in both modules, the method from the last included module will take precedence
  include A
  include B
end

some_obj = SomeClass.new
puts some_obj.whatever
puts some_obj.something_method