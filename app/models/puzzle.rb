class Puzzle
attr_accessor :name, :instructions, :solution

  def initialize(attributes_hash)
    @name = attributes_hash["name"]
    @instructions = attributes_hash["instructions"]
    @solution = attributes_hash["solution"]
  end

  def self.random

    puzzles = Unirest.get("http://localhost:3000/api/v1/puzzles.json",
                    :headers => {"Accept" => "application/json"}).body
    puts puzzles
    puzzles.sample
    return Puzzle.new(puzzles.sample)

  end
end