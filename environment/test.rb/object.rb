=begin
class Slime
  attr_accessor :type, :hp, :power
  
  #初期化用のメソッド
  def initialize
    self.type = "スライム"
    self.hp = 10
    self.power = 3
  end
  
  #オブジェクトのメソッド
  def attack(character_name)
    puts "#{self.type}が#{character_name}を攻撃して、#{self.power}ポイントのダメージを与えた！"
  end
  
end

slime_A = Slime.new
slime_A.attack("主人公")

p slime_A

#suffixの話をここでしている

class Slime
  attr_accessor :type, :hp, :power, :suffix
  
  def initialize (suffix)
  self.type = "スライム"
  self.hp ="10"
  self.power = "3"
  self.suffix = suffix
  
  end
  
  def name 
    self.type + self.suffix #スライム個体の名前は、 'スライムA' など 'スライム' + 'A' (suffix) とする
  end
  
  def attack(character_name)
     # self.type ではなく、 self.name を呼び出す
     puts "#{self.name}が#{character_name}を攻撃して#{self.power}ポイントのダメージを与えた！"
  end
  
end

slime_A = Slime.new('A')    # suffix 引数による初期化
slime_A.attack('主人公')

=end

#継承の話3

class Character 
  attr_accessor :type, :hp, :power
  

  def initialize(type,hp,power)
    self.type = type
    self.hp = hp
    self.power =power 
  end
  
  def name
    self.type
  end
  
  def attack(character)
    character.hp -= self.power
    puts "#{self.name}が#{character.name}を攻撃して、#{self.power}のダメージを与えた！"
    
    if character.hp <= 0
      self.defeat(character)
    end
 end
  
  def defeat(character)
    puts "#{self.name}は、#{character.name}を倒した"
  end
  
end
 
 
 class Slime < Character
   attr_accessor :suffix
   
   def initialize(suffix)
     super("スライム",10,3)
     self.suffix = suffix
     
   end
   
   def name
     super + self.suffix
    end
  
end

class Hero < Character
  def initialize
  super("主人公", 1000, 30)

  end
end

hero = Hero.new
slime_A = Slime.new("A")

slime_A.attack(hero)
hero.attack(slime_A)
    


  #クラスメソッドの話

class Character
  attr_accessor :hp, :power
  
  def initialize(hp,power)
    self.hp = hp
    self.power = power
    
  end
  
  #このnameは呼び出されないので、""を返すだけ
  
  def name
    ""
  end
  
  def attack (character)
    character.hp -= self.power
  puts "#{self.name}が #{character.name}を攻撃して、#{self.power}ポイントのダメージを与えた" 
  
    if character.hp <= 0
      self.defeat(character)
    end
  
  end
  
  def defeat(character)
    puts "#{self.name}は、#{character.name}を倒した"
  end
end

class Slime < Character
@@type ="スライム"

attr_accessor :suffix

  def initialize(suffix)
    super(10,3)
    self.suffix =suffix
  end

  def name
    @@type + self.suffix
  end

  def self.description
    puts @@type + "は最弱モンスターだ"
  end

end
  
  class Hero < Character
    @@type = "主人公"
    
  def initialize
    super(1000,30)
  end
  
  def name 
    @@type
  end
  
  def self.description
  puts @@type + "は、この世界を守る勇者だ！"
  end
  
end

hero =Hero.new
slime_A = Slime.new("A")

slime_A.attack(hero)
hero.attack(slime_A)

Hero.description
Slime.description



