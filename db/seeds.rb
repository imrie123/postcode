# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'
CSV.foreach("db/KEN_ALL.csv", encoding: 'UTF-8') do |info|
  Postal.create(
    postal_code: info[2],
    prefecture: info[3],
    city: info[4],
    town: info[5],
    )
end