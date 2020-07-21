require_relative "Form"
require_relative "Vehicle"
class Owner

    attr_accessor :name, :date_of_birth, :phone, :owner, :vehicle

    def report
        puts "The owner of the vehicle is #{@name}. (S)he was born on #{@date_of_birth}, and can be reached at #{@phone}."
    end

end
