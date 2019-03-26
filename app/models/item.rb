class Item < ApplicationRecord
  has_many :item_categories
  has_many :categories, through: :item_categories

  def self.getItems(itemCat, weatherObj)
    array = []
    itemCat.each do |item|
      item = Item.find do |itemx|
        itemx.id == item.item_id
      end
      array.push(item)
    end
     Item.filterArray(array, weatherObj)
  end

  def self.filterArray(array, weatherObj)
    temp = weatherObj["currentTemp"]
    newArray = array.select do |item|
      item.min_temp <= temp && item.max_temp >= temp

    end
    return newArray
  end

end
