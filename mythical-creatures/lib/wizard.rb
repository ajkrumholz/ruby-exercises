class Wizard

attr_accessor :name, :bearded, :string, :rested, :spells_cast

  def initialize(name, bearded = true, rested = true, spells_cast = 0)
    @name = name
    @bearded = bearded
    @rested = rested
    @spells_cast = spells_cast
  end

  def bearded?
    bearded == true
  end

  def incantation(string)
    @string = string
    string = "sudo #{string}"
  end

  def rested?
    if @spells_cast <= 2
      rested == true
    else
      rested == false
    end
  end

  def cast
    @spells_cast += 1
    "MAGIC MISSILE!"
  end

end
