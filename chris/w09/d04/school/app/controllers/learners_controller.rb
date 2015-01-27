class LearnersController < ApplicationController

  def index
    @learners = Learner.all
    render json: @learners 
  end

  def create
    @learner = Learner.create(learner_params)
    render json: @learner
  end

  def update
    @learner = Learner.find(params[:id])
    @learner.update(learner_params)
    render json: @learner
  end

  def destroy
    @learner = Learner.find(params[:id])
    @learner.destroy
    render json: {learner: "ok"}

  end


  private

    def learner_params
      params.require(:learner).permit(:course,:description)
    end
end
