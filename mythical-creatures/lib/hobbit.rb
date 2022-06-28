class Hobbit

  attr_accessor :name, :disp, :years

  def initialize(name, disp = 'homebody', years = 0)
    @name = name
    @disp = disp
    @years = years
  end

  def disposition
    disp
  end

  def age
    years
  end

  def celebrate_birthday
    @years += 1
  end

  def adult?
    if @years <= 32
      false
    else
      true
    end
  end

  def old?
    if @years >= 101
      true
    else
      false
    end
  end

  def has_ring?
    if name == 'Frodo'
      true
    else
      false
    end
  end

  def is_short?
    true
  end
end
