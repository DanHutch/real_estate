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

end
