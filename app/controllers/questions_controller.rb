class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = params[:question]
    if @answers.downcase == "i am going to work right now!"
      @question = "Great!"
    elsif @answers.end_with?("?")
      @question = "Silly question, get dressed and go to work!"
    else
      @question = "I don't care, get dressed and go to work!"
    end
  end
end
