class AddColumnHighTempToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :high_temp, :integer
  end
end
