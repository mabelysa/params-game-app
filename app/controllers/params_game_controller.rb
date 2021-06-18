class ParamsGameController < ApplicationController
  def name
    input_value = params["message"]
    if input_value.first == "a"
      render json: { message: "Hey, your name starts with the first letter of the alphabet!" }
    else
      render json: { message: "You're not as special as you think you are!" }
    end
  end

  def guessgame
    winning_number = 32
    input_guess = params["the_users_guess"].to_i
    if input_guess > winning_number
      output_message = "Pick lower!"
    elsif input_guess < winning_number
      output_message = "Pick higher!"
    else
      output_message = "You win!"
    end
    render json: { message: output_message }
  end

  def segment_params
    input_value = params["this_is_a_key"]
    render json: { message: "The url segment is #{input_value}" }
  end
end
