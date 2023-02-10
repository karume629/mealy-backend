class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.belongs_to :user, null: false, foreign_key: true, on_delete: :cascade
      t.belongs_to :meal, null: false, foreign_key: true, on_delete: :cascade
      t.timestamps
    end
  end
end
