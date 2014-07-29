# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..476).to_a.shuffle.each_with_index do |puzzle_id, index|

  PuzzleDay.create(:day => index.days.from_now, :puzzle_id => puzzle_id)

end