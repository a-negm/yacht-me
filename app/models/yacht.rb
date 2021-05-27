class Yacht < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  acts_as_taggable_on :categories

  $categories = [" Sailing Yacht", "Motor Yacht", "Gulet Yacht", "Cruising Yacht", "Luxury Yacht", "Sports Yacht", "Catamaran Yacht"]

  geocoded_by :location

  after_validation :geocode, if:
  :will_save_change_to_location?
end
