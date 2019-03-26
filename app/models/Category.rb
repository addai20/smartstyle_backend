class Category < ApplicationRecord
  has_many :item_categories
  has_many  :items, through: :item_categories

  def self.getCategories(weatherObj)
    obj = Category.all.find do |cat|
      cat.title == weatherObj
    end
    ItemCategory.itemsArray(obj)
  end


end
