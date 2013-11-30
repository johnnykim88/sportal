# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 #    Sport.create(name: 'Golf')
	# Sport.create(name: 'Tennis')
	# Sport.create(name: 'Squash')
	# Sport.create(name: 'Running')
	# Sport.create(name: 'Workout')
	# Sport.create(name: 'Basketball')

["Basketball", "Golf", "Tennis", "Squash", "Workout", "Running"].each do |sport|
	Sport.find_or_create_by_name(sport)
end

	