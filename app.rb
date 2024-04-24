require "sinatra"
require "sinatra/reloader"

rps_array = ["rock", "paper", "scissors"]

get("/") do
  erb(:homepage)
end

get("/rock") do
  @comp_play = rps_array.sample

  if @comp_play == "rock"
    @outcome = "We tied!"
  elsif @comp_play == "paper"
    @outcome = "We lost!" 
  else @comp_play == "scissors"
    @outcome = "We won!"
  end

  erb(:rock)
end

get("/paper") do
  @comp_play = rps_array.sample

  if @comp_play == "rock"
    @outcome = "We won!"
  elsif @comp_play == "paper"
    @outcome = "We tied!" 
  else @comp_play == "scissors"
    @outcome = "We lost!"
  end

  erb(:paper)
end

get("/scissors") do
  @comp_play = rps_array.sample

  if @comp_play == "rock"
    @outcome = "We lost!"
  elsif @comp_play == "paper"
    @outcome = "We won!" 
  else @comp_play == "scissors"
    @outcome = "We tied!"
  end

  erb(:scissors)
end
