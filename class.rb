# class Dog 
#     def bark 
#         puts 'Woof'
#     end 
# end 

# fido = Dog.new 
# fido.bark 
class Dogs
    def initialize(name)
        @name = name 
    end 
    def get_name 
       puts(@name) 
    end 
end 
fido = Dogs.new('Fido')
fido.get_name 

#Inheritance 
class Cat 
    def initialize(name)
        @name = name 
    end 
    def move
        puts "#{@name}"
    end 
end 
class Lion < Cat 
    def roar
        puts "#{@name} Lion Roar"
    end 
end 
L = Lion.new("Simba")
L.move
L.roar

# Polymorphism 
class Poly 
    def initialize(shape)
        @shape = shape 
    end 
    def triangle 
        puts "#{@shape} triangle is 3 sides"
    end 
end 
class Extract < Poly 
    def triangle 
        super + "Hemisphere"
    end 
end 

class Rhombus < Poly 
    def triangle
        super + "rhombus"
    end 
end 

fido = Extract.new('Semihemisphere')
measure = Rhombus.new('roko')
puts fido.triangle