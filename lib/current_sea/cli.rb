class CurrentSea::CLI

    def call
        system("clear")
        sleep(1)
        puts " Hello There, My name is Jarvis and I'll be assisting you today"
        sleep(3)
        system("clear")
        puts "In this app you'll get an idea of how much the US Dollar $$$$ is worth around the world!"
        sleep(5)
        system("clear")
        puts " Created By Christopher Griffin"
        sleep(4)
        system("clear")
        sleep (2)
        puts "Welcome to the WorldWide Currency Trader!" 
        puts "\n\nYou can browse different currencies from around the world \nand get a sense of how much your US Dollar is worth"
        puts "\nFor a list of currencies, type 'list' or 'exit' to exit."
        input = nil
        Currency.create_all
        while input != "exit"
           


            input = gets.strip
            case input
            when "list"          
                puts Currency.names
                puts "\n\nType In Full Name of Currency to See Conversion!"
            
        

                until input == "exit"
                    input = gets.strip

                    currency = Currency.find_by_name(input)

                    if currency != nil
                
                    
                    puts " One dollar = #{currency.inverse} #{currency.name}{s} \n #{currency.to_dollars} #{currency.name}{s} converts to one dollar.\n\n"
                    puts currency.convert_from_us(5)
                    puts currency.convert_from_us(10)
                    puts currency.convert_from_us(20)
                    puts currency.convert_from_us(50)
                    puts currency.convert_from_us(100)
                    puts currency.convert_from_us(500)
                    puts currency.convert_from_us(1000)
                    puts currency.convert_from_us(5000)
                    puts currency.convert_from_us(10000)
                    puts currency.convert_from_us(50000)
                    puts "'List' or 'Exit'"


                
                    elsif input == "list"
                        puts Currency.names
                        puts "\n\n Choose a currency from the list, or type 'Exit' to exit!" 
                    #elsif input != nil
                         # puts "Invalid Response"
                    elsif input == "exit"
                        puts "Thank You Come Again Later"
                    end
                end
             
            when "exit"
                exit

            end
        end
    end
end

    #elsif currency == nil && input != "list"
                       # puts " Not A Valid Selection"

 #elsif input = "custom"
                      #  puts "Enter an Dollar Amount without" 
                       # user_input = gets.chomp()
                       # result = user_input * (rate / 100)
                       # puts currency.multiply_by_rate

                  # when "custom"
              #  "$#{dollars} would get you #{(dollars * inverse.to_f).round(2)} #{name}s"
              #  puts "'List' 'Custom' or 'Exit'"
                   # puts "enter a number: "
                   # num1 = gets.chomp()
                   # puts "enter another number"
                   # num2 = gets.chomp()

                   # puts (num1 * num2)
