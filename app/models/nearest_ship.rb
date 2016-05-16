class NearestShip

	def initialize(user_location)
		@user_location = user_location
		@nearby_ship_array = []
		@meteorites = Meteorite.where.not(lat: nil)
	end

	def deg_check(num_of_degrees)
		@meteorites.each do |ship|
			if (@user_location.longitude - ship.long).abs <= num_of_degrees && (@user_location.latitude - ship.lat).abs <= num_of_degrees
				@nearby_ship_array.push ship
			end
		end
	end

	def nearest
		if @nearby_ship_array.length > 1
			nearby_with_index = []
			@nearby_ship_array.each_with_index do |ship, index|
				x = Math.sqrt( ((@user_location.latitude - ship.lat)**2) + ((@user_location.longitude - ship.long)**2) )
				x = x.abs
				nearby_with_index.push([x, index])
			end
			nearby_with_index.sort!
			nearest = nearby_with_index[0]
			@nearby_ship_array[nearest[1]]
		end
	end

  def calculate
		@nearby_ship_array = deg_check(0.5)
		if @nearby_ship_array.length == 0
			@nearby_ship_array = deg_check(1)
		end
		nearest
	end


end