require "sinatra"
require "mysql2"

get "/"do
    # MySQL のクライアントを Ruby プログラム上で作成し、Ruby と MySQL との通信を確保しています。
    # 確保した通信手段は、client という変数にインスタンスとして代入します。
    # ここが Ruby と MySQL の連携になります。
    # 今まではMySQLサーバに接続するためにターミナルからmysql -u rootとコマンドを実行していましたが、
    # 今回はRubyから接続するためコマンドを打つように Mysql2::Client.new(...) を実行しています。
    # Mysql2::Clientは外部ライブラリ
  client = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'booklist', encoding: 'utf8')
#   インスタンス変数　1行を1行を一つのインスタンスとして配列として返してくれる。（変数名が複数系）クラスの中に使えるのでインスタンス変数
# ＠がつくのは、クラスの外だけど使えるインスタンス変数　Classが書いていない。Class endとお約束。クラスの外。カーネルというクラスの中で走る。
# ＃getの外でつかっていて、＠マークで、erbからとりそせている。どこでも使える。
   @records = client.query("SELECT * FROM books ORDER BY created_at DESC")
   erb :booklist
end

post "/" do
    client = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'booklist', encoding: 'utf8')
    book_title= params["book_title"]
    statement = client.prepare("INSERT INTO books(book_title) VALUES(?)")
    statement.execute(book_title)
    @recods = client.query("SELECT * FROM books ORDER BY created_at DESC")
    erb :booklist

end