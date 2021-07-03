def add(a,b) 
return  a + b 
end

x = add(1,2)
puts x  

def fizzbuzz(num)
 if num % 15 == 0
    return "fizzbuzz"
 else
     return num
 end

end

puts fizzbuzz(1)
puts fizzbuzz(15)
