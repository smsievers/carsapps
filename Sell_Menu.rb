require_relative "Menu"
require_relative "Buy_Menu"
require_relative "Form"
require_relative "Menu"
require_relative "Lot"
require_relative "Vehicle"

class Sell_Menu
    def initialize(lot)
        @choice = ""
        @lot = lot
    end

    def display
        puts "Welcome to the sell menu."
        puts "A) Sales form"
        puts "B) Back"
        puts "Type: A/B: "
        input = gets.chomp
        @choice = input.capitalize

        if @choice == "A"
            form = VehicleForm.new
            @lot.add_vehicle(form.vehicle)
            @lot.display_inventory
        elsif @choice == "B"
            sell = Sell_Menu.new
            sell.display
        elsif @choice == "C"
            return
        else 
            puts "Please enter a valid response."
            self.display
        end

    end
end