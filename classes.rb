class Customer 
    $global_customer = 30
    @@no_of_customer = 0
    def initialize(id, name, addr)
        @cust_id = id 
        @cust_name = name 
        @cust_addr = addr 
    end 
    def display()
        puts @cust_id 
        puts @cust_name 
        puts @cust_addr 
    end 
    def total_customers()
        @@no_of_customer += 1 
        puts "Total Customers: #@@no_of_customer" 
    end 
    def global_custom() 
        puts "Total Global : #$global_customer - #@@no_of_customer" 
    end 
end 

obj1 = Customer.new(23,"Sudhan","Salem") 
obj1.display()
obj1.total_customers()
obj1.global_custom()
obj2 = Customer.new(21, "Sudhan E D","Bangalore")
obj2.display()
obj2.total_customers()
#output 
# 23
# Sudhan
# Salem
# Total Customers: 1
# Total Global : 30 - 1
# 21
# Sudhan E D
# Bangalore
# Total Customers: 2
