99.times do |n|
  name  = Faker::Name.name #generates random name
  prefix = "#{name.split.last.downcase}" + "#{n+1}"
  prefix.remove!(".")
  prefix.remove!("\'")
  email = prefix + "@gmail.com"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end