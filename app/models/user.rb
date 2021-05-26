class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :yachts, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :first_name, :last_name, :username, :address, :date_of_birth
  # validates :email, format: { with: /\w+@\w+.\w{2,}/ }
end
