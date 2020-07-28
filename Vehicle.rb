require_relative "Form"
require_relative "Owner"
class Vehicle

    def initialize(owner,serialNumber, year, make, model, color, condition, date)
        @owner = owner
        @serialNumber = serialNumber
        @year = year
        @make = make
        @model = model
        @color = color
        @condition = condition
        @date = date
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
