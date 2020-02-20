20.times do |n|
  name  = "example-#{n+1}"
  User.create!(
    name:  name,
    password: "aaa",
    password_confirmation: "aaa",
  )
end

