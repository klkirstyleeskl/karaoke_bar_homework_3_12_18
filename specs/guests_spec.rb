require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class Guests

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

  def test_get_guest_wallet
    assert_equal(240.00, @guest_1.wallet)
  end

  def test_get_guest_age
    assert_equal(17, @guest_3.age)
  end

  def test_pay_entry
    @guest_2.pay_entry(@room_1, @karaoke_bar)
    assert_equal(90.00, @karaoke_bar.wallet)
  end

  def test_karaoke_till
    @guest_2.pay_entry(@room_1, @karaoke_bar)
    assert_equal(1010.00, @guest_2.till_value)
  end



end
