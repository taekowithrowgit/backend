# def fizzbuzz(num)
#   num_max = 100
#   (1..num_max).each do |number|
#     if number % 15 == 0
#       puts "FizzBuzz"
#     elsif number % 3 == 0
#       puts "Fizz"
#     elsif number % 5 == 0
#       puts "Buzz"
#     else
#       puts number
#     end
#   end
# end

# fizzbuzz(num)

# 1回名の提出にて間違えていたところ、下記は、zizzbuzzメソッド内に、Putsを入れている。ループ内に入れるべきである。
def fizzbuzz(result)
  
  if result % 15 == 0 
  return "FizzBuzz"  
  elsif result % 3 == 0
  return "Fizz"
  elsif result % 5 == 0
  return "Buzz"
  else
  return result
  end

end

  num_max = 100
 (1..num_max).each do |number|
 puts fizzbuzz(number)
 end

# def fizzbuzz()

#   num_min = 1
#   num_max = 100
#   (num_min..num_max).each do |number|
#     result = number
  
#   if result % 15 == 0 
#   puts "FizzzBuzz"
#   elsif result % 3 == 0
#   puts "Fizz"
#   elsif result % 5 == 0
#   puts "Buzz"
#   else
#   puts result
#   end
