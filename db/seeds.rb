# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

if Rails.env == 'development'
  # example
  wall = Wall.create!(uuid: '123')
  wall.cards.create!(x: 10, y: 50, z: 20, w: 100, h: 70, text: 'tech', bg_color: 'wheat')
  wall.cards.create!(x: 20, y: 150, z: 30, w: 100, h: 70, text: 'bug', bg_color: 'pink')
  wall.cards.create!(x: 15, y: 260, z: 10, w: 100, h: 70, text: 'feature', bg_color: 'white')
end
