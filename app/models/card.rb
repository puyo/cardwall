class Card < ActiveRecord::Base
  belongs_to :prototype
  
  %w[text].each do |attr|
    define_method(attr) do
      val = read_attribute(attr)
      if val.nil?
        prototype.send(attr)
      else
        val
      end
    end
  end

  %w[w h bg_color shadow].each do |attr|
    define_method(attr) do
      val = read_attribute(attr)
      if val.blank?
        prototype.send(attr)
      else
        val
      end
    end
  end
end
