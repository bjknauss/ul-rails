class Monster < ActiveRecord::Base
  belongs_to :rarity
  belongs_to :element
  belongs_to :stat_element, class_name: "Element"
end
