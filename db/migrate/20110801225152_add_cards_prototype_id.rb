class AddCardsPrototypeId < ActiveRecord::Migration
  def self.up
    add_column :cards, :prototype_id, :integer, null: false
    add_foreign_key :cards, :prototypes, :dependent => :restrict
  end

  def self.down
    remove_column :cards, :prototype_id
  end
end
