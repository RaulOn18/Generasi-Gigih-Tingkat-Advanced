require_relative "../mongol"
class Spearman < Mongol
  def attack(other_person)
    puts "#{@name} thrust #{other_person.name} with #{@attack_damage} damage"
    other_person.take_damage(@attack_damage)
  end
end
