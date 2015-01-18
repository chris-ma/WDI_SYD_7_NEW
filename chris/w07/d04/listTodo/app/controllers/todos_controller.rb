class TodosController < ApplicationController

before_action :find_todo, only: [:show, :edit, :destroy, :update]

  def index
    @todos = Todo.all
    respond_to do |format|
      format.html
      format.json {render json: @todos }
    end

  end

  def new
    @todos = Todo.new
  end

  def create
    @todos = Todo.new(todo_params)
    if @todos.save
      redirect_to todo_path(@todos)
    else
      render :new
      
    end
    
  end

  def show

    respond_to do |format|
    format.html
    format.json {render json: @todos } 
    
  end

  def edit
    
  end

  def update
    if @todos.update(todo_params)
      redirect_to @todos
    else
      render :edit
    end
    
  end

  def destroy
    @todos.destroy
    redirect_to todo_path
  end


private

  def todo_params
        params.require(:todo).permit(:text,
                                      :notes,
                                      :completed,
                                      :id
                                      )      
  end

  def find_todo
    @todos = Todo.find(params[:id])
  end

end
