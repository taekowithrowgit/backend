#親クラスとなる
#クラスとモジュールは上書きできないのでAnimalは、大文字にする
class Animal
  #Animalクラス内で使用る、nameとageといった変数を宣言する。
    attr_accessor :name , :age
  # この部分をinitializeメソッドを使って初期化する
  def initialize(name,age)
    #selfクラスにて、自分のインスタンスを作成
    self.name =name
    self.age  =age
  end

#Sayの後には、なにもつかない。所謂ゼロ引数である。
#これは、引数を受け取る必要のないメソッドなので、（）は省略ができる。引数を受け取らないメソッド＝ゼロ引数。
  def say()
      puts "#{self.name}です。#{self.age}です。"
  end
end


# 以下は動作確認のための記述です。
# animal = Animal.new('田中 太郎', 25)  
# animal.say