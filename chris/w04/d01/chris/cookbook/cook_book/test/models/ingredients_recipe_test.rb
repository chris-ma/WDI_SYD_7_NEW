# == Schema Information
#
# Table name: ingredients_recipes
#
#  id            :integer          not null, primary key
#  ingredient_id :string(255)
#  recipe_id     :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class IngredientsRecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
