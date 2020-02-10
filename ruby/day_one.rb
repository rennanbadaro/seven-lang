# frozen_string_literal: true

# Print the string “Hello, world.”
def say_hello
  puts 'Hello, world.'
end

# Print your name ten times.
def say_my_name_a_lot
  10.times { puts 'Rennan' }
end

# For the string “Hello, Ruby,” find the index of the word “Ruby.”
def find_index
  puts /Ruby/ =~ 'Hello, Ruby'
end

# Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10
def repeat_sentence
  1.upto(10) { |num| puts "This is sentence number #{num}" }

  (1..10).each { |num| puts "This is sentence number #{num}" }

  (1..10).each do |num|
    puts "This is sentence number #{num}"
  end

  (1..10).each do |num|
    puts "This is sentence number #{num}"
  end
end

# Bonus problem: If you’re feeling the need for a little more, write a program that picks a random
# number. Let a player guess the number, telling the player whether the guess is too low or too high
def guessing_game
  random_number = rand(10)
  trys = 0
  puts random_number

  until trys >= 10
    puts 'Type your guess:'
    typed_number = gets

    puts 'Too high...' if typed_number.to_i > random_number
    puts 'Too low...' if typed_number.to_i < random_number

    if typed_number.to_i == random_number
      puts 'You won!'
      break
    end

    trys += 1
  end
end
