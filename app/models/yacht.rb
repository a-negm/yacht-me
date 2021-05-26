class Yacht < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
<<<<<<< HEAD

  geocoded_by :location

  after_validation :geocode, if:
  :will_save_change_to_location?
=======
  has_many :bookings, dependent: :destroy
>>>>>>> adc30d50681cbef24b18a09df792e33aedc3728b
end
