require './lib/student_module.rb'

class Mod1Student

  include Student

  attr_reader :project

  def initialize
    @scared = true
    @knows_doing = false
    @healthy = false
    @job = false
    @project = 0
  end

  def exercise
    return "You didn't actually exercise."
  end

  def work
    @project
  end

end
