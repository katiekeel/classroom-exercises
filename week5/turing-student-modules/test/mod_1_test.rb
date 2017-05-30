require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mod_1_student.rb'

class Mod1StudentTest < Minitest::Test

  def test_student_exists
    student = Mod1Student.new
    assert_instance_of Mod1Student, student
  end

  def test_student_is_scared
    student = Mod1Student.new
    assert student.is_scared?
  end

  def test_student_doesnt_know_what_theyre_doing
    student = Mod1Student.new
    refute student.knows_doing?
  end

  def test_student_is_not_healthy
    student = Mod1Student.new
    refute student.healthy?
  end

  def test_student_does_not_exercise
    student = Mod1Student.new
    assert_equal student.exercise, "You didn't actually exercise."
    refute student.healthy?
  end

  def test_student_is_always_working
    student = Mod1Student.new
    assert student.is_working?
  end

  def test_student_does_not_have_job_yet
    student = Mod1Student.new
    refute student.has_job?
  end

  def test_student_cant_finish_project
    student = Mod1Student.new
    10.times { student.work }
    assert_equal student.project_status, "You'll never actually finish your project."
  end

end
