require_relative "form"
require_relative "vehicle"
class Lot
    
    attr_reader :vehicle, :lot_title, :results, :getter

    def initialize(lot_title, file = "cars.csv")
        @lot_title = lot_title
        @vehicles = []
        @getter = CSVGetter.new
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
    
    def load_inventory(file="cars.csv")
        @getter.read_file.each do |line|
            @vehicles.push(Vehicle.from_csv(line))
        end
    end

    def add_vehicle(vehicle)
        @getter.append(vehicle.to_csv)
        @vehicles.push(vehicle)
    end

    def display_inventory
        if @vehicles.size == 0
            puts "There are no vehicles on the lot."
        else
            @vehicles.each do |vehicle|
                puts vehicle 
            end
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