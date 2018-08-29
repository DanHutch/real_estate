## house.rb

class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price.sub("$", "").to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(type)
    @rooms.find_all { |x| x.category == type}
  end

  def area
    @rooms.map do |room|
      room.area
    end.sum
  end

  def price_per_square_foot
    (@price.to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end
  end

  def rooms_by_category
    @rooms.group_by do |room|
      room.category
  end

end
