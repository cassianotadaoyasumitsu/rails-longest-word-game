require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
    session[:array] = @letters
  end

  def score
    response_serialized = open("https://wagon-dictionary.herokuapp.com/#{params[:word]}").read
    @response = JSON.parse(response_serialized)
    @user_word = params[:word]
    @new_array = params[:word].upcase.split('')
    @session = session[:array]

    if !@new_array.all? { |letter| @session.include?(letter) }
      @return = 0
    elsif @response['found']
      @return = 2
    else
      @return = 1
    end
  end
end
