require_relative "form"
require_relative "vehicle"
class Lot
    
    attr_reader :vehicle, :lot_title, :results

    def initialize(lot_title)
        @lot_title = lot_title
        @vehicles = []
    end

    def add_vehicle(a_vehicle)
        @vehicles.push(a_vehicle)
        puts "#{a_vehicle.serialNumber} was added to the #{@lot_title}. There are #{@vehicles.size} vehicles on the lot."
    end

    def sell_vehicle(a_vehicle)
        @vehicles.delete_at(@vehicles.index(a_vehicle))
        puts "Vehicle #{a_vehicle.serialNumber} was sold from the #{@lot_title}. There are #{@vehicles.size} vehicles on the lot."
    end

    def to_s
       "Vehicle #{a_vehicle.serialNumber}: Color: #{a_vehicle.color} Year: #{a_vehicle.year} Make: #{a_vehicle.make} Model: #{a_vehicle.model} Condition: #{a_vehicle.condition}"
    end

    def display_inventory
        @vehicles.each do |vehicle|
            puts vehicle 
        end
    end
    
    def search(term)
        @results = @vehicles.select do |v|
            v.color.upcase == "#{term}" ||
            v.year == "#{term}" ||
            v.make.upcase == "#{term}" ||
            v.model.upcase == "#{term}"
        end
        puts @results
    end
end