class Puzzle
attr_accessor :id, :name, :instructions, :solution

  def initialize(attributes_hash)
    @id = attributes_hash["id"]
    @name = attributes_hash["name"]
    @instructions = attributes_hash["instructions"]
    @solution = attributes_hash["solution"]
  end

  def self.random_daily

    todays_puzzle = PuzzleDay.find_by(day: Date.today)
    puzzle = Unirest.get("http://localhost:3000/api/v1/puzzles/#{todays_puzzle.puzzle_id}.json",
                    :headers => {"Accept" => "application/json"}).body
  
    return Puzzle.new(puzzle)

  end
end