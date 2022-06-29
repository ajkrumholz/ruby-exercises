

class Wallet < Array

  def initialize
    @coins = {:penny => 0, :nickel => 0, :dime => 0, :quarter => 0}
    @cents = 0
  end

  def cents
    sum = 0
    @coins.each do |k,v|
      if k == :penny
        sum += v
      elsif k == :nickel
        sum += v*5
      elsif k == :dime
        sum += v*10
      elsif k == :quarter
        sum += v*25
      end
    end
    return sum
  end

  def << (money)
    @coins[money] += 1
  end

  def take(*args)
    args.each do |arg|
      if @coins[arg] > 0
        @coins[arg] -= 1
      end
    end
  end

end
