class Pirate

  attr_accessor :name, :work, :curse, :evils, :booty, :robberies

  def initialize(name, work = 'Scallywag', curse = false, evils = 0, booty = 0, robberies = 0)
    @name = name
    @work = work
    @curse = curse
    @evils = evils
    @booty = booty
    @robberies = robberies
  end

  def job
    work
  end

  def cursed?
    if evils < 3
      curse = false
    else
      curse = true
    end
  end

  def commit_heinous_act
    @evils += 1
  end

  def booty_count
    @booty = booty + (robberies*100)
  end

  def hijack
    @robberies += 1
  end


end
