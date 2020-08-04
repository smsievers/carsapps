class VehicleForm < Form
    attr_accessor :vehicle
    def initialize
        serialNumber = get_info("Please provide the vehicle's serial number:")
        year = get_info("What model year is your vehicle?")
        make = get_info("What make is your vehicle?").capitalize
        model = get_info("What is the model of your vehicle?").capitalize
        color = get_info("What color is your vehicle?").capitalize
        condition = get_info("What condition is your vehicle in?").capitalize
        @vehicle = Vehicle.new(serialNumber, year, make, model, color, condition)
        
    end
end