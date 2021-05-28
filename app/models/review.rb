class Review < ApplicationRecord
  belongs_to :booking

  validates_presence_of :rating, :content
  validates_length_of :content, maximum: 300, message: "Character limit is 300."
  validates :rating, numericality: { greater_than: 0, less_than: 6 }
end
