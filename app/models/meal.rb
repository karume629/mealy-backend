class Meal < ApplicationRecord
  belongs_to :admin
  belongs_to :calendar
end
