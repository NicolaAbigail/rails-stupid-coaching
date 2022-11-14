class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @messages = params[:message]
    @answers = []
    if @messages.downcase == "i am going to work right now!"
      @answers = "Great!"
    elsif @messages.end_with?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
