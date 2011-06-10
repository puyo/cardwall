class Card < ActiveRecord::Base
  scope :prototypes, where(:prototype => true)
  scope :not_prototypes, where(:prototype => false)
end
