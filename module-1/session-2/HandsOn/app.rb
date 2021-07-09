Dir["./*.rb"].each {|file| require file }

jin = Hero.new("Jin Sakai", 100, 50)
archer = Archer.new("Mongol Archer", 80, 40)
swordsman = Swordsman.new("Mongol Swordsman", 100, 50)
spearman = Spearman.new("Mongol Spearman", 100, 50)

# Abstract
loop do
  dice = rand(1..3)
  break if jin.die? || archer.die? || archer.flee? || swordsman.flee? || spearman.flee? == true
  puts "==============="
  puts "The dice have been rolled and the game begins."
  puts "dice : #{dice}"
  puts(jin.to_s())
  puts(archer.to_s())
  puts(swordsman.to_s())
  puts(spearman.to_s())
  if dice == 1
    puts(jin.attack(archer))
    puts(archer.attack(jin))
  elsif dice == 2
    puts(jin.attack(swordsman))
    puts(swordsman.attack(jin))
  else
    puts(jin.attack(spearman))
    puts(spearman.attack(jin))
  end
end