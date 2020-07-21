require_relative "Menu"
require_relative "Search_Menu"
require_relative "Inventory"
require_relative "Sell_Menu"


class Buy_Menu
    def initialize(lot)
        @choice = ""
        @lot = lot
    end

    def display
        puts "Welcome to the buy menu."
        puts "A) Search"
        puts "B) Display Inventory"
        puts "C) Back"
        puts "Type: A/B/C: "
        input = gets.chomp
        @choice = input.capitalize

        if @choice == "A"
            search = Search_Menu.new
            search.display
        elsif @choice == "B"
            @lot.display_inventory
        elsif @choice == "C"
            return
        else 
            puts "Please enter a valid response."
            self.display
        end

    end
end