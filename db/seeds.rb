User.create(name: "Diana Meow", email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")

puts "1 User created"

3.times do |article|
  Article.create!(title: "Ruby on Rails", description: "Beginner level", user_id: User.first.id )
end

puts "3 Ruby on Rails articles have been created"

3.times do |article|
  Article.create!(title: "Ajax", description: "Beginner level", user_id: User.first.id )
end

puts "3 Ajax articles have been created"

3.times do |article|
  Article.create!(title: "Javascript", description: "Beginner level", user_id: User.first.id )
end

puts "3 Javascript articles have been created"

Category.create(name: "Ruby on Rails")
Category.create(name: "Ajax")
Category.create(name: "Javascript")

puts "3 Categories created"

Collection.create(name: "How to create a search form", user_id: User.first.id )
Collection.create(name: "How to connect to postgresql", user_id: User.first.id )

puts "2 Collections created"