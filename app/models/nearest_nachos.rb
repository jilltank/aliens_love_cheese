class NearestNachos

	def initialize(nearby_ship)
		@nearby_ship = nearby_ship
		@nacho_bases = []
		@degree_counter = 0.09
	end

  def check_for_nachos
	  until @nacho_bases.empty? == false
	  	find_nachos_nearby
	  	@degree_counter += 0.2
	  end
	end

  def find_nachos_nearby
  	ne_lat = (@nearby_ship.lat + @degree_counter)
  	ne_long = (@nearby_ship.long + @degree_counter)
  	sw_lat = (@nearby_ship.lat - @degree_counter)
  	sw_long = (@nearby_ship.long - @degree_counter)
  	@nacho_bases = HTTParty.get("http://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat}&nelng=#{ne_long}&swlat=#{sw_lat}&swlng=#{sw_long}&offset=0")
  end

	def nachos_with_index
		nachos_with_index = []
		@nacho_bases.each do |cheese|
			x = Math.sqrt( ((@nearby_ship.lat - cheese["latitude"].to_f)**2) + ((@nearby_ship.long - cheese["longitude"].to_f)**2) )
			x = x.abs
			cheese["distance_from_ship"] = x
			nachos_with_index.push(x)
		end
		nachos_with_index.sort!
	end

	def calculate
		check_for_nachos
		closest_value = nachos_with_index[0]
		@nacho_bases.each do |cheese|
			if cheese.has_value? closest_value
				@nearest_nacho = cheese
			end
		end
		@nearest_nacho
	end

end