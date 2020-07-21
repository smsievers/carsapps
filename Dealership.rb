require_relative "Lot"


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
