class WelcomeController < ApplicationController
  def show
    redirect_to Wall.first
  end
end
