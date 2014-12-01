class BooksController < ApplicationController
  def index
  	@books = Book.all 
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	if @book.save #If book saved correctly in the db
	  	redirect_to book_path(@book) #Redirect that @book's path
	  else 
	  	render :new #Else it will render the 'new.html.erb' view
	  end
  end

  def show
  	@book = Book.find params[:id]
  end

  def edit
  	@book = Book.find params[:id]
  end


  def update
  	@book = Book.find params[:id]
  	if @book.update(book_params)
	  	redirect_to @book		  		
  	else
  		render :edit
  	end	
  end


  def destroy
    @book = Book.find params[:id]
  	@book.destroy
  	redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title,
   															 :cuisine, 
   															 :chef,
   															 :image
     														)
  end
end
