User.create!(name:  "Neil Murphy",
             email: "nbmre4w@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

=begin
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
=end