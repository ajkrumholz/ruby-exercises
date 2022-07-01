class Appointments < Array

  def initialize
  end

  def earliest
    self.min
  end

  def at(time)
    self << time
  end




end
