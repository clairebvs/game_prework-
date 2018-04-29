require './lib/random_number'
require 'pry'

class Game

  def initialize(number = RandomNumber.new.random_number)
     @number = number
     # @number = 33 to check if method hint is correct
  end

  def hint
    if @number % 3 == 0
      message =  "A hint for you, the number is divisible by 3"
      puts message
    end
    message
  end

  def welcome
    puts "I have generated a random number for you to guess, what is your guess?"
    puts "Guess the random number between 1 to 100 ? "
    guess_number = gets.chomp
  end

  def play(guess_number)
    while guess_number != @number
      if guess_number == "cheat" || guess_number == "c"
        puts "The number is #{@number}. Make a guess."
        guess_number = guess_input
      elsif guess_number.to_i < @number
        puts "Too low, guess again"
        hint
        guess_number = guess_input
      elsif guess_number.to_i > @number
        puts "Too high, guess again"
        hint
        guess_number = guess_input
      elsif guess_number.to_i == @number
        message = "You guessed the right number"
        puts message
        return message
      end
    end
  end

  def guess_input
    guess_input = gets.chomp
  end

end
