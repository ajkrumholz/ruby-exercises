class Tire

  attr_accessor :flat

  def initialize(flat = false)
    @flat = flat
  end

  def blow_out
    @flat = true
  end

  def flat?
    @flat
  end

end
