class CurrentSea::CLI

    def call
        system("clear")
        sleep(1)
        puts "Welcome to the Currency Trader"
        puts "For a list of currencies, type 'list' or 'exit' to exit."
        input = nil
        until input == "exit"
            input = gets.strip
            case input
            when "list"
                Currency.create
                Currency.list
                puts "Which currency would you like to convert?"
                input = gets.strip
                Currency.find_by_name(input)
            when "exit"
                exit
            end
        end
    end
end
