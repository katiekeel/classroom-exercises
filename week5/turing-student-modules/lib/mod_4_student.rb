require './lib/student_module.rb'

class Mod4Student

  include Student

  def initialize
    @scared = false
    @knows_doing = true
    @healthy = false
    @job = true
    @project = 1
  end

  def exercise
    @healthy = true
  end

  def work
    @project += 1
  end


end
