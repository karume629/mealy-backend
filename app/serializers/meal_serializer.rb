class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :price, :description
  has_one :admin
end
