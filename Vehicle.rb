require_relative "Form"
require_relative "Owner"
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

    def to_s
        "Vehicle #{@serialNumber}: Color: #{@color} Year: #{@year} Make: #{@make} Model: #{@model} Condition: #{@condition}"
    end
end
