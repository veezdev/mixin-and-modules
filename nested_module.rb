# Nested modules
# we can also create nested modules in Ruby. A nested module is a module that is defined within another module. 
# This allows us to organize our code and group related functionality together.

module FileManagement
  # module for CSV file management
  module CSV

    # a class for reading CSV files
    class Reader
      def read(file_path)
        # code to read CSV file
      end
    end
  end

  module JSON
    # a class for reading JSON files
    class Reader
      def read(file_path)
        # code to read JSON file
      end
    end
  end
end

# for using it we can use the module name to access the nested module and class
# remember using :: after the outer module name to access the nested module and class
csv_reader = FileManagement::CSV::Reader.new 
json_reader = FileManagement::JSON::Reader.new

p csv_reader # call the class Reader from the nested module CSV from the module FileManagement
p json_reader # call the class Reader from the nested module JSON from the module FileManagement