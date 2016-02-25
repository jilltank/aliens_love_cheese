# require 'csv'
# path = "#{Rails.root.to_s}/lib/assets/Meteorite_Landings.csv"

# CSV.foreach(path) do |row|
# 	if row[6].blank?
# 		year = nil
# 	else
# 		year = row[6][6..9]
# 	end
# 	Meteorite.find_or_create_by(name: row[0], year: year, lat: row[7], long: row[8])
# end


# id: 1
# Subject.create(name: "Integers", image: "integer.png", description: "Coding languages read what you write in different ways. For example, Ruby will read “7” and 7 as different things. These are all integers. What do they have in common?")

# id: 2
# Subject.create(name: "Floats", image: "float.png", description: "Float are similar to integers, but there is one thing about them that’s different:")

# id: 3
# Subject.create(name: "Strings", image: "string.png", description: "Some examples of strings are listed below. What do you think strings are?")

# id: 4
# Subject.create(name: "Booleans & Comparators", image: "boolean.png",description: "If you ask Ruby a yes or no question, it will return one of two things:/n /n true/n false/n We check to see whether these things are true using comparators. Here are some:")

# id: 5
# Subject.create(name: "Variables", image: "variable.png", description: "Variables are like boxes. They store information so you can use it later. \n Rules for Variables: \n 1. You can name it whatever you want, as long as you follow these guidelines. \n 2. You must always start with a lowercase letter. Other characters can be letters, numbers, or underscores ( _ ). \n 3. If you want it to be more than one word, you must use the underscore instead of spaces. \n 4. You tell a variable what to store using = ")


# Example.create(instance: "-5", subject_id: 1)
# Example.create(instance: "0", subject_id: 1)
# Example.create(instance: "200", subject_id: 1)
# Example.create(instance: "10", subject_id: 1)
# Example.create(instance: "-17", subject_id: 1)
# Example.create(instance: "6", subject_id: 1)


# Example.create(instance: "3.14", subject_id: 2)
# Example.create(instance: "10.24", subject_id: 2)
# Example.create(instance: "-0.5", subject_id: 2)
# Example.create(instance: "-7.1", subject_id: 2)
# Example.create(instance: "-16.2", subject_id: 2)
# Example.create(instance: "200.1", subject_id: 2)


# Example.create(instance: "nachos", subject_id: 3)
# Example.create(instance: "Ruby", subject_id: 3)
# Example.create(instance: "Star Wars", subject_id: 3)
# Example.create(instance: "4", subject_id: 3)
# Example.create(instance: " ", subject_id: 3)


# Example.create(instance: "< means 'less than'", subject_id: 4)
# Example.create(instance: "> means 'greater than'", subject_id: 4)
# Example.create(instance: "<= means 'less than or equal to'", subject_id: 4)
# Example.create(instance: ">= means 'greater than or equal to'", subject_id: 4)
# Example.create(instance: "== means 'equal to'. In Ruby, you use one equals sign for a variable and two if you're asking Ruby whether something is true or false.", subject_id: 4)
# Example.create(instance: "!= means is not equal to", subject_id: 4)
# Example.create(instance: " ", subject_id: 4)
# Example.create(instance: "If I wrote 1 < 10 , Ruby would tell me that was true.", subject_id: 4)
# Example.create(instance: "If I wrote 3 > 30 , Ruby would tell me that was false.", subject_id: 4)


# Example.create(instance: "x = x + 1", subject_id: 5)
# Example.create(instance: "ruby = \"fun to learn!\"", subject_id: 5)
# Example.create(instance: "nacho_cheese = \"the best food ever!\"", subject_id: 5)
# Example.create(instance: "earth_population = 7125000000", subject_id: 5)
# Example.create(instance: "mars_rover = \"curiosity\"", subject_id: 5)



