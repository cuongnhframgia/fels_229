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

5.times do |n|
  Category.create! name: "Category-#{n+1}"
end

5.times do |n|
  content = "word-1-#{n+1}"
  category_id = 1
  Word.create! content: content,
  category_id: category_id
  # status: status
end

5.times do |n|
  content = "word-2-#{n+1}"
  category_id = 2
  Word.create! content: content,
  category_id: category_id
  # status: status
end

5.times do |n|
  content = "word-3-#{n+1}"
  category_id = 3
  Word.create! content: content,
  category_id: category_id
  # status: status
end

5.times do |n|
  content = "word-4-#{n+1}"
  category_id = 4
  Word.create! content: content,
  category_id: category_id
  # status: status
end

5.times do |n|
  content = "word-5-#{n+1}"
  category_id = 5
  Word.create! content: content,
  category_id: category_id
  # status: status
end

5.times do |n|
  user_id = 1
  category_id = 1
  Lesson.create! user_id: user_id,
  category_id: category_id
end

5.times do |n|
  user_id = 2
  category_id = 2
  Lesson.create! user_id: user_id,
  category_id: category_id
end

5.times do |n|
  word_id = 1
  content = "answer-#{n+1}"
  is_Correct = true
  Answer.create! word_id: word_id,
  content: content,
  is_Correct: is_Correct
end

5.times do |n|
  lesson_id = 2
  answer_id = 1
  word_id = 1
  Result.create! lesson_id: lesson_id,
  answer_id: answer_id,
  word_id: word_id
end
