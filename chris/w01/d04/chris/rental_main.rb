
class Person 

attr_accessor :name, :age, :gender, :apartment

  def initialized (name, age, gender, apartment)
  self.name = name
  self.age = age
  self.gender = gender
  self.apartment = apartment
  end
end

class Building <Person
  attr_accessor :style, :address, :lift, :num_floors, :apartment, :parking

def initialize(style, address, lift, num_floors, apartment, parking)
  self.style = style
  self.address = address
  self.lift = lift
  self.num_floors = num_floors
  self.apartment = apartment
  self.parking = parking
end

end

class Apartment <Person
  attr_accessor  :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialized (price, is_occupied, sqft, num_beds, num_baths, renters)
  self.price = price
  self.is_occupied = is_occupied
  self.sqft = sqft
  self.num_beds = num_beds
  self.num_baths = num_baths
  self.renters = renters
end