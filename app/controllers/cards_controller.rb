class CardsController < ApplicationController
  before_filter 'load_wall', only: %w[edit update]
  before_filter 'load_card', only: %w[edit update]

  layout 'popup'
  respond_to 'html', 'js'

  def show
    respond_with @card
  end

  def edit
    respond_with @card
  end

  def update
    if @card.update_attributes(params[:card])
      redirect_to @wall, notice: 'Card updated'
    else
      respond_with @card
    end
  end

  private

  def load_wall
    @wall = Wall.find(params[:wall_id])
  end

  def load_card
    @card = @wall.cards.find(params[:id])
  end
end
