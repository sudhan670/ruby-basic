class HomeController < ApplicationController

	def index
	end
	
	def all_bikes
		@bikes = Bike.all.order(id: :asc)
		@bike_count = @bikes.count
	end

	def bike
		@bike = Bike.joins("JOIN owners ON bikes.owner_id = owners.id").select("bikes.company, bikes.model, bikes.color, bikes.kms_run, owners.name, owners.phone_number, owners.city").where("bikes.id = ?", params[:id]).first
		puts "**************************"
		puts @bike.inspect
		puts "**************************"
	end

	def all_cars
		@cars = Car.all.order(id: :asc)
		@car_count = @cars.count
	end

	def car
		@car = car.joins("JOIN owners ON cars.owner_id = owners.id").select("cars.company, cars.model, cars.color, cars.kms_run, owners.name, owners.phone_number, owners.city").where("car.id = ?", params[:id]).first
	end

end