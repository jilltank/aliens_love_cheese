# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#seed the meteorite API into the meteorite table

# require 'json'
# response = HTTParty.get("https://data.nasa.gov/resource/y77d-th95.json")

# 	response.each do |m|
# 		meteorite = Meteorite.new
# 		meteorite.name = m["name"]
# 		meteorite.year = m["year"][0..3] if !m["year"].blank?
# 		meteorite.lat = m["reclat"]
# 		meteorite.long = m["reclong"]
# 		meteorite.save

# 	end


# re-seeding the meteorites with a CSV containing many, many more entries

require 'csv'
path = "#{Rails.root.to_s}/lib/assets/Meteorite_Landings.csv"

CSV.foreach(path) do |row|
	if row[6].blank?
		year = nil
	else
		year = row[6][6..9]
	end
	Meteorite.find_or_create_by(name: row[0], year: year, lat: row[7], long: row[8])
end

