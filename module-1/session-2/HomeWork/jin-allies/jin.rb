require_relative "../hero"
class Jin < Hero
  def initialize(ame, hit_point, attack_damage)
    super
    @potion = 20
  end

  def to_s
    # "#{@name} :\n\t#{@hit_point} hitpoint\n\t#{@attack_damage} attack damage\n\t#{@potion}% potion"
    "#{super}\n\t#{@potion}% potion"
  end
  def heal(other_person)
    other_person.hit_point += @potion
    puts "#{@name} heals #{other_person.name} restoring #{@potion}hitpoints."
  end
end