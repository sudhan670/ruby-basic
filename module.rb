module Gfg
    C = 90;
    def Gfg.hello 
        puts "hello world"
    end 
    def Gfg.definition 
        puts "description"
    end 
    def Gfg.definition 
        puts "describe"
    end 
end 
# :: scope resolution mobitor 
puts Gfg::C 
Gfg.hello 
Gfg.definition