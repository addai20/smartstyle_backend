class Item < ApplicationRecord
  has_many :item_categories
  has_many :categories, through: :item_categories

  def self.getItems(itemCat)
    array = []
    itemCat.each do |item|
      item = Item.find do |itemx|
        itemx.id == item.item_id
      end
      array.push(item)
    end
    return array
  end

end
