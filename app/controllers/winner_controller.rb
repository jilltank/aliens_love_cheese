class WinnerController < ApplicationController

include WinnerHelper

  def where_are_you
    @states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NE KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC PR)
    @states.sort!
  end

  def alien_nachos

    @no_location = true
    Location.all.each do |l|
      if l.city.downcase == params[:city].downcase && l.state.downcase == params[:state].downcase
        @location = l
        @no_location = false
      end
    end
    if @no_location
      @location = Location.create city: params[:city], state: params[:state]
      @location.save
    end
    puts "^^^^^^^^^^^^^^^^^^"
    puts "#{@location.latitude}, #{@location.longitude}"
    puts "^^^^^^^^^^^^^^^^^^^"


  	@spaceships = Meteorite.where.not lat: nil 

  	@nearby_ship = closest_ship @location, @spaceships, []
  	if @nearby_ship.class == Array
  		@nearby_ship = @nearby_ship[0]
  	end

    @nachos = true
    @nacho_bases = nachos_nearby @nearby_ship
    if @nacho_bases.empty?
      @nachos = false
    end

  	@nacho_force_one = nearest_cheese @nearby_ship, @nacho_bases, []

  end

end
