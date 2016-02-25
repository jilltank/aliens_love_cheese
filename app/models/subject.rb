class Subject < ActiveRecord::Base

	has_many :examples
	has_many :quizzes
	
end
