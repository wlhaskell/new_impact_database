# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

pn = Pathname.new('db\impact.csv')

CSV.foreach(pn.realpath) do |row|
	Impact.create(latitude: row[0], longitude: row[1])
end