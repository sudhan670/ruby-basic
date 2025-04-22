module Arithmetic
    def add(a,b)
        puts a+b 
    end 
    def subtract(a,b)
        puts a-b
    end 
    def multiply(a,b)
        puts a*b
    end 
    def divide(a,b)
        puts a/b 
    end
end 
module Advanced 
    def reminder(a,b)
        puts a%b 
    end  
end 

class Calculator 
    include Arithmetic 
    include Advanced 
end 

calculator = Calculator.new
loop do 
    print "Enter first number: "
    a = gets.chomp
    a = a.to_f
    print "Enter second number: "
    b = gets.chomp
    b = b.to_f
    puts('Enter the Operation By a,s,m,d,r')
    puts('For exit put e')
    operation = gets.chomp
    case operation.downcase
    when 'a'
        calculator.add(a,b)
    when 's'
        calculator.subtract(a,b)
    when 'm'
        calculator.multiply(a,b)
    when 'd'
        calculator.divide(a,b)
    when 'r'
        calculator.reminder(a,b)
    when 'e'
        puts('exiting')
        break
    end 
end
