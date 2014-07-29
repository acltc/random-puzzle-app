class PuzzlesController < ApplicationController

  def show
    @random_puzzle = Puzzle.random
  end

  def check_solution
    hash = Unirest.get("http://localhost:3000/api/v1/puzzles/solutions/#{params[:id]}.json?solution=#{params[:solution]}", :headers => {"Accept" => "application/json"}).body
    if hash["response"].downcase == "correct"
      flash[:success] = "That's the correct answer!"
    elsif hash["response"].downcase == "incorrect"
      flash[:danger] = "That's the wrong answer. Try again!"
    else
      flash[:notice] = "Something went wrong. Sorry!"
    end
    redirect_to puzzle_path(params[:id])
  end

  def check_code_solution
   @code_solution = eval(params[:code_solution]) 
    hash = Unirest.get("http://localhost:3000/api/v1/puzzles/solutions/#{params[:id]}.json?solution=#{@code_solution}", :headers => {"Accept" => "application/json"}).body
    puts @code_solution
    puts "00000000000000000000"
    if hash["response"].downcase == "correct"
      flash[:success] = "That's the correct answer!"
    else
      flash[:danger] = "That's the wrong answer. Try again!"
    end
    redirect_to puzzle_path(params[:id])
  end
end
