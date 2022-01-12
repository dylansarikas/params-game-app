class ParagamesController < ApplicationController

  def name_game
    name = params["name"]
    first_letter = name.first
    if first_letter == "a"
      output = "'Hey, your name starts with the first letter of the alphabet!'"
    else
      output = "Your first letter is #{first_letter}"
    end
    render json: {
      message: "Your name is #{name}",
      second_message: "#{output}"
    }
  end

  def guess_game
    value = 36
    number = params["guess"].to_i
    if number == value
      output = "Congrats! You guessed the value!"
    elsif number < value
      output = "Oh too low!  Guess again!"
    else
      output = "Oh too high! Guess again!"
    end
    render json: output
  end

  def guess_game_seg
    value = 36
    number = params["guess_number"].to_i
    if number == value
      output = "Congrats! You guessed the value!"
    elsif number < value
      output = "Oh too low!  Guess again!"
    else
      output = "Oh too high! Guess again!"
    end
    render json: output
  end

  # def guess_game_seg
  #   params.guess_game
  # end

  def sum_game
    first = params[:first_number].to_i
    second = params[:second_number].to_i
    sum = first + second
    render json: {message: "The sum is #{sum}"}
  end

end
