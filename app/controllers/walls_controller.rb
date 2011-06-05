class WallsController < ApplicationController
  before_filter 'load_wall', only: %w[show update]

  def show
  end

  def update
    if @wall.update_attributes(params[:wall])
      redirect_to @wall, notice: 'Wall updated'
    else
      render 'show'
    end
  end

  private

  def load_wall
    @wall = Wall.find(params[:id])
  end
end
