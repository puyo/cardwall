class Wall < ActiveRecord::Base
  has_many :cards
  has_many :prototypes
  accepts_nested_attributes_for :cards
  accepts_nested_attributes_for :prototypes
end
