module WinnerHelper

# generates an array of 'ships' within 5 degrees of the user's location. if that search yields no ships, will generate an array of ships within 10 degrees of the user's location. Then it will use nearest to whittle that down to one and will return the single nearest ship.

	def closest_ship(user, meteorite, nearby)
		nearby = deg_check1(user, meteorite, nearby)
		if nearby.length == 0
			nearby = deg_check2(user, meteorite, nearby)
		end
		nearest(user, meteorite, nearby)
	end

# checks the length of nearby ships, and if there's only one, it will return that ship. If not, it will find a value containing the degree difference between each ship and the user's location. It will then sort these degrees, with the smallest amount of seperation being listed first. Will then extract nearest (at index 0), and return it as the nearest ship.

	def nearest(user, meteorite, nearby)
		if nearby.length == 1
			nearby
		else
			foo = []
			nearby.each_with_index do |ship, index|
				# x = (user.latitude - ship.lat).abs - (user.longitude - ship.long).abs
				x = Math.sqrt( ((user.latitude - ship.lat)**2) + ((user.longitude - ship.long)**2) )
				x = x.abs
				foo.push([x, index])
			end
			foo.sort!
			super_near = foo[0]
			return nearby[super_near[1]]
		end
	end


	# returns an array of ships within 0.5 degree of the user's location.


	def deg_check1(user, meteorite, nearby)
		meteorite.each do |ship|
			if (user.longitude - ship.long).abs <= 0.5 && (user.latitude - ship.lat).abs <= 0.5
				nearby.push(ship)
			end
		end
		return nearby
	end


# returns an array of ships within 1 degree of the user's location.

	def deg_check2(user, meteorite, nearby)
	meteorite.each do |ship|
		if (user.longitude - ship.long).abs <= 1 && (user.latitude - ship.lat).abs <= 1
			nearby.push(ship)
		end
	end
end




# Find the nearest nachos!


	def nearest_cheese(ship, nachos, nearby)
		arr = []
		nachos.each do |cheese|
			x = Math.sqrt( ((ship.lat - cheese["latitude"].to_f)**2) + ((ship.long - cheese["longitude"].to_f)**2) )
			x = x.abs
			cheese["distance_from_ship"] = x
			arr.push(x)
		end
		arr.sort!
		value = arr[0]
		nachos.each do |cheese|
			if cheese.has_value?(value)
				return cheese
			end
		end
	end



	# def nearest_cheese(ship, nachos, nearby)
	# 	nachos.each_with_index do |cheese, index|
	# 		x = Math.sqrt( ((ship.lat - cheese["latitude"].to_f)**2) + ((ship.long - cheese["longitude"].to_f)**2) )
	# 		x = x.abs
	# 		nearby.push([x, index])
	# 	end
	# 	nearby.sort!
	# 	super_near = nearby[0]
	# 	return nearby[super_near[1]]
	# end


# 	def check1(user, nachos, nearby)
# 		nachos.each do |cheese|
# 			if (user.long- cheese["longitude"].to_f).abs <= 0.5 && (user.lat - cheese["latitude"].to_f).abs <= 0.5
# 				nearby.push(cheese)
# 			end
# 		end
# 		return nearby
# 	end



# 	def check2(user, nachos, nearby)
# 	nachos.each do |cheese|
# 		if (user.long - cheese["longitude"].to_f).abs <= 1 && (user.lat - cheese["latitude"].to_f).abs <= 1
# 			nearby.push(cheese)
# 		end
# 	end
# end


end