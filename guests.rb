class Guests
  attr_reader :age
  attr_accessor :wallet, :song_choices

def initialize(wallet, age, song_choices = [])
    @wallet = wallet
    @age = age
    @song_choices = song_choices
end

def pay_entry(room_entry, karaoke)
    if karaoke.verify_age(@age)
    @room_1.enter_room(@guest_1, @karaoke_bar)
    @wallet -= room_entry.price
    @till_value += room_entry.price
    else return "Sorry not this room!"
  end
end




end
