class Building 
  attr_accessor :style, :address, :apartment

    def initialize(style, address, apartment)
      self.style = style
      self.address = address
      self.apartment = apartment
    end

    def to_s
      puts "This is a #{self.style} #{self.apartment} at #{self.address}"
    end
end

