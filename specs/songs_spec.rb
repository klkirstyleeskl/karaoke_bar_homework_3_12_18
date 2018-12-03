require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')


class Songs

  def setup
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

  def test_get_drink_name
    assert_equal("Wa do dem", @song_8.name)
  end

  def test_get_song_duration
    assert_equal(4.40, @song_9.duration)
  end





end
