class Area < ApplicationRecord
  has_many :users
  has_many :activities, through: :users
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
