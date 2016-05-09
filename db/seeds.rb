# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

front_dive = Dive.create(:number_code => "101B", :description => "front dive pike", :degree_of_difficulty => 1.5)
pool = Pool.create(name: "SF Aquatic Center", address: "30 Shotwell St.", city: "San Francisco", state: "CA", team_id: 1)
team = Team.create(name: "North Shore Sharks")
competition_dive = CompetitionDive.create(score_1: 9.5, score_2: 10, score_3: 9, dive_id: 1, user_id: 1, meet_id: 1)