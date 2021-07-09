require_relative "hero.rb"
class Enemy < Hero
  attr_accessor :name
  def initialize(name, hit_point, attack_damage)
    super
    @random = rand(1-100)
  end
  
  def to_s
    "#{@name} :\n\t#{@hit_point} hitpoint\n\t#{@attack_damage} attack damage.\n\t#{@random} miss"
  end

  def attack(other_person)
    if @random >= 80
      @random -= 10
      return "#{other_person.name} deflects"
    else
      super(other_person)
    end
  end

  # no need to override
  # def take_damage(damage)
  #   # @hit_point -= damage
  #   super
  # end
  
  # No need to override
  # def die?
  #   # if @hit_point <= 0
  #   #   puts "#{@name} dies."
  #   #   true
  #   # end
  #   super
  # end
end