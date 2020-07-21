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

class Lot():
    vehicles = []

    def __init__(self, title):
        self.title = title
        
    def addVehicle(self, vehicle):
        self.vehicles.append(vehicle)
        print(f"Vehicle {vehicle.serialNumber} was added to {self.title}. There are {len(self.vehicles)} vehicles on {self.title}.")

    def sellVehicle(self, vehicle):
        self.vehicles.remove(vehicle)
        print(f"Vehicle {vehicle.serialNumber} was sold from {self.title}. There are {len(self.vehicles)} vehicles on {self.title}.")

class Dealership():
    lots = []

    def __init__(self, title):
        self.title = title

    def addLot(self, lot):
        self.lots.append(lot)
        print(f" '{lot.title}' was added to {self.title}. There are {len(self.lots)} lots at {self.title}.")

    
    def blowUpLot(self, lot):
        self.lots.remove(lot)
        print(f"'{lot.title}' was D E T O N A T E D. There are {len(self.lots)} lots at {self.title}.")
