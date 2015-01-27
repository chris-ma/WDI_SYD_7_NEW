class LearnersController < ApplicationController

  def index
    @learners = Learner.all

    respond_to do |f|
      f.json{ render json: @learners}
      
    end  
  end

  def create
    @learner = Learner.create(learner_params)

    respond_to do |f|
      f.json {render json: @learner}
    end 
  end

  def update
    @learner = Learner.find(params[:id])
    @learner.update(learner_params)

    respond_to do |f|
      f.json {render json: @learner}
    end 
  end

  def destroy
    @learner = Learner.find(params[:id])
    @learner.destroy

    respond_to do |f|
      f.json { render json: {learner: "ok"}}
    end
  end


  private

    def learner_params
      params.require(:learner).permit(:course,:description)
    end
end
