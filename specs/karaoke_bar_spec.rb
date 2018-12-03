require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke')

class Karaoke

def setup
@karaoke_bar = Karaoke.new("Big_up_Karaoke", 1000.00)
end

def test_karaoke_bar_name
  assert_equal("Big_up_Karaoke", @karaoke_bar.name)
end

def test_get_till_value
  assert_equal(1000.00, @karaoke_bar.till_value)
end






end
