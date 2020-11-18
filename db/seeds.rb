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

user_one = User.create(email: 'soph@example.com', password: '123456')
partner_one = Partner.create(user: user_one, name: 'soph', gender: 'f', duty: "walks your dog")
user_two = User.create(email: 'sasd@example.com', password: '123456')
partner_two = Partner.create(user: user_two, name: 'soph', gender: 'f', duty: "walks your cat")
user_three = User.create(email: 'aldskf@example.com', password: '123456')
partner_three = Partner.create(user: user_three, name: 'maria', gender: 'f', duty: "walks your cow")
user_four = User.create(email: 'ssdfg@example.com', password: '123456')
partner_four = Partner.create(user: user_four, name: 'alice', gender: 'f', duty: "walks your bird")
user_five = User.create(email: 'yxvb@example.com', password: '123456')
partner_five = Partner.create(user: user_five, name: 'kate', gender: 'f', duty: "walks your xxx")
user_six = User.create(email: 'kkkd@example.com', password: '123456')
partner_six = Partner.create(user: user_six, name: 'soph', gender: 'f', duty: "walks your yyyy")
