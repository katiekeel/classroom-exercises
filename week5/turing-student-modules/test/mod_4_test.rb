require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mod_4_student.rb'

class Mod4StudentTest < Minitest::Test

  def test_student_exists
    student = Mod4Student.new
    assert_instance_of Mod4Student, student
  end

  def test_student_is_not_scared
    student = Mod4Student.new
    refute student.is_scared?
  end

  def test_student_knows_what_theyre_doing
    student = Mod4Student.new
    assert student.knows_doing?
  end

  def test_student_not_healthy_before_exercise
    student = Mod4Student.new
    refute student.healthy?
  end

  def test_exercise_makes_student_healthy
    student = Mod4Student.new
    student.exercise
    assert student.healthy?
  end

  def test_student_is_always_working
    student = Mod4Student.new
    assert student.is_working?
  end

  def test_student_has_a_job
    student = Mod4Student.new
    assert student.has_job?
  end

  def test_student_can_finish_project
    student = Mod4Student.new
    student.work
    student.work
    student.work
    assert_equal student.project_status, "You finished your project, yay!"
  end

end
