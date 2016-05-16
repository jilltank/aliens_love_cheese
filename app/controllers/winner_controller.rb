class WinnerController < ApplicationController

  def where_are_you
    @states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NE KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC PR)
    @states.sort!
  end

  def alien_nachos
    @user_location = Location.find_or_create_by(city: params[:city].titleize, state: params[:state])
    @nearby_ship = NearestShip.new(@user_location).calculate
    @nacho_force_one = NearestNachos.new(@nearby_ship).calculate
  end

end
