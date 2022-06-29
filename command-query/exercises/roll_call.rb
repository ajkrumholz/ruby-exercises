class RollCall < Array


  def initialize
  end

  def longest_name
    self.max { |a,b| a.length <=> b.length }
  end

end
