class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.belongs_to :meal, foreign_key: true, null: false
      t.belongs_to :nutrition, foreign_key: true, null: false

      t.timestamps
    end
  end
end
