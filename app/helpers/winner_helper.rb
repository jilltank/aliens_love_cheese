module WinnerHelper

#finds the users location using geocoder. Also checks resources to see if the locations has already been geocoded

def locate
  no_location = true
	Location.all.each do |l|
	  if l.city.downcase == params[:city].downcase && l.state.downcase == params[:state].downcase && l.latitude != nil 
	    @location = l
	    no_location = false
	  end
	end
	if no_location
	  @location = Location.create city: params[:city], state: params[:state]
	  @location.save
	end
	@location
end

# generates an array of 'ships' within 5 degrees of the user's location. if that search yields no ships, will generate an array of ships within 10 degrees of the user's location. Then it will use nearest to whittle that down to one and will return the single nearest ship.

	def closest_ship user, meteorite, nearby
		nearby = deg_check1 user, meteorite, nearby
		if nearby.length == 0
			nearby = deg_check2 user, meteorite, nearby
		end
		nearest user, meteorite, nearby
	end

# checks the length of nearby ships, and if there's only one, it will return that ship. If not, it will find a value containing the degree difference between each ship and the user's location. It will then sort these degrees, with the smallest amount of seperation being listed first. Will then extract nearest (at index 0), and return it as the nearest ship.

	def nearest user, meteorite, nearby
		if nearby.length == 1
			nearby
		else
			foo = []
			nearby.each_with_index do |ship, index|
				x = Math.sqrt( ((user.latitude - ship.lat)**2) + ((user.longitude - ship.long)**2) )
				x = x.abs
				foo.push([x, index])
			end
			foo.sort!
			super_near = foo[0]
			nearby[super_near[1]]
		end
	end


	# returns an array of ships within 0.5 degree of the user's location.


	def deg_check1 user, meteorite, nearby
		meteorite.each do |ship|
			if (user.longitude - ship.long).abs <= 0.5 && (user.latitude - ship.lat).abs <= 0.5
				nearby.push ship
			end
		end
		return nearby
	end


# returns an array of ships within 1 degree of the user's location.

	def deg_check2 user, meteorite, nearby
	meteorite.each do |ship|
		if (user.longitude - ship.long).abs <= 1 && (user.latitude - ship.lat).abs <= 1
			nearby.push ship
		end
	end
end



# Starts with a small search radius and then widens the search until it returns something. Note: sometimes you will still not get any returns. Sorry, empty plains states.


	def nachos_nearby nearby_ship
  	ne_lat = (nearby_ship.lat + 0.09)
  	ne_long = (nearby_ship.long + 0.09)
  	sw_lat = (nearby_ship.lat - 0.09)
  	sw_long = (nearby_ship.long - 0.09)
  	nacho_bases = HTTParty.get("https://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat}&nelng=#{ne_long}&swlat=#{sw_lat}&swlng=#{sw_long}&offset=0")
    if nacho_bases.empty?
      nacho_bases = HTTParty.get("https://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat+0.46}&nelng=#{ne_long+0.46}&swlat=#{sw_lat-0.46}&swlng=#{sw_long-0.46}&offset=0")
    end
    if nacho_bases.empty?
      nacho_bases = HTTParty.get("https://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat+0.66}&nelng=#{ne_long+0.66}&swlat=#{sw_lat-0.66}&swlng=#{sw_long-0.66}&offset=0")
    end
    if nacho_bases.empty?
      nacho_bases = HTTParty.get("https://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat+0.91}&nelng=#{ne_long+0.91}&swlat=#{sw_lat-0.91}&swlng=#{sw_long-0.91}&offset=0")
    end
    # if nacho_bases.empty?
    #   redirect_to no_nachos_path
    # end
  	nacho_bases
  end



# Loops through the returns from the Database of Nachos and adds the distance for each. Then sorts them by distance and returns the closest.


	def nearest_cheese ship, nachos, nearby
		nachos.each do |cheese|
			x = Math.sqrt( ((ship.lat - cheese["latitude"].to_f)**2) + ((ship.long - cheese["longitude"].to_f)**2) )
			x = x.abs
			cheese["distance_from_ship"] = x
			nearby.push x
		end
		nearby.sort!
		value = nearby[0]
		nachos.each do |cheese|
			if cheese.has_value? value
				return cheese
			end
		end
	end


end