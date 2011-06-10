class AddPrototypes < ActiveRecord::Migration
  def self.up
    add_column :cards, :prototype, :boolean, null: false, default: false
  end

  def self.down
    remove_column :cards, :prototype
  end
end
