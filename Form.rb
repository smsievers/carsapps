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