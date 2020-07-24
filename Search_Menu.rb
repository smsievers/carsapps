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
        puts "A) Search By: Color"
        puts "B) Search By: Year"
        puts "C) Search By: Make"
        puts "D) Search By: Model"
        puts "E) Back"
        puts "Type: A/B/C/D/E: "
        input = gets.chomp
        @choice = input.capitalize
        search_vehicles
    end

    def search_vehicles
        if @choice == "A"
            puts "Enter Color:"
            parameter = gets.chomp.upcase
            @lot.search_color(parameter)

        elsif @choice == "B"
            puts "Enter Year:"
            parameter = gets.chomp
            @lot.search_year(parameter)

        elsif @choice == "C"
            puts "Enter Make:"
            parameter = gets.chomp.upcase
            @lot.search_make(parameter)

        elsif @choice == "D"
            puts "Enter Model:"
           parameter = gets.chomp.upcase
            @lot.search_model(parameter)
        
        elsif @choice == "E"
            return

        else 
            puts "Please enter a valid response."
            self.display
        end

    end
end