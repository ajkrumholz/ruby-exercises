class Person

  attr_accessor :name, :stoned

  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    @stoned
  end
end

class Medusa

  attr_accessor :name, :statues

  def initialize(name, statues = [])
    @name = name
    @statues = statues
  end

  def stare(victim)
    @statues.push(victim)
    victim.stoned = true
      if statues.count > 3
        statues[0].stoned = false
        statues.shift

      else
      end
  end


end
