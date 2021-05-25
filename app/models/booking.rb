class Booking < ApplicationRecord
  belongs_to :yacht
  belongs_to :user

  validates_presence_of :user_id, :yacht_id, :check_out_date, :check_in_date
  validate :before_today?

  validate :check_out_date_after_check_in_date

  private

  def check_out_date_after_check_in_date
    return if check_out_date.blank? || check_in_date.blank?

    errors.add(:check_out_date, "must be after the check in date") if check_out_date < check_in_date
  end

  def before_today?
    errors.add(:check_in_date, "must be after today") if check_in_date < Date.today
  end
end
