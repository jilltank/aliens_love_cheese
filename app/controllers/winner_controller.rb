class WinnerController < ApplicationController

  def where_are_you
    @states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NE KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC PR)
    @states.sort!
  end

  def alien_nachos

   no_location = true
    Location.all.each do |l|
      if l.city.downcase == params[:city].downcase && l.state.downcase == params[:state].downcase && l.latitude != nil 
        @user_location = l
        no_location = false
      end
    end
    if no_location
      @user_location = Location.new(city: params[:city], state: params[:state])
      @user_location.save
    end
 
    @nearby_ship = NearestShip.new(@user_location).calculate
    @nacho_force_one = NearestNachos.new(@nearby_ship).calculate

  end

end
