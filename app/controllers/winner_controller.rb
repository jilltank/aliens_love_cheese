class WinnerController < ApplicationController
  def where_are_you
  end

  def alien_nachos
  	@spaceships = Meteorite.find(3), Meteorite.find(4), Meteorite.find(5) 
  end
end
