class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.references :wall, null: false
      t.integer :x
      t.integer :y
      t.integer :z
      t.integer :w, null: false
      t.integer :h, null: false
      t.string :text
      t.string :bg_image
      t.string :bg_color
      t.string :author
      t.timestamps
    end
    add_foreign_key :cards, :walls, :dependent => :delete
  end

  def self.down
    drop_table :cards
  end
end
