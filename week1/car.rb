class Car

  attr_accessor :color, :wheel_count, :started

  def initialize
    @started = false
  end

  def wheel_count(wheels)
    puts "This sweet ride is sitting on #{wheels} wheels"
  end

  def horn
    puts "BEEEEEEP!"
  end

  def drive(distance)
    puts "I'm driving #{distance} miles!"
  end

  def report_color(color)
    puts "I am the color #{color}!"
  end

  def start
    if @started == false
      puts "Starting up!"
      @started = true
    else
      puts "BZZT!"
    end
  end
end

my_car = Car.new
my_car.horn
my_car.drive(34)
my_car.report_color("turquoise")
my_car.wheel_count(18)
my_second_car = Car.new
my_second_car.wheel_count(2)
my_car.start
my_car.start
