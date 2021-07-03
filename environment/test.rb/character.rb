class Character
    #インスタンス変数
    attr_accessor :hp, :power
    
    def initialize(hp, power)
        self.hp = hp
        self.power = power
    end
    
#self.nameを呼び出すが、このnameは呼び出されないため、空にしておく

    def name
    ""
    end

    def attack(character)
        character.hp -= self.power
    puts "#{self.name}が#{character.name}を攻撃して、#{self.power}ポイントのダメージを与えた！"
    
      if character.hp < 0
        self.defeat(character)
      end
    
    end
    
    def defeat(character)
    puts "#{self.name}は、#{character.name}を倒した"
    end

end 
        