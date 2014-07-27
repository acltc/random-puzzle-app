class PuzzlesController < ApplicationController

  def show
    @random_puzzle = Puzzle.random
  end
end
