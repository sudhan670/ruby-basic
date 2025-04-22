class Car < ApplicationRecord
	validates :id, presence: true
	validates :company, presence: true
	validates :model, presence: true
	validates :color, presence: true
	validates :owner_id, presence: true
	validates :kms_run, presence: true
	validates :owner_status, presence: true

	
end
