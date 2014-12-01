require "sinatra"
require "sinatra/reloader"

# get '/calculator' do
#   erb :calculator, layout: :page
# end

get '/calculator' do
  @first_number = params[:first_number].to_f
  @second_number = params[:second_number].to_f
  @operator = params[:operator]


  @answer = case @operator
    when "Add"
      @first_number + @second_number
    when "Subtract"
      @first_number - @second_number
    when "Multiply"
      @first_number * @second_number
    when "Divide"
      @first_number / @second_number
    end


  erb :calculator, layout: :page
end

  # @add = @first_number + @second_number 
  # @subtract = @first_number - @second_number 
  # @multiply = @first_number * @second_number 
  # @divide = @first_number / @second_number 

  # when 'add'
  #  @add = @first_number + @second_number
  # when 'subtract'
  #  @subtract = @first_number - @second_number
  # when 'multiply'
  #  @multiply = @first_number * @second_number
  # when 'divide'
  #  @divide = @first_number / @second_number

  # @add = params[:Add] 
  # @subtract = params[:Subtract] 
  # @multiply = params[:Multiply]
  # @divide = params[:Divide]
