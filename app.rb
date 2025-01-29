require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "paper"
    @result = "We lost!"
  elsif @comp_move == "scissors"
    @result = "You won!"
  else 
    @result = "We tied!"
  end

  erb(:rock)
end

get ("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "We lost!"
  elsif @comp_move == "paper"
    @result = "You won!"
  else 
    @result = "We tied!"
  end

  erb(:scissors)
end 

get ("/paper") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "scissors"
    @result = "We lost!"
  elsif @comp_move == "rock"
    @result = "You won!"
  else 
    @result = "We tied!"
  end

  erb(:paper)
end  
