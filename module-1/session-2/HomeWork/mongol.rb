require_relative 'hero'
class Mongol < Hero
  attr_accessor :name

  def initialize(name, hit_point, attack_damage)
    super(name, hit_point, attack_damage)
    @flee_percentage = 0.5
    @fled = false
  end

  def take_damage(damage)
    @hit_point -= damage
    if @hit_point <= 50
      flee if rand < @flee_percentage
    end
  end

  def flee
    @fled = true
    puts " #{@name} has fled the battlefield with #{@hit_point} left"
  end

  def flee?
    @fled
  end
end
