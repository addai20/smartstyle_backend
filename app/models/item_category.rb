class ItemCategory < ApplicationRecord
  belongs_to :item
  belongs_to :category

  def self.itemsArray(categoryObj)
    items = ItemCategory.all.select do |pair|
      pair.category_id == categoryObj.id
    end
    Item.getItems(items)
  end
end
