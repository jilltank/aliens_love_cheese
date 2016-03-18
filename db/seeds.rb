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


# # id: 1
# Subject.create(name: "Integers", image: "integer.png", description: "Coding languages read what you write in different ways. For example, Ruby will read “7” and 7 as different things. These are all integers. What do they have in common?")

# # id: 2
# Subject.create(name: "Floats", image: "float.png", description: "Float are similar to integers, but there is one thing about them that’s different:")

# # id: 3
# Subject.create(name: "Strings", image: "string.png", description: "Some examples of strings are listed below. What do you think strings are?")

# # id: 4
# Subject.create(name: "Booleans", image: "boolean.png",description: "If you ask Ruby a yes or no question, it will return one of two things:/n /n true/n false/n We check to see whether these things are true using comparators. Here are some:")

# # id: 5
# Subject.create(name: "Variables", image: "variable.png", description: "Variables are like boxes. They store information so you can use it later. Rules for Variables: 1. You can name it whatever you want, as long as you follow these guidelines. 2. You must always start with a lowercase letter. Other characters can be letters, numbers, or underscores ( _ ). 3. If you want it to be more than one word, you must use the underscore instead of spaces. 4. You tell a variable what to store using = ")


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


# Example.create(instance: "\"nachos\"", subject_id: 3)
# Example.create(instance: "\"Ruby\"", subject_id: 3)
# Example.create(instance: "\"Star Wars\"", subject_id: 3)
# Example.create(instance: "\"4\"", subject_id: 3)
# Example.create(instance: "\"  \"", subject_id: 3)


# Example.create(instance: "< means \'less than\'", subject_id: 4)
# Example.create(instance: "> means \'greater than\'", subject_id: 4)
# Example.create(instance: "<= means \'less than or equal to\'", subject_id: 4)
# Example.create(instance: ">= means \'greater than or equal to\'", subject_id: 4)
# Example.create(instance: "== means \'equal to\'. In Ruby, you use one equals sign for a variable and two if you're asking Ruby whether something is true or false.", subject_id: 4)
# Example.create(instance: "!= means \'is not equal to\'", subject_id: 4)
# Example.create(instance: "If I wrote 0 < 10 , Ruby would tell me it was true.", subject_id: 4)
# Example.create(instance: "If I wrote 3 > 30 , Ruby would tell me it was false.", subject_id: 4) 


# Example.create(instance: "x = x + 1", subject_id: 5)
# Example.create(instance: "ruby = \"fun to learn!\"", subject_id: 5)
# Example.create(instance: "nacho_cheese = \"the best food ever!\"", subject_id: 5)
# Example.create(instance: "earth_population = 7125000000", subject_id: 5)
# Example.create(instance: "mars_rover = \"curiosity\"", subject_id: 5)


# Quiz.create(question: "What do you think an integer is?", wrong1: "Any positive number", wrong2: "Any negative number", right: "Any whole number", confirmation: "If the number does not have any decimal points or quotes around it, Ruby knows it's an integer.", clue: "Hint: a whole number is a number that does not have decimal points.", subject_id: 1)


# Quiz.create(question: "What are the rules that make all these floats?", wrong1: "They are all negative.", wrong2: "They are all positive.", right: "They are all decimals.", confirmation: "Integers and floats are very similar, but it's important to remember that Ruby treats them differently.", clue: "Look closely. You can do it!", subject_id: 2)


# Quiz.create(question: "Which rule makes all of these things strings?", wrong1: "They all have words in them.", wrong2: "They are all awesome.", right: "A string can be anything between quotes.", confirmation: "Even if there's nothing between the quotes, Ruby still sees it as a string.", clue: "What do they all start and end with?", subject_id:  3)


# Quiz.create(question: "What do you think Ruby would return if we put in 5 > 1 ?", wrong1: "nil", wrong2: "false", right: "true", confirmation: "Whenever you give Ruby a comparator, it knows you're asking a question.", clue: "Check out this video for more clues and help.", video: "https://www.youtube.com/embed/y3rCKJNOwpA", subject_id: 4)


# Quiz.create(question: "What do you think Ruby would return if we put in 100 < 6 ?", wrong1: "true", wrong2: "nil", right: "false", confirmation: "100 is a bigger number than 6, so Ruby knows that 100 < 6 is false.", clue: "Check out this video for more clues and help.", video: "https://www.youtube.com/embed/y3rCKJNOwpA", subject_id: 4)


# Quiz.create(question: "Which of these is not a variable?", wrong1: "moon = \'Made of cheese\'", wrong2: "numbers = 453365", right: "\'salsa\'", confirmation: "That wasn't a variable -- it was just a string!", clue: "You might get some clues from this video:", video: "https://www.youtube.com/embed/G41G_PEWFjE", subject_id: 5)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')