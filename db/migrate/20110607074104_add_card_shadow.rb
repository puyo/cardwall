class AddCardShadow < ActiveRecord::Migration
  def self.up
    add_column :cards, :shadow, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :cards, :shadow
  end
end
