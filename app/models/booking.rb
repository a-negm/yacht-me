class Booking < ApplicationRecord
  belongs_to :yacht
  belongs_to :user
end
