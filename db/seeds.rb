# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
category_1 = Category.create!(title: 'Programming languages')
category_2 = Category.create!(title: 'Sign language')
user_1 = User.create!(name: 'Andrew', gender: 'male', email: 'a@b.com')
user_2 = User.create!(name: 'Viktoria', gender: 'female', email: 'v@b.com')
user_3 = User.create!(name: 'Eugen', gender: 'male', email: 'e@b.com')
author = User.create!(name: 'Dmitriy', gender: 'male', email: 'd@b.com', admin: true)
test_1 = Test.create!(title: 'Ruby', level: 1, category_id: category_1.id, author: author)
test_2 = Test.create!(title: 'Ruby', level: 2, category_id: category_1.id, author: author)
test_3 = Test.create!(title: 'Ruby', level: 3, category_id: category_1.id, author: author)
test_4 = Test.create!(title: 'Rails', level: 4, category_id: category_1.id, author: author)
test_5 = Test.create!(title: 'Rails', level: 5, category_id: category_1.id, author: author)
test_6 = Test.create!(title: 'Rails', level: 6, category_id: category_1.id, author: author)
test_7 = Test.create!(title: 'HTML', level: 7, category_id: category_1.id, author: author)
test_8 = Test.create!(title: 'CSS', level: 2, category_id: category_1.id, author: author)
test_9 = Test.create!(title: 'CSS', level: 4, category_id: category_1.id, author: author)
test_10 = Test.create!(title: 'CSS', level: 8, category_id: category_1.id, author: author)
test_11 = Test.create!(title: 'Machine learning', level: 3, category_id: category_1.id, author: author)
quest_1 = Question.create!(body: 'What language are you learning? 1', test_id: test_1.id)
quest_2 = Question.create!(body: 'What language are you learning? 2', test_id: test_2.id)
quest_3 = Question.create!(body: 'What language are you learning? 3', test_id: test_3.id)
quest_4 = Question.create!(body: 'What language are you learning? 4', test_id: test_4.id)
quest_5 = Question.create!(body: 'What language are you learning? 5', test_id: test_5.id)
quest_6 = Question.create!(body: 'What language are you learning? 6', test_id: test_6.id)
quest_7 = Question.create!(body: 'What language are you learning? 7', test_id: test_7.id)
quest_8 = Question.create!(body: 'What language are you learning? 8', test_id: test_8.id)
quest_9 = Question.create!(body: 'What language are you learning? 9', test_id: test_9.id)
quest_10 = Question.create!(body: 'What language are you learning? 10', test_id: test_10.id)
quest_11 = Question.create!(body: 'What language are you learning? 11', test_id: test_11.id)
Answer.create!(body: 'English 1', correct: false, question_id: quest_1.id)
Answer.create!(body: 'France 1', correct: false, question_id: quest_1.id)
Answer.create!(body: 'Deutsch 1', correct: false, question_id: quest_1.id)
Answer.create!(body: 'Ruby 1', correct: true, question_id: quest_1.id)
answer_5 = Answer.create!(body: 'English 2', correct: false, question_id: quest_2.id)
answer_6 = Answer.create!(body: 'France 2', correct: false, question_id: quest_2.id)
answer_7 = Answer.create!(body: 'Deutsch 2', correct: false, question_id: quest_2.id)
answer_8 = Answer.create!(body: 'Ruby 2', correct: true, question_id: quest_2.id)
answer_9 = Answer.create!(body: 'English 3', correct: false, question_id: quest_3.id)
answer_10 = Answer.create!(body: 'France 3', correct: false, question_id: quest_3.id)
answer_11 = Answer.create!(body: 'Deutsch 3', correct: false, question_id: quest_3.id)
answer_12 = Answer.create!(body: 'Ruby 3', correct: true, question_id: quest_3.id)
answer_13 = Answer.create!(body: 'English 4', correct: false, question_id: quest_4.id)
answer_14 = Answer.create!(body: 'France 4', correct: false, question_id: quest_4.id)
answer_15 = Answer.create!(body: 'Deutsch 4', correct: false, question_id: quest_4.id)
answer_16 = Answer.create!(body: 'Rails 4', correct: true, question_id: quest_4.id)
answer_17 = Answer.create!(body: 'English 5', correct: false, question_id: quest_5.id)
answer_18 = Answer.create!(body: 'France 5', correct: false, question_id: quest_5.id)
answer_19 = Answer.create!(body: 'Deutsch 5', correct: false, question_id: quest_5.id)
answer_20 = Answer.create!(body: 'Rails 5', correct: true, question_id: quest_5.id)
answer_21 = Answer.create!(body: 'English 6', correct: false, question_id: quest_6.id)
answer_22 = Answer.create!(body: 'France 6', correct: false, question_id: quest_6.id)
answer_23 = Answer.create!(body: 'Deutsch 6', correct: false, question_id: quest_6.id)
answer_24 = Answer.create!(body: 'Rails 6', correct: true, question_id: quest_6.id)
answer_25 = Answer.create!(body: 'Japanese 7', correct: false, question_id: quest_7.id)
answer_26 = Answer.create!(body: 'Chinese 7', correct: false, question_id: quest_7.id)
answer_27 = Answer.create!(body: 'Kinyarwanda 7', correct: false, question_id: quest_7.id)
answer_28 = Answer.create!(body: 'HTML 7', correct: true, question_id: quest_7.id)
answer_29 = Answer.create!(body: 'Vietnamese 2', correct: false, question_id: quest_8.id)
answer_30 = Answer.create!(body: 'Korean 2', correct: false, question_id: quest_8.id)
answer_31 = Answer.create!(body: 'Georgian 2', correct: false, question_id: quest_8.id)
answer_32 = Answer.create!(body: 'CSS 2', correct: true, question_id: quest_8.id)
answer_33 = Answer.create!(body: 'Vietnamese 4', correct: false, question_id: quest_9.id)
answer_34 = Answer.create!(body: 'Korean 4', correct: false, question_id: quest_9.id)
answer_35 = Answer.create!(body: 'Georgian 4', correct: false, question_id: quest_9.id)
answer_36 = Answer.create!(body: 'CSS 4', correct: true, question_id: quest_9.id)
answer_29 = Answer.create!(body: 'Vietnamese 8', correct: false, question_id: quest_10.id)
answer_30 = Answer.create!(body: 'Korean 8', correct: false, question_id: quest_10.id)
answer_31 = Answer.create!(body: 'Georgian 8', correct: false, question_id: quest_10.id)
answer_32 = Answer.create!(body: 'CSS 8', correct: true, question_id: quest_10.id)
answer_33 = Answer.create!(body: 'Portuguese 3', correct: false, question_id: quest_11.id)
answer_34 = Answer.create!(body: 'Spanish 3', correct: false, question_id: quest_11.id)
answer_35 = Answer.create!(body: 'Uzbek 3', correct: false, question_id: quest_11.id)
answer_36 = Answer.create!(body: 'Machine learning 3', correct: true, question_id: quest_11.id)