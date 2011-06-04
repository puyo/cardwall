class WelcomeController < ApplicationController
  def show
    @wall = Wall.first || Wall.create!
    @wall.cards.destroy_all
    @wall.cards.create!(x: 10, y: 50, z: 20, w: 100, h: 70, content: 'tech', bg_color: 'wheat')
    @wall.cards.create!(x: 20, y: 150, z: 30, w: 100, h: 70, content: 'bug', bg_color: 'pink')
    @wall.cards.create!(x: 15, y: 260, z: 10, w: 100, h: 70, content: 'feature', bg_color: 'white')
  end
end
