class Apartment 
  attr_accessor  :price, :is_occupied, :renters
    def initialized (price, is_occupied, renters)
    self.price = price
    self.is_occupied = is_occupied
    self.renters = renters
    end

    def to_s
      print "This is an #{is_occupied} property with #{renters} at $#{price} "
    end

   
end

