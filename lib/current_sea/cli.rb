class CurrentSea::CLI

    def call
        system("clear")
        sleep(1)
        puts "Welcome to the Currency Trader"
        puts "For a list of currencies, type 'list' or 'exit' to exit."
        input = nil
         
        while input != "exit"


            input = gets.strip
            case input
            when "list"
                Currency.clear
                Currency.create
                Currency.list
                puts "\n\nWhich currency rate would you like to see ?"
                until input == "exit"
                    input = gets.strip

                    currency = Currency.find_by_name(input)

                    if currency != nil
                    puts " One dollar = #{currency.to_dollars} #{currency.name}{s} \n #{currency.inverse} #{currency.name}{s} converts to one dollar.\n\n"

                    elsif currency == nil && input != "exit"
                        puts " Not a Valid Selection"

                    elsif input == "list"
                        Currency.list
                        puts "\n\nWhich would you like to see rate for"
                    end
                end
             
            when "exit"
                exit
            else puts " Not a Valid Response"
            end
        end
    end
end
