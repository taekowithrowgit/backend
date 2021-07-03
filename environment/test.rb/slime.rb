require './character'

class Slime < Character
  #クラス変数
  #クラスの種類そのものなので、最初から代入して、以後変更しない
  @@type = "スライム"
  
  attr_accessor :suffix
  
  def initialize(suffix)
    super(10,3)
    self.suffix =suffix
  end
  
  def name 
    #このスライムクラスの、クラス変数 type(スライム)を返す
  
  @@type + self.suffix
  
  end
  
  def self.description
  puts @@type + "は最弱のモンスターだ"
  
  end
end