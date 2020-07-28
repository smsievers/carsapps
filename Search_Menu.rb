require_relative "lot"
require_relative "form"
require_relative "vehicle"
require_relative "menu"

class Search_Menu
    attr_reader :parameter
    
    def initialize(lot)
        @choice = ""
        @lot = lot
    end

    def display
        puts "Welcome to the search menu."
        puts "A) Search"
        puts "B) Back"
        puts "Type: A/B: "
        input = gets.chomp
        @choice = input.capitalize
        search_vehicles
    end

    def search_vehicles
        if @choice == "A"
            puts "Search Year/Make/Model/Color Here:"
            term = gets.chomp.upcase
            @lot.search(term)
        
        elsif @choice == "B"
            return

        else 
            puts "Please enter a valid response."
            self.display
        end

    end
end