class CardsController < ApplicationController
  before_filter :load_wall, :only => [:edit]
  before_filter :load_card, :only => [:edit]

  layout nil
  respond_to :html, :js

  def show
    respond_with(@card)
  end

  def edit
    respond_with @card
  end

  private

  def load_wall
    @wall = Wall.find(params[:wall_id])
  end

  def load_card
    @card = @wall.cards.find(params[:id])
  end
end
