class Game

  attr_reader :weapon_array , :weapon_random

  def initialize
    @weapon_array = ['Rock', 'Paper', 'Scissors']
  end

def weapon_random
  @weapon_array.sample
end


end
