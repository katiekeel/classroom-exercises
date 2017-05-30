# Model a Mod 4 and Mod 1 student using modules to namespace the Student class.
#
# Things to think about:
#
# * What attributes should students have and what attributes do they share?
# * What actions or methods do students share?
# * What actions or methods would they not share?
# * Place each class and module in a separate file.
# * Use pry to ensure that you are using `require` and `require_relative` properly.

module Student

  def is_scared?
    @scared
  end

  def knows_doing?
    @knows_doing
  end

  def healthy?
    @healthy
  end

  def is_working?
    true
  end

  def has_job?
    @job
  end

  def project_status
    if @project > 3
      return "You finished your project, yay!"
    elsif @project == 0
      return "You'll never actually finish your project."
    else
      return "Your project is coming along nicely!"
    end
  end

end
