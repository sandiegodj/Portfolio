# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quotes = Quote.create([{quote: 'Appear weak when you are strong, and strong when you are weak', author: 'Sun Tzu'}, 
                      {quote: 'When you bring your full attention to each moment, a day is a complete lifetime of living and learning', author: 'Mark Divine'}, 
                      {quote: 'When a man is beaten, tormented and defeated…He is ready to learn something', author: 'Emerson'}])
