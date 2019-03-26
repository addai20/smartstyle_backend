class ItemCategory < ApplicationRecord
  belongs_to :item
  belongs_to :category

  def self.itemsArray(categoryObj, weatherObj)
    items = ItemCategory.all.select do |pair|
      pair.category_id == categoryObj.id
    end
    Item.getItems(items, weatherObj)
  end
end
