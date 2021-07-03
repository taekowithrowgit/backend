#下記は、こんにちわと表示するプログラムです
puts "こんにちわ"
=begin
複数行をコメントアウトすることができる
＃は一行だけのようだ

hensuu =  "何らかのデータ"
puts hensuu
hensuu = "書き換えたデータ"
puts hensuu

dayhours = 24
minutes = 60
min_second = 60

dayseconds = dayhours * minutes * min_second 
puts dayseconds


fruits =["りんご", "ばなな","オレンジ"] 
puts fruits[1]
fruits.each do |fruit|
  puts fruit
end

result = (1 == 1) && (2 == 2)
puts result

if 10 > 5
  puts "正解"
end
  
if 10 <= 5
  puts "不正解"
end

if 10 == 5
  puts "表示されない"

else
  puts "表示される"
end



number = rand(10)

if number == 0
  puts number.to_s + "なので、無を指します"

elsif number < 3  
  puts number.to_s + "は3より少ない数です" 

elsif number < 8
    puts number.to_s + "は8より小さい数です"
  
else 
   puts number.to_s + "は、10に近い数字です"  
   
end
   


10.times do

number = rand(10)

case number 

when 3 then 

  puts number.to_s + "は、３である。"
when 4 then
  puts number.to_s + "は、４である。"

when 8 then 
  puts number.to_s + "は、８である。"

  else 
  puts "それ以外の数字です。"
  
end

end

i = 1

while i <= 5
puts i
i += 1
end


[1,2,3,4,5,].each do |number|
  puts number
end

(1..5).each do |number|
  puts number 
end

fruits = ["apple", "banana" , "grapes"]
fruits.each do |fruits|
  puts fruits
end
=end 

#メソッドをdefで定義する

def sum
  result = 0
  (1..9).each do |number|
  result += number
  end
  
  puts result
end  

#メソッドを呼び出す
sum()


def sum(a,b)
  result = 0
  (a..b).each do |number|
    result += number
end

sum1 = sum(1,9)
sum2 = sum(1,3)
sum3 = sum(2,5)

taeko = sum1.to_s

puts "1番目の計算は" + sum1.to_s + "です。"
puts "2番目の計算は" + sum2.to_s + "です。"
puts "3番目の計算は" + sum3.to_s + "です。"

 

def sum(a, b)
  result = 0
  (a..b).each do |number|
    result += number
    puts  "This is " + result.to_s
  end

result

end

# メソッドを呼び出し

puts sum(2,sum(1,3))



#メソッドの定義
def methodA
  puts "hello"
end

#メソッドの呼び出し
(1..10).each do |num|
  puts methodA
end

#メソッドの定義
def methodA
  puts "hello"
end

#メソッドの呼び出し
(1..10).each do |num|
  methodA
end
