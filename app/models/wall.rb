class Wall < ActiveRecord::Base
  has_many :cards
end
