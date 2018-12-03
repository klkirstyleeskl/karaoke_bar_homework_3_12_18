require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../karaoke')

class Rooms

  def setup
    @karaoke_bar = Karaoke.new("Big_up_Karaoke", 1000.00)

    @room_1 = Rooms.new("Bob Marley Room", 5, 10.00, customers = [])
    @room_2 = Rooms.new("Sister Nancy Room", 10, 15.00, customers = [])

    @guest_1 = Guest.new(240.00, 18, song_choices = [])
    @guest_2 = Guest.new(100.00, 20, song_choices = [])
    @guest_3 = Guest.new(500.00, 17, song_choices = [])

    @song_1 = songs.new("Nice it up", 4.00)
    @song_2 = songs.new("Could you be loved", 4.30)
    @song_3 = songs.new("Incredible", 5.50)
    @song_4 = songs.new("No woman no cry", 6.00)
    @song_5 = songs.new("Bam Bam", 5.00)
    @song_6 = songs.new("Pass the Dutchie", 3.30)
    @song_7 = songs.new("Police in helicopter", 6.60)
    @song_8 = songs.new("Wa do dem", 2.40)
    @song_9 = songs.new("For hire and removal", 4.40)
    @song_9 = songs.new("Legalise it", 4.50)
    @karaoke_songs = [@song_1, @song_2, @song_3, @song_4, @song_4, @song_5,
    @song_6, @song_7, @song_8, @song_9, @song_10]
  end


  def test_get_room_name
    assert_equal("Sister Nancy Room", @room_2.name)
  end

  def test_get_room_capacity
    assert_equal(5, @room_1.capacity)
  end


  def test_get_room_price
    assert_equal(10.00, @room_1.price)
  end

  def test_enter_room
    assert_equal(1, @room_1.customers)
  end

  def test_time_limit
    assert_equal(6.60 @)
  end

end
