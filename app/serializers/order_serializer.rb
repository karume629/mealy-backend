class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :updated_at
  has_one :user
  has_one :meal
end
