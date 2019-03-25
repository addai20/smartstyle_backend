class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :img_url
      t.string :body_part
      t.integer :min_temp
      t.integer :max_temp

      t.timestamps
    end
  end
end
