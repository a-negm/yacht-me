class Booking < ApplicationRecord
  belongs_to :yacht
  belongs_to :user

  validates_presence_of :user_id, :yacht_id, :check_out_date, :check_in_date
end
