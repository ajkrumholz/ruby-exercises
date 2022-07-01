class Product < Array

  def initialize(item, price)
    @item = item
    @price = price
    self << item
    self << price
  end

end
