class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:questions]
    @coach_answer = ""
    if @answer == "I am going to work" then @coach_answer = "Great!"
    elsif @answer.end_with?("?") then @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
