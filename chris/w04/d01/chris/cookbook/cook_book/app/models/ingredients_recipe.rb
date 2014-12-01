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

class IngredientsRecipe < ActiveRecord::Base


  belongs_to :ingredient
  belongs_to :recipe

end
