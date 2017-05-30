require './online_order.rb'

class GrubhubOrder

  include OnlineOrder

  def delivery
    puts "Your food will arrive in 45-60 minutes."
  end
end
