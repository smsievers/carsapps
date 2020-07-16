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

form1= Form.new

form1.vehicle.owner.report
puts "hello"