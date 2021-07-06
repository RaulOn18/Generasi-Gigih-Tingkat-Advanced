class Hero
  attr_accessor :name
  def initialize(name, hit_point, attack_damage)
    @name = name
    @hit_point = hit_point
    @attack_damage = attack_damage
  end
  def to_s
    return "#{@name} :\n\t#{@hit_point} hitpoint\n\t#{@attack_damage} attack damage."
  end

  def attack(other_person)
    other_person.take_damage(@attack_damage)
    return "#{@name} attacks #{other_person.name} with #{@attack_damage} damage."
  end
  def take_damage(damage)
    @hit_point -= damage
  end
  def die?
    if @hit_point <= 0
      puts "#{@name} dies."
      true
    end
  end
end