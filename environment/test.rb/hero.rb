require './character'

class  Hero < Character
#クラスの種類そのものなので、最初から代入して以後変更しない
  @@type = "主人公"

  def initialize
    super(1000,30)
  end  

  def name
  #インスタンス変数ではなく、クラス変数を呼び出す
    @@type
  end

  def self.description
  puts @@type + "はこの世界を守る勇者だ"
  end
  
end

