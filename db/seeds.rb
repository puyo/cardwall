# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

if Rails.env == 'development' # example
  wall = Wall.find_or_create_by_uuid('123')

  wall.prototypes.destroy_all
  label = wall.prototypes.create!(name: 'Label', w: 200, h: 0, text: '', shadow: false)
  feature = wall.prototypes.create!(name: 'Feature', w: 200, h: 100, text: '', shadow: true, bg_color: 'white')
  bug = wall.prototypes.create!(name: 'Bug', w: 200, h: 100, text: '', shadow: true, bg_color: 'pink')
  tech = wall.prototypes.create!(name: 'Tech', w: 200, h: 100, text: '', shadow: true, bg_color: 'wheat')

  wall.cards.destroy_all
  wall.cards.create!(prototype: tech, x: 16, y: 40, z: 0, text: "tech [1d]\r\n\r\n'select count(*) from customers where patience > 0' returns 0 results. figure out why")
  wall.cards.create!(prototype: bug, x: 21, y: 165, z: 0, text: "bug [1 night]\r\n\r\nclicking 'touch balls' makes you gay. investigate.")
  wall.cards.create!(prototype: feature, x: 249, y: 37, z: 0, text: "feature (100)\r\n\r\nAs an impatient user\r\nI want a car. And a yacht.\r\nSO THAT I CAN GET CHICKS.")
  wall.cards.create!(prototype: label, x: 249, y: 3, z: 0, text: 'Iteration Backlog')
  wall.cards.create!(prototype: label, x: 12, y: 5, z: 0, text: 'Release Backlog')
end
