20.times do |n|
  name  = "example-#{n+1}"
  email = "example-#{n+1}@sample.com"
  User.create!(
    name:  name,
    email: email,
    password: "aaa",
    password_confirmation: "aaa",
  )
end

