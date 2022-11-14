class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @input = params[:answer]

    @answer = if @input.downcase == "i am going to work right now!"
      ""
    elsif @input.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end

  end
end
