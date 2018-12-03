class Karaoke


  attr_reader :name
  attr_accessor :till_value

  def initialize(name, till_value)
    @name = name
    @till_value = till_value
  end

def verify_age (age)
    return age >= 18
  end




end
