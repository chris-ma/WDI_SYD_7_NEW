class TodosController < ApplicationController

before_action :find_todo, only: [:show, :edit, :destroy, :update]

  def index
    @todo = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todo_path(@todo)
    else
      render :new
      
    end
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo
    else
      render :edit
    end
    
  end

  def destroy
    @todo.destroy
    redirect_to todo_path
  end


private

def todo_params
      params.require(:todo).permit(:text,
                                    :notes,
                                    :completed
                                    )      
    end

end
