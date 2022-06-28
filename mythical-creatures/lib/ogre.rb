class Ogre

  attr_accessor :name, :home, :swings, :encounter_counter

  def initialize(name, home = 'Swamp', swings = 0, encounter_counter = 0)
    @name = name
    @home = home
    @swings = swings
    @encounter_counter = encounter_counter
  end

  def encounter(human)
    human.encounter_counter += 1
    self.encounter_counter += 1
    if human.encounter_counter % 3 == 0
      self.swing_at(human)
    else
    end
  end

  def swing_at(human)
    @swings += 1
    if @swings % 2 == 0
      human.knocked_out = true
    else
    end
  end

  def apologize(human)
    human.knocked_out = false
  end


end

class Human

  attr_accessor :name, :encounter_counter, :knocked_out

  def initialize(name = 'Jane', encounter_counter = 0, knocked_out = false)
    @name = name
    @encounter_counter = encounter_counter
    @knocked_out = knocked_out
  end

  def notices_ogre?
    if (@encounter_counter % 3) == 0
      true
    else
      false
    end
  end

  def knocked_out?
    if @knocked_out == true
      true
    else
      false
    end
  end



end
