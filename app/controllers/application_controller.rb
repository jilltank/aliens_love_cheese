class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_fun_facts, :nacho_meter

  def set_fun_facts
  	@fun_facts = ["the nearest habitable planet to Earth is about 14 light years away", "there are over 13,000 minor planets in our solar system", "Pluto is smaller than the USA", "Jupiter has the biggest ocean of any planet", "during a meteor shower, it's possible to see up to 100 meteors per hour", "if a meteorite is very small, it's called a micrometeoroid or 'space dust'", "the Hoba Meteorite is the largest known meteorite on the planet. It weighs 60 tons!", "In 1954, a woman was napping on her sofa when a meteorite fell through the roof and struck her in the hip. She was bruised, but otherwise unharmed.", "About 500 meteorites reach the ground every year, but scientists only recover about 5-6.", "The first nachos were eaten in 1943", "November 6th is National Nachos Day", "Nachos were invented by a guy named Nacho"].shuffle
  end

  def nacho_meter
  	@nachos = 0
  end


end
