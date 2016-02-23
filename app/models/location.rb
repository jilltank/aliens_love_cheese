class Location < ActiveRecord::Base

	geocoded_by :your_location
	after_validation :geocode

	def your_location
		"#{city}, #{state}"
	end

end
