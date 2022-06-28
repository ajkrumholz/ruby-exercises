class Dragon

attr_accessor :name, :color, :rider, :hungry, :meals

  def initialize(name, color, rider, hungry = true, meals = 0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
    @meals = meals
  end

  def hungry?
    if meals < 4
      hungry == true
    else
      hungry == false
    end
  end

  def eat
    @meals += 1
  end







end
