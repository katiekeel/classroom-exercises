require 'pry'

class Allergens

  attr_reader :score, :allergies_hash

  def initialize(score)
    @score = score
  end

  def allergies_hash
    allergies_hash = {
      128 => "cats",
      64 => "pollen",
      32 => "chocolate",
      16 => "tomatoes",
      8 => "strawberries",
      4 => "shellfish",
      2 => "peanuts",
      1 => "eggs"
    }
  end

  def allergies
    total_score = 0
    allergies_array = []
    allergies_hash.each_pair do |key, value|
      if score - total_score >= key
          total_score += key
          allergies_array << value
      end
    end
    allergies_array = allergies_array.sort if allergies_array.count > 1
    allergies_array = allergies_array.join(" and ") if allergies_array.count > 1
    allergies_array
  end

end
