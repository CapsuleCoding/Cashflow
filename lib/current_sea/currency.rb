require 'pry'

class Currency
    attr_accessor :name, :to_dollars, :inverse
    @@all = []



   # def name
   #     @name #instance variable can be used 
   # end

     def self.all
        @@all 
     end

      def self.clear
        @@all=[]    
      end

    #def custom 
    #    "$#{dollars} would get you #{(dollars * inverse.to_f).round(2)} #{name}s"
    #end  

   # def multiply_by_rate(user_input, rate) #local variable
   #     user_input = gets.chomp() 
    #    "$#{user_input} would get you #{(user_input * rate.to_f).round(2)} #{@name}s"
    #    user_input
    #end

     def convert_from_us(dollars)
       
        "$#{dollars} would get you #{(dollars * inverse.to_f).round(2)} #{@name}s"
     end

     def convert_to_us(amount)
       
      "#{amount} of #{self.name} would get you #{(amount * self.to_dollars.to_f).round(2)} USD"
    end

      def self.create_all
        Scraper.get_page
      end

       def save
        @@all << self #
       end


    def self.names
        self.all.map do |currency|
            currency.name
        end
    end

     def self.find_by_name(input)
        self.all.find {|currency| currency.name.downcase == input.downcase}
     end




end








#Currency.all

#some_currency = Currency.new


#some_currency.name = " Euro"

#some_currency.name