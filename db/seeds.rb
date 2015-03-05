# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
albums = Album.create([
  {title: "1989",artist:"Taylor Swift",price:"$16"},
  {title: "Speak Now",artist:"Taylor Swift",price:"$13"},
  {title: "Red",artist:"Taylor Swift",price:"$15"},
  {title: "Fearless",artist:"Taylor Swift",price:"$14"},
  ])

albums[0].songs << Song.create(title:"Blank Space", artist:"Taylor Swift",duration: "3:22")
albums[0].songs << Song.create(title:"Shake it Off", artist:"Taylor Swift",duration: "4:09")
albums[1].songs << Song.create(title:"Speak Now", artist:"Taylor Swift",duration: "3:48")
albums[2].songs << Song.create(title:"Red", artist:"Taylor Swift",duration: "3:29")
albums[3].songs << Song.create(title:"Fearless", artist:"Taylor Swift",duration: "3:32")
