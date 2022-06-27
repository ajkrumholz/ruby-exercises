class Victim
  attr_accessor :status

  def initialize(status = :alive)
    @status = status
  end
end

class Werewolf

  attr_accessor :name, :location, :human, :hungry

  def initialize(name, location = nil, human = true, hungry = false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry
  end

  def human?
    if @human == true
      true
    else
      false
    end
  end

  def wolf?
    if @human == true
      false
    else
      true
    end
  end

  def change!
    if @human == true
      @human = false
      @hungry = true
    else
      @human = true
      @hungry = false
    end
  end

  def hungry?
    if @hungry == true
      true
    else
      false
    end
  end

  def consume(victim)
    if @human == true
      puts 'A werewolf in human form cannot eat'
    else
      @hungry = false
      victim.status = :dead
    end
  end

end
