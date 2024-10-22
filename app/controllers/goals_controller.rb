class GoalsController < ApplicationController
  before_action :authenticate_user!
  def new
    @reading_goal = Goal.new
    @year = Time.now.year
  end

  def create
    @reading_goal = Goal.new(goal_params)
    @reading_goal.user = current_user
    if @reading_goal.save
      redirect_to root_path, notice: 'Reading goal was successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:number_of_books, :year)
  end
end
