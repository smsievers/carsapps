import datetime
import time

class Form:
    def __init__(self):
        self.vehicle = Vehicle()
        self.vehicle.serialNumber = input("What is your car's serial number?")
        self.vehicle.year = input("What is your car's model year?").capitalize()
        self.vehicle.make = input("What is your car's make?").capitalize()
        self.vehicle.model = input("What is your car's model?").capitalize()
        self.vehicle.color = input("What color is your car?").capitalize()
        self.vehicle.condition = input("What condition is your car in?")
        self.vehicle.date = datetime.date.today().strftime('%d/%m/%Y')

class Vehicle:
    def __init__(self):
        self.owner = Owner()
        self.owner.name = input("What is your name?").capitalize()
        self.owner.dateOfBirth = input("What is your date of birth (dd/mm/yyyy)?")
        self.owner.phone = input("What is your phone number ((xxx)-xxx-xxxx)?")
    
    def report(self):
        print(f"The vehicle is a {self.color} {self.year} {self.make} {self.model}. It was purchased on {self.date} and is in {self.condition} condition.")
    

class Owner:
    def __init__(self):
        self
        
    def report(self):
        print(f"The owner of the vehicle is {self.name}. (S)He was born on {self.dateOfBirth} and can be reached at {self.phone}")

