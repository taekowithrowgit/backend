require './animal'
require './thinkable'

#親クラスAnimalを継承する
class Human < Animal
#attr_accessorとは、クラス内で取り扱い可能な変数をクラス内で定義するためのメソッドです。
#つまり、引数hobby自体は、クラス内の変数であり、hobbyを宣言する
attr_accessor :hobby
# Thinkableモジュールを呼び出す
include Thinkable

  def initialize(name,age,hobby)
  #Initializeは、同じメソッドを作成することができず、上書きされる。
  #superクラスによって、完全に消去せず、Animalを継承（再利用）する。もし、AnimalのInitializeメソッドを、このままself.name
  #self.ageと記載してしまうと、このinitialize(name,age,hobby)で上書き（消去）することになってしまう。
  super(name,age)
  self.hobby = hobby
  end
  
  #ここから下33行までは、間違えてしまったコードである。備忘録として記載する。
  #下記のようにベタ打ちで作成する必要はなく、mainにて、各引数を持つことが出来る
  # def initialize(name,age,hobby)
  #   self.name = "鈴木 次郎"
  #   self.age = 30
  #   self.hobby = "野球"
  #   puts "#{self.hobby}"
  # end
  
  # def initialize(name,age,hobby)
  #   self.name = "佐藤 花子"
  #   self.age = 20
  #   self.hobby = "映画"
  #   puts "#{self.hobby}"
  # end

end 


