class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :price, :description, :subtotal, :quantity, :calendar_id, :admin_id
  # has_one :admin
end
