class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :day
  has_many :meals
end
