class AddColumnLowTempToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :low_temp, :integer
  end
end
