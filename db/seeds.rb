# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Track.delete_all
Event.delete_all

track = Track.create(name: "Coding")
track = Track.create(name: "Eating")
track = Track.create(name: "computer")
track = Track.create(name: "Thing")



Event.create(start_time: 9, end_time: 10, track: track, name: "lunch")
Event.create(start_time: 11, end_time: 12, track: track, name: "dinner 2")
Event.create(start_time: 16, end_time: 20, track: track, name: "Afternoon session")