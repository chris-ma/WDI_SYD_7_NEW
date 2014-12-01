class Car

    attr_accessor  :engine, :make, :model, :color, :current_speed #a way to get and set things

    def initialize (attr)
      @engine = attr[:engine]
      @make = attr[:make]
      @model = attr[:model]
      @color = attr[:color]
      self.current_speed = 0 #self calls a method, @ sets a variable
    end


    def current_speed
      return self.current_speed    
    end

     def set_current_speed(current_speed)
      self.current_speed = current_speed
     end



    def drive(speed)
      self.current_speed = speed      
    end


end

  vehicle  = Car.new({
  engine: "1.8L"
  make:"Toyota"
  model:"Corolla"
  color:"White"

    })

  vehicle.drive(120)
