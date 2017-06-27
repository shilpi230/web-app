User.create!(name: "Diana Meow", email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")

User.create!(name: "Test 2", email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")

puts "2 Users created"

User.create!(name: "Admin User", email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", roles: "site_admin")

puts "1 Admin User created"

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

Category.create!(name: "Ruby on Rails")
Category.create!(name: "Ajax")
Category.create!(name: "Javascript")

puts "3 Categories created"

Collection.create!(name: "search form", user_id: User.first.id )
Collection.create!(name: "postgresql", user_id: User.first.id )

puts "2 Collections created"

ArticleCategory.create!(category_id: Category.first.id, article_id: Article.first.id)

puts "1 article in ROR category"

ArticleCollection.create!(collection_id: Collection.first.id, article_id: Article.first.id)

puts "1 article in search form collection"