class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @user_request = params[:questions]
    if params[:questions].end_with?("?")
      @result = "Silly question, get dressed and go to work!"
    elsif params[:questions] == "I am going to work"

      @result = "Great !"
    else
      @result = "I don't care, get dressed and go to work!."
    end
  end
end
