# require "open-uri"

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# partner = Partner.create!(name: 'sophia', duty: "something", user_id: User.last.id)
# partner.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#s
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_one = User.create(email: 'max@example.com', password: '123456')
partner_one = Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
user_two = User.create(email: 'cindy@example.com', password: '123456')
partner_two = Partner.create(user: user_two, name: 'cindy', gender: 'f', duty: "drills a hole in the wall", url_photo: "https://images.unsplash.com/photo-1504148455328-c376907d081c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_three = User.create(email: 'aldskf@example.com', password: '123456')
partner_three = Partner.create(user: user_three, name: 'maria', gender: 'f', duty: "walks your cow", url_photo: "https://images.unsplash.com/photo-1543411490-18228b9aa64f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_four = User.create(email: 'bluebary@example.com', password: '123456')
partner_four = Partner.create(user: user_four, name: 'alice', gender: 'f', duty: "walks your bird", url_photo: "https://images.unsplash.com/photo-1542345534921-a224df1738b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_five = User.create(email: 'kwiwi@example.com', password: '123456')
partner_five = Partner.create(user: user_five, name: 'kate', gender: 'f', duty: "walks your squirrel", url_photo: "https://images.unsplash.com/photo-1464536194743-0c49f0766ef6?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
user_six = User.create(email: 'kkll@example.com', password: '123456')
partner_six = Partner.create(user: user_six, name: 'soph', gender: 'f', duty: "cleans your ladybug", url_photo: "https://images.unsplash.com/photo-1585676737728-432f58d5fdba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
