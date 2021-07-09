require_relative "mongol"
class Swordsman < Mongol
  def attack(other_person)
    puts "#{@name} slashes #{other_person.name} with #{@attack_damage} damage"
    other_person.take_damage(@attack_damage)
  end
end
