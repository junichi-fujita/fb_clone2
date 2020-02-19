20.times do |n|
  name  = "example-#{n+1}"
  User.create!(
    name:  name,
  )
end

