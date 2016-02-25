class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def quiz
  	@subjects = Subject.all
  	@examples = Example.all
  end
end
