Dir['./jin-allies/*.rb'].each { |file| require_relative file }
Dir['./mongol-soldiers/*.rb'].each { |file| require_relative file }
Dir['./*.rb'].each { |file| require file }

# Jin and allies
jin = Jin.new('Jin Sakai', 100, 50)
yuna = Yuna.new('Yuna', 90, 45)
ishikawa = Ishikawa.new('Sensei Ishikawa', 80, 60)

# Mongol Soldiers
archer = Archer.new('Mongol Archer', 80, 40)
swordsman = Swordsman.new('Mongol Swordsman', 100, 50)
spearman = Spearman.new('Mongol Spearman', 100, 50)

index = 0 # index of turn

# def turn

# end

# Abstract
loop do
  break if jin.die? || archer.flee? || swordsman.flee? || spearman.flee? == true
  index += 1
  puts("=============== Turn #{index} ===============")
  # all info of object
  puts(jin.to_s())
  puts(yuna.to_s())
  puts(ishikawa.to_s())
  puts(archer.to_s())
  puts(swordsman.to_s())
  puts(spearman.to_s())
  # battlefield
  puts('=============== battlefield ===============')
  # turn()
  puts('As Jin Sakai, what do you want to do this turn?')
  puts('1) Attack an enemy')
  puts('2) Heal an ally')
  turn1 = gets.chomp.to_i

  if turn1 == 1
    puts('Which enemy you want attack?')
    puts('1) Mongol Archer')
    puts('2) Mongol Spearman')
    puts('3) Mongol Swordsman')
    turn2 = gets.chomp.to_i
    if turn2 == 1
      puts(jin.attack(archer))
    elsif turn2 == 2
      puts(jin.attack(spearman))
    else
      puts(jin.attack(swordsman))
    end
  else
    puts('Which enemy you want attack?')
    puts('1) Yuna}')
    puts('2) Sensei Ishikawa')
    turn2 = gets.chomp.to_i
    if turn2 == 1
      puts(jin.heal(yuna))
    elsif turn2 == 2
      puts(jin.heal(ishikawa))
    end
  end
end

