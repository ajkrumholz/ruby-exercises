class Centaur

  attr_accessor :name, :breed, :cranky, :standing, :stamina, :sick

  def initialize(name, breed, cranky = false, standing = true, stamina = 3, sick = false)
    @name = name
    @breed = breed
    @cranky = cranky
    @standing = standing
    @stamina = stamina
    @sick = sick
  end

  def shoot
    if @standing == true
      @stamina -= 1
      if @stamina > 0
        'Twang!!!'
      else
        'NO!'
      end
    else
      'NO!'
    end
  end

  def run
    if @standing == true
      @stamina -= 1
      'Clop clop clop clop!'
    else
      'NO!'
    end
  end

  def cranky?
    if @stamina <= 0
      true
    else
      false
    end
  end

  def standing?
    if @standing == false
      false
    else
      true
    end
  end

  def laying?
    if @standing == false
      true
    else
      false
    end
  end

  def sleep
    if @standing == true
      'NO!'
    else
      @stamina = 3
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def guzzle
    if @standing == true
      if @stamina < 3
        @stamina = 3
      else @stamina == 3
        @sick = true
        'The centaur might barf'
      end
    else
      'NO!'
    end
  end

  def sick?
    if sick == true
      true
    else
      false
    end
  end



end
