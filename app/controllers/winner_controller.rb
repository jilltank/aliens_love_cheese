class WinnerController < ApplicationController

include WinnerHelper


  def where_are_you
    @states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NE KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC PR)
    @states.sort!
    
  end

  def alien_nachos
    @location = Location.create(city: params[:city], state: params[:state])
		@location.save

  	@spaceships = Meteorite.where.not(lat: nil) 

  	@nearby_ship = closest_ship(@location, @spaceships, [])

  	if @nearby_ship.class == Array
  		@nearby_ship = @nearby_ship[0]
  	end

  	ne_lat = (@nearby_ship.lat + 0.25)
  	ne_long = (@nearby_ship.long + 0.25)
  	sw_lat = (@nearby_ship.lat - 0.25)
  	sw_long = (@nearby_ship.long - 0.25)


  	@nacho_bases = HTTParty.get("https://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat}&nelng=#{ne_long}&swlat=#{sw_lat}&swlng=#{sw_long}&offset=0")

    puts "NACHO BASES INCOMING******"
    puts @nearby_ship.lat
    puts @nearby_ship.long
    puts "https://www.databaseofnachos.com/api/search_within?nelat=#{ne_lat}&nelng=#{ne_long}&swlat=#{sw_lat}&swlng=#{sw_long}&offset=0"
    puts @nacho_bases
    puts "***************************"

  	@nacho_force_one = nearest_cheese(@nearby_ship, @nacho_bases, [])

    puts "~~~~~~~~~~~~~~~~~~"
    puts @nacho_force_one
    puts "~~~~~~~~~~~~~~~~~~"
    

  end

end