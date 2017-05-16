class Allergens

  attr_reader :score, :allergies_hash

  def initialize(score)
    @score = score
  end

  def allergies_hash
    allergies_hash = {
      1 => "eggs",
      2 => "peanuts",
      4 => "shellfish",
      8 => "strawberries",
      16 => "tomatoes",
      32 => "chocolate",
      64 => "pollen",
      128 => "cats"
    }
  end

  def allergies
    allergies_string = ""
    if score.odd?
      if allergies_hash.key?(score)
        allergies_string << allergies_hash[score]
      else
        allergies_string << allergies_hash[1]
        allergies_string << " and "
        @score -= 1
        allergies_string << allergies_hash[score]
      end
    else
      if allergies_hash.key?(score)
        allergies_string << allergies_hash[score]
      else
        allergies_hash.each_pair do |key, value|
          
      end
    end
    allergies_string
  end

end







eggs = 1
peanuts = 2
shellfish = 4
strawberries = 8
tomatoes = 16
chocolate = 32
pollen = 64
cats = 128
