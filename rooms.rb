class Rooms

  attr_reader :name, :capactity, :price
  attr_accessor :customers

  def initialize(name, capacity, price, customers = [])
    @name = name
    @capacity = capacity
    @price = price
    @customers = customers
  end

  def enter_room(guests, karaoke_bar)
    @customers << guests
  end

  def verify_drunkenness (drunkenness)
  return drunkenness < 10
end





end
