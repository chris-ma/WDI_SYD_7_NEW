class RecipesController < ApplicationController
 def index
    @recipes = Recipe.all 
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save #If recipe saved correctly in the db
      redirect_to recipe_path(@recipe) #Redirect that @book's path
    else 
      render :new #Else it will render the 'new.html.erb' view
    end
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def edit
    @recipe = Recipe.find params[:id]
  end


  def update
    @recipe = Recipe.find params[:id]
    if @recipe.update(recipe_params)
      redirect_to @recipe         
    else
      render :edit
    end 
  end


  def destroy
    @recipe = Recipe.find params[:id]
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name,
                                 :course, 
                                 :cooktime,
                                 :servingsize,
                                 :instructions,
                                 :image,
                                 :book_id
                                )
  end
end
