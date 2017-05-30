require 'pry'

class TSwift

  attr_reader :words_array

  def initialize
    @words_array = []
    @appearance_hash = {}
  end

  def unique
    populate
    flatten
    split_word
    flatten
    downcase
    sanitize
    remove_empty
    unique_words
    puts @words_array.length
  end

  def appears_hash
    populate
    flatten
    split_word
    flatten
    downcase
    sanitize
    remove_empty
    @words_array.sort!
    number_of_times_appeared
    sort_hash
    p @appearance_hash
  end


  def populate
    lyrics = File.read("./data/lyrics.txt")
    lyrics.each_line do |line|
      @words_array << line.strip.split("\n")
    end
  end

  def flatten
    @words_array.flatten!(2)
  end

  def split_word
    @words_array.map! do |phrase|
      phrase.split(" ")
    end
  end

  def downcase
    @words_array.map! do |word|
      word = word.downcase
    end
  end

  def sanitize
    @words_array.map! do |word|
      word.gsub(/[^a-z]/, "")
    end
  end

  def unique_words
    @words_array.uniq!
  end

  def remove_empty
    @words_array.delete_if do |word|
      word.empty?
    end
  end

  def number_of_times_appeared
    appears_hash
    @words_array.each do |word|
      @appearance_hash[word] = @words_array.count(word)
    end
  end

  def sort_hash
    @appearance_hash.sort_by! do |key, val|
      value
    end
  end
end

each_lyrics = TSwift.new
each_lyrics.appears_hash
