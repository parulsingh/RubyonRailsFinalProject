# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create(subject:'Networking', image: 'https://brilliantek.com/wp-content/uploads/2014/03/2041589_orig.gif')
networking = Course.where(:subject => 'Networking')[0]

networking.jokes.create(jokeclass: 'Networking', content: 'Unix is user friendly. It’s just selective about who its friends are.')
networking.jokes.create(jokeclass: 'Networking', content: 'You know it’s love when you memorize her IP number to skip DNS overhead.')
networking.jokes.create(jokeclass: 'Networking', content: 'The best thing about 404 jokes is… wait, it’s around here somewhere…')
