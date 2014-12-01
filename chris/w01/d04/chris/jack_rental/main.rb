class Something
  attr_accessor :item

  def initialize
    self.item = item
    
  end

  def to_s
    string "this is an #{self.item}"
  end
end

puts Something