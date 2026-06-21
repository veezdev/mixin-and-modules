# import the modules downloadable from high_quality and low_quality from aggregate file combine_quality_in_same_file
require_relative './downloadable/combine_quality_in_same_file'

# create class Song
class Song
  include Downloadable
end

# create instance of class Song
song = Song.new

# use the methods from the module Downloadable
puts song.download_high_quality # call the method download_high_quality from the module Downloadable
puts song.download_low_quality # call the method download_low_quality from the module Downloadable