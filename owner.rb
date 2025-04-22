class Owner < ApplicationRecord
	validates :id, presence: true
	validates :name, presence: true
	validates :phone_number, presence: true, uniqueness: true
	validates :city, presence: true
	validates :email_id, presence: true, uniqueness: true

	has_many :cars
	has_many :bikes
end
