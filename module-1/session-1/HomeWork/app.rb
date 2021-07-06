require_relative "hero.rb"
require_relative "enemy.rb"

jin = Hero.new("Jin Sakai", 100, 50)
khotun = Enemy.new("Khotun", 500, 50)
# Abstract
loop do
  puts "==============="
  puts(jin.to_s())
  puts(khotun.to_s())
  puts(jin.attack(khotun))
  puts(khotun.attack(jin))
  if jin.die? == true
    break
  elsif khotun.die? == true
    break
  end
end