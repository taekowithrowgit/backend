require './human'

  #Humanというクラスを使用して、tanakaという、インスタンスを作成します
  #Humanクラスに、引数（"田中 太郎",25,"電車"）を引き渡し、その結果がReturn（戻り値）として
  #tanakaに代入されます。
  #Humanというクラス内では、initializeメソッドにて、(name,age,hobby)にて、インスタンス変数が作成されます。
  #この、intializeメソッドは、一番最初に実行されます。その前に、
  #attr_accessorメソッドにて、Humanクラス内で取り扱い可能な変数（Hobby)をクラス内で定義しています。
  #Animalクラス内にて、変数(nameとage)が、定義されている
  #また、Humanクラスは、Animalクラスを継承している。
  #下記で、引数を各クラス内の変数に引き渡される。言い換えると、各シンボルが引数として与えられる。
  #シンボルとは、文字列に見えるが文字列で見えてるけど内部では数値として扱われている。
  #Rubyの内部実装では、メソッド名や変数名、定数名、クラス名など の`名前'を整数で管理管理される。
  #数値として扱う理由が処理速度が速まるからであるが、シンボルだとオブジェクト数が増えないからである

  
  tanaka = Human.new("田中 太郎",25,"電車")
  suzuki = Human.new("鈴木 次郎",30,"野球")
  sato = Human.new("佐藤 花子",20,"映画")

  #各インスタンスに対して、メソッドを呼び出す。
  tanaka.say
  tanaka.think
  suzuki.say
  suzuki.think
  sato.say
  sato.think

#下記行すべては間違えて記載したコード。無視。今回は、class Mainとか、Main.startというクラス内で行う必要はない。
#Main.start
# def self.start（Startというクラス内）
