require './morse_code_alphabet'
require 'pry'

class MorseCode

  attr_accessor :string, :string_split, :morse_array, :translated, :morse_code_alphabet

  def initialize(string)
    @string = string
    @string_split = string_split
    @morse_array = []
    @translated = translated
    @morse_code_alphabet = Alphabet.morse_code_alphabet
  end

  def translate
    split_input
    convert_to_morse
    join
    puts translated
  end

  def split_input
    @string_split = string.split("")
  end

  def convert_to_morse
    @string_split.each do |letter|
      @morse_code_alphabet.each do |key, value|
        if letter.downcase == key
          @morse_array << value
        else
          next
        end
      end
    end
  end

  def join
    @translated = @morse_array.join("")
  end

end


help = MorseCode.new("help")
help.translate

sos = MorseCode.new("SOS")
sos.translate
