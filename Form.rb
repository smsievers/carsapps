class Form    
    def initialize
        name = get_info("What is your name?").capitalize
        date_of_birth = get_info("What is your date of birth (dd/mm/yyyy)?")
        phone = get_info("What is your phone number ((xxx)-xxx-xxxx)?")
        serialNumber = get_info("Please provide the vehicle's serial number:")
        year = get_info("What model year is your vehicle?")
        make = get_info("What make is your vehicle?").capitalize
        model = get_info("What is the model of your vehicle?").capitalize
        color = get_info("What color is your vehicle?").capitalize
        condition = get_info("What condition is your vehicle in?").capitalize
        date = Time.new.strftime("%d/%m/%Y")
        @owner = Owner.new(name, date_of_birth, phone)
        @vehicle = Vehicle.new(@owner, serialNumber, year, make, model, color, condition, date)
        
    end

    attr_reader :vehicle, :owner

    def get_info(words)
        puts "#{words}"
        info = gets.chomp
    end

end