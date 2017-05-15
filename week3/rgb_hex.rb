class ColorFinder

  attr_reader :hex_code, :hex_codes

  def initialize(hex_code)
    @hex_code = hex_code
    @hex_codes = hex_codes
  end

  def find_color
    split_string
    convert_to_values
    find_dominant
  end

  def split_string
    @hex_codes = @hex_code.scan(/../)
  end

  def convert_to_values
    hex_codes.map! do |code|
      code.hex
    end
  end

  def find_dominant
    if hex_codes.max == hex_codes[0]
      puts "Red"
    elsif hex_codes.max == hex_codes[1]
      puts "Green"
    else
      puts "Blue"
    end
  end

end

color = ColorFinder.new("42F489")
color.find_color
color_2 = ColorFinder.new("F44242")
color_2.find_color
