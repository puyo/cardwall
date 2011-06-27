class AddPrototypes < ActiveRecord::Migration
  def self.up
    create_table :prototypes do |t|
      t.string :name
      t.references :wall, null: false
      t.integer :w, null: false
      t.integer :h, null: false
      t.string :text
      t.string :bg_image
      t.string :bg_color
      t.string :author
      t.boolean :shadow, null: false, default: false
      t.timestamps
    end
    add_foreign_key :prototypes, :walls, :dependent => :delete
  end

  def self.down
    drop_table :prototypes
  end
end
