class Character1
end

class Slime1 < Character1
end

character = Character1.new
puts character.class

slime = Slime1.new

puts slime.class    #Slime1
puts Slime1.superclass #Character1
puts slime.class.superclass #Character1
puts slime.class.superclass.superclass #Object
puts slime.class.superclass.superclass.superclass #BasicObject
puts slime.class.superclass.superclass.superclass.superclass
