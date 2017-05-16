require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './allergies.rb'
require 'pry'

class AllergensTest < Minitest::Test

  def test_patient_exists
    patient = Allergens.new(nil)
    assert_instance_of Allergens, patient
  end

  def test_patient_has_allergies
    patient = Allergens.new(12)
    assert_equal patient.score, 12
  end

  def test_patient_is_allergic_to_eggs
    patient = Allergens.new(1)
    assert_equal patient.allergies, "eggs"
  end

  def test_patient_is_allergic_to_peanuts
    patient = Allergens.new(3)
    assert_equal patient.allergies, "eggs and peanuts"
  end

  def test_patient_is_allergic_to_shellfish
    patient = Allergens.new(4)
    assert_equal patient.allergies, "shellfish"
  end

  def test_patient_is_allergic_to_straw_and_tom
    patient = Allergens.new(24)
    assert_equal patient.allergies, "strawberries and tomatoes"
  end

  def test_patient_is_allergic_to_choc_and_pollen
    patient = Allergens.new(96)
    assert_equal patient.allergies, "chocolate and pollen"
  end

end
