# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

if Rails.env == 'development' # example
  wall = Wall.find_or_create_by_uuid('123')
  wall.cards.destroy_all
  wall.cards.create!(x: 16, y: 40, z: 7, w: 200, h: 100, text: "tech [1d]\r\n\r\n'select count(*) from customers where patience > 0' returns 0 results. figure out why", bg_color: 'wheat', shadow: true)
  wall.cards.create!(x: 21, y: 165, z: 4, w: 200, h: 100, text: "bug [1 night]\r\n\r\nclicking 'touch balls' makes you gay. investigate.", bg_color: "pink", shadow: true)
  wall.cards.create!(x: 249, y: 37, z: 7, w: 200, h: 100, text: "feature (100)\r\n\r\nAs an impatient user\r\nI want a car. And a yacht.\r\nSO THAT I CAN GET CHICKS.", bg_color: "white", shadow: true)
  wall.cards.create!(x: 249, y: 3, z: 3, w: 160, h: 0, text: 'Iteration Backlog', shadow: false)
  wall.cards.create!(x: 12, y: 5, z: 3, w: 160, h: 0, text: 'Release Backlog', shadow: false)

  wall.prototypes.destroy_all
  wall.prototypes.create!(name: 'Label', w: 200, h: 0, text: '', shadow: false)
  wall.prototypes.create!(name: 'Feature', w: 200, h: 100, text: '', shadow: true, bg_color: 'white')
  wall.prototypes.create!(name: 'Bug', w: 200, h: 100, text: '', shadow: true, bg_color: 'pink')
  wall.prototypes.create!(name: 'Tech', w: 200, h: 100, text: '', shadow: true, bg_color: 'wheat')
end
