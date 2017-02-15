User.create! name: "cuongnh",
  email: "cuongnh@admin.com",
  password: "123123",
  is_admin: true

5.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create name:  name,
  email: email,
  password: password
end

users = User.order(:created_at).take 4
5.times do
  content = Faker::Lorem.sentence 2
  users.each {|user| user.activities.create! content: content}
end
