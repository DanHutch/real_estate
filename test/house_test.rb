## house_test.rb

require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of(House, house)
  end

  def test_it_has_attributes
    house = House.new("$400000", "123 sugar lane")
    assert_equal(400000, house.price)
    assert_equal("123 sugar lane", house.address)
    assert_equal([], house.rooms)
  end

  def test_it_can_add_rooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    house.add_room(room_1)
    assert_equal(1, house.rooms.count)
    actual =
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    assert_equal(2, house.rooms.count)
    a
  end

end
