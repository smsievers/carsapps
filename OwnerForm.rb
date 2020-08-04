class OwnerForm < Form
    attr_accessor :owner
    def initialize
        name = get_info("What is your name?").capitalize
        date_of_birth = get_info("What is your date of birth (dd/mm/yyyy)?")
        phone = get_info("What is your phone number ((xxx)-xxx-xxxx)?")
        @owner = Owner.new(name, date_of_birth, phone)
    end
end