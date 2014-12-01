class Car

def drive(speed)
  @current_speed = speed   #@ can be used by other methods
end

def brake
  @current_speed / 10

  def current_speed=(current_speed)
    @current_speed = current_speed
    
  end

end

