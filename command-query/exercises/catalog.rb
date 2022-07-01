class Catalog < Array

  def initialize
  end

  def cheapest
    hash = self.to_h
    hash.key(hash.values.min)

  end

end
