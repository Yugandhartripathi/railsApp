User.create!(name: 'Kudo Shinichi',
             email: 'tripathi.yugandhar@gmail.com',
             password: 'tantei',
             password_confirmation: 'tantei',
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n + 1}@railstutorial.org"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
