class Form    
    def initialize
        @vehicle = Vehicle.new
        @vehicle.serialNumber = get_info("Please provide the vehicle's serial number:")
        @vehicle.year = get_info("What model year is your vehicle?")
        @vehicle.make = get_info("What make is your vehicle?").capitalize
        @vehicle.model = get_info("What is the model of your vehicle?").capitalize
        @vehicle.color = get_info("What color is your vehicle?").capitalize
        @vehicle.condition = get_info("What condition is your vehicle in?").capitalize
        @vehicle.date = Time.new.strftime("%d/%m/%Y")
        
    end

    attr_reader :vehicle, :owner

    def get_info(words)
        puts "#{words}"
        info = gets.chomp
    end

end

class Vehicle

    def initialize
        @owner = Owner.new
        @owner.name = get_info("What is your name?").capitalize
        @owner.date_of_birth = get_info("What is your date of birth (dd/mm/yyyy)?")
        @owner.phone = get_info("What is your phone number ((xxx)-xxx-xxxx)?")
    end

    attr_accessor :serialNumber, :year, :make, :model, :color, :condition, :date, :vehicle

    attr_reader :owner

    def get_info(words)
        puts "#{words}" 
        info = gets.chomp
    end

    def report
        puts "Vehicle #{@serialNumber} is a #{@color} #{@year} #{@make} #{@model}. It was purchased on #{@date} and is in #{@condition} condition."
    end

end

class Owner

    attr_accessor :name, :date_of_birth, :phone, :owner, :vehicle

    def report
        puts "The owner of the vehicle is #{@name}. (S)he was born on #{@date_of_birth}, and can be reached at #{@phone}."
    end

end

class Lot
    
    attr_reader :vehicle, :lot_title

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
end

class Dealership
    attr_reader :lot_title

    def initialize(dealership_name)
        @dealership_name = dealership_name
        @address = get_info("What is the dealership's full mailing address?")
        @lots = []
    end

    def get_info(words)
        puts "#{words}" 
        info = gets.chomp
    end

    def add_lot(a_lot)
        @lots.push(a_lot)
        puts "A lot named \"#{a_lot.lot_title}\" was added to #{@dealership_name}. There are #{@lots.size} lots at #{@dealership_name}."
    end

    def blow_up_lot(a_lot)
        @lots.delete_at(@lots.index(a_lot))
        puts "Lot \"#{a_lot.lot_title}\" was D E T O N A T E D. There are #{@lots.size} lots at #{@dealership_name}."
    end
end

lot1 = Lot.new("East Lot")

form1 = Form.new

lot1.add_vehicle(form1.vehicle)
form1.vehicle.report
lot1.sell_vehicle(form1.vehicle)

dealership1 = Dealership.new("Jim's Junkers")

dealership1.add_lot(lot1)

dealership1.blow_up_lot(lot1)