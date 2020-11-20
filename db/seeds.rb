# require 'faker'


Booking.delete_all
Partner.delete_all
User.delete_all

user_one = User.create(email: 'anna@example.com', password: '123456')
partner_one = Partner.create(user: user_one, name: 'peter', gender: 'm', address: "Gyßlingstraße
80805 München", duty: "walks your dog", url_photo: "https://images.unsplash.com/photo-1529831129093-0fa4866281ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_two = User.create(email: 'arthur@example.com', password: '123456')
partner_two = Partner.create(user: user_two, name: 'lilly', gender: 'f', duty: "fixes your broken cupboard", url_photo: "https://images.unsplash.com/photo-1543248939-4296e1fea89b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1653&q=80")
user_three = User.create(email: 'sophia@example.com', password: '123456')
partner_three = Partner.create(user: user_three, name: 'max', gender: 'm', duty: "makes you a smoothie", url_photo: "https://images.unsplash.com/photo-1536304447766-da0ed4ce1b73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_four = User.create(email: 'johanna@example.com', password: '123456')
partner_four = Partner.create(user: user_four, name: 'daniel', gender: 'm', duty: "picks up your package from the postoffice", url_photo: "https://images.unsplash.com/photo-1566576721346-d4a3b4eaeb55?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
user_five = User.create(email: 'zim@example.com', password: '123456')
partner_five = Partner.create(user: user_five, name: 'sarah', gender: 'f', duty: "cooks an amazing dinner", url_photo: "https://images.unsplash.com/photo-1577308873518-7fd772788ec6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_six = User.create(email: 'benjamin@example.com', password: '123456')
partner_six = Partner.create(user: user_six, name: 'ines', gender: 'f', address: "Sophienstraße 21, 70178 Stuttgart", duty: "drives you to your morning meeting", url_photo: "https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_seven = User.create(email: 'kate@example.com', password: '123456')
partner_seven = Partner.create(user: user_six, name: 'carl', gender: 'm', duty: "paints your wall", url_photo: "https://images.unsplash.com/photo-1525909002-1b05e0c869d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_eight = User.create(email: 'nedo@example.com', password: '123456')
partner_eight = Partner.create(user: user_six, name: 'pia', gender: 'f', duty: "sets up your flowerbed", url_photo: "https://images.unsplash.com/photo-1536235918060-dd0b5d3d0dda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_nine = User.create(email: 'britt@example.com', password: '123456')
partner_nine = Partner.create(user: user_six, name: 'jack', gender: 'm', duty: "cleans your floor", url_photo: "https://images.unsplash.com/photo-1581578949510-fa7315c4c350?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
user_ten = User.create(email: 'mario@example.com', password: '123456')
partner_ten = Partner.create(user: user_six, name: 'emma', gender: 'f', address: "Viktualienmarkt 3", duty: "gets your vegetables from local market ", url_photo: "https://images.unsplash.com/photo-1594299246161-96e7f1531482?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")






# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
# Partner.create(user: user_one, name: 'max', gender: 'f', duty: "walks your dog", url_photo: "https://i.pinimg.com/originals/67/01/12/670112585c6ae56bfd91cfa799025560.jpg")
