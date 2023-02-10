class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.string :image
      t.integer :price
      t.integer :subtotal, :default => 0
      t.integer :quantity, :default => 0
      t.text :description
      t.belongs_to :admin, null: false, foreign_key: true, on_delete: :cascade
      t.belongs_to :calendar, null: false, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
