class Martabak
  attr_accessor :topping

  def initialize(topping)
    @topping = topping
  end

  def taste
    case topping
    when 'telor'
      "Martabak #{topping} is salty"
    when 'cokelat'
      "Martabak #{topping} is sweet"
    else
      "Martabak #{topping} is not martabak"
    end
  end
end
