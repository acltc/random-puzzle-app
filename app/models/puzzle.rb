class Puzzle

  def random

    random_puzzle = Unirest.get("http://localhost:3000/api/v1/puzzles/#{@rand_id}.json",
                    :headers => {"Accept" => "application/json"}).body)
    return 
  end
end