require_relative "Buy_Menu"
require_relative "Sell_Menu"
require_relative "Lot"

class Menu 
    attr_reader :lot
    def initialize
        @choice = ""
        @lot = Lot.new("The Lot")
    end

    def start
        puts "Welcome! What would you like to do?"
        puts "A) Buy a car"
        puts "B) Sell a car"
        puts "C) Exit"
        puts "Type: A/B/C: "
        input = gets.chomp
        @choice = input.capitalize

        if @choice == "A"
            buy = Buy_Menu.new(@lot)
            buy.display
        elsif @choice == "B"
            puts @lot.lot_title
            sell = Sell_Menu.new(@lot)
            sell.display
        elsif @choice == "C"
            puts "Have a nice day!"
            exit
        else 
            puts "Please enter a valid response."
        end
        start
    end
end
