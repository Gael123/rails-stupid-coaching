class QuestionsController < ApplicationController
  def ask
    @user_input = params[:user_input]
  end

  def answer
    @user_input = params[:user_input]
    if @user_input == "I am going to work"
      @answer = "great"
    elsif @user_input.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don\'t care, get dressed and go to work!"
    end
  end
end
