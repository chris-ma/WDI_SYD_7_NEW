class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)  #-----> 'splat'* turns it into an array. Used only for looping situation
    # your code here
the_order = orders[0]

  end
end

rest = Restaurant.new(
{
rice:3,
noodles:2
})
puts rest.cost({
rice:1,
noodles:1

  })