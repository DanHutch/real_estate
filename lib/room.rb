## room.rb

require 'pry'

class Room
  attr_reader :category,
              :area

  def initialize(category, length, width)
    @category = category
    @area = length * width
  end



end
