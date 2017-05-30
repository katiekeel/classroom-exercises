require './a_c.rb'

class HotRoom

  include AirConditioning

  attr_reader :temp

  def initialize(temp = false)
    @temp = temp
  end

end
