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

  def time_limit(guests, song_duration)
    @song_choices + duration
    if @song_choices >= 20.00
      return "Time up!"
    end
  end


end
