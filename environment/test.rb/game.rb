require './slime'
require './hero'

 
class Game
  def self.start
    hero = Hero.new
    slime_A = Slime.new('A')

    slime_A.attack(hero)
    hero.attack(slime_A)
  end
end

Game.start