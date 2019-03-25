class Item < ApplicationRecord
  has_many :categories
  has_many :item_categories
end
