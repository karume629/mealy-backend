class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :price, :description, :subtotal, :quantity
  has_one :admin
end
