require 'sinatra'
require 'sinatra/reloader'

  def check_guess(number, guess)
    if guess == number
      "The SECRET NUMBER is #{number}"
    elsif guess > number + 5
      "Way too high!"
    elsif guess < number - 5 
      "Way too low!"
    elsif guess > number
        "Too high!" 
    elsif guess < number
      "Too low!"
    end 
  end

number = rand(100)
  get '/' do 
    guess = params['guess'].to_i
    message = check_guess(number, guess)
    erb :index, :locals => {:message => message}
  end