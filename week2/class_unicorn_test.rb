gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './class_unicorn.rb'

class UnicornTest < Minitest::Test

  def test_it_has_a_name
    unicorn = Unicorn.new("Lady Galadriel")
    assert_equal "Lady Galadriel", unicorn.name
  end

  def test_its_name_can_change
    unicorn = Unicorn.new("Arwen Evenstar")
    assert_equal "Arwen Evenstar", unicorn.name
  end

  def test_it_has_a_color
    unicorn = Unicorn.new("Heri Alateriel")
    assert_equal "white", unicorn.color
  end

  def test_its_color_is_white
    unicorn = Unicorn.new("Arwen Evenstar")
    assert unicorn.white?
  end

  def test_its_color_can_change
    unicorn = Unicorn.new("Heri Alatariel")
    assert_equal "white", unicorn.color
  end

  def test_it_has_speech
    unicorn = Unicorn.new("Lady Galadriel", "white", "Sparkles!!")
    assert_equal "Sparkles!!", unicorn.speech
  end

  def test_its_speech_is_sparkly
    unicorn = Unicorn.new("Arwen Evenstar", "white", "~*~sparkles~*~")
    assert unicorn.sparkly?
  end

  def test_its_speech_can_change
    unicorn = Unicorn.new("Arwen Evenstar", "white", "This speech isn't sparkly...")
    assert "This speech isn't sparkly...", unicorn.speech
  end
end
