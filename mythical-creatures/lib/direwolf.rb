class Direwolf

  attr_accessor :name, :home, :size, :starks_to_protect

  def initialize(name, home = 'Beyond the Wall', size = 'Massive', starks_to_protect = [])
    @name = name
    @home = home
    @size = size
    @starks_to_protect = starks_to_protect
    @hunts_white_walkers = true
  end

  def protects(stark)
    if stark.location == @home
      if @starks_to_protect.size < 2
        @starks_to_protect.push(stark)
        stark.safe = true
        @hunts_white_walkers = false
      end
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    stark.safe = false
    @starks_to_protect.delete(stark)
#    return stark
  end


end

class Stark

  attr_accessor :name, :location, :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def house_words
    'Winter is Coming'
  end

end
