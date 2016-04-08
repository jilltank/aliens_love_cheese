class WelcomeController < ApplicationController
  before_action :authenticate_admin_user!

  def index
  end

  def about
  end

  def quiz
  	@subjects = Subject.all
  	@subject = Subject.where(id: params[:id]).first
  	@examples = Example.where(subject_id: @subject.id)
  	@test = Quiz.where(subject_id: @subject.id).first
    @answer_box = [@test.wrong1, @test.wrong2, @test.right].shuffle
    @show_nachos = true
    @nachos = @subject.id-1
  end
end
