
class Category < ApplicationRecord
  has_many :item_categories
  has_many  :items, through: :item_categories

  def self.getCategories(weatherObj)
    puts weatherObj["weather"]
    obj = Category.all.find do |cat|
      cat.title == weatherObj["weather"]
    end
    ItemCategory.itemsArray(obj, weatherObj)
  end

  def self.getAllCategory(weatherObj)
    weatherObj["weather"] = "All"
    obj = Category.all.find do |cat|
      cat.title == weatherObj["weather"]
    end
    ItemCategory.itemsArray(obj, weatherObj)
  end




end
