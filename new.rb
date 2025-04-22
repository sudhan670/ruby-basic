puts "hello" 
class Blog
    def initialize(article_id,article_title,articledescription) 
        puts article_id
        puts article_title 
        puts articledescription 
    end 
end  
first_article = Blog.new(1,"rapster","article")
 
class Vehicle 
    def put_output
        puts "Hello Everyone"
    end 
end 

class Bike < Vehicle 
end 

doer = Bike.new 
puts doer.put_output