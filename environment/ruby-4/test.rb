
require "erb"

#Time.nowで現在時刻を示すメソッドを、文字列に埋め込む
#%=だと実行する。%のみだと、実行するが表示しない
def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang = "ja">
  <head>
    <meta charset ="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <p><%= Time.now %></p>
    <% name = "妙子" %>
    <% time_japan = Time.now.getlocal("+09:00")%>
    <p>今は<%=time_japan.hour%>時<%=time_japan.min%>分です。<p>
    <% now_hour = time_japan %>
    <% if 6<= time_japan.hour && time_japan.hour < 12 %>
      <p> おはよう。<%= name%>さん</p>
    <% elsif 12<= time_japan.hour && time_japan.hour < 18 %>
      <p> こんにちわ。<%= name%>さん</p>
    <% else %>
      <p> こんばんわ。<%= name%>さん</p>
    <% end %>
    
    <ul>
    <% (1..9).each do |number|%>
    <li><%= number%></li>
    <% end %>
    </ul>
  </body>
</html>
  PAGE
end

#大文字：クラスとモジュールは大文字。小文字：メソッドと変数は小文字にするルールである。
#クラスとモジュールは定数であり、定数は大文字という規則がある
#ERBは、Rubyの標準のライブラリ
#erb =ERB.new(web_page)は、ERBオブジェクトのインスタンスを生成する
erb =ERB.new(web_page)
result = erb.result
puts result
