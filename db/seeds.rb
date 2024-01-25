# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Categories.create(title: 'Programming languages')
Categories.create(title: 'Sign language')
Tests.create(title: 'Ruby_1p', level: 1, category_id: 1)
Tests.create(title: 'Ruby_2p', level: 2, category_id: 1)
Tests.create(title: 'HTML', level: 0, category_id: 1)
Tests.create(title: 'CSS', level: 2, category_id: 1)
Tests.create(title: 'Machine learning', level: 3, category_id: 1)
Users.create(name: 'Andrew', gender: 'male', test_id: 1)
Users.create(name: 'Andrew', gender: 'male', test_id: 2)
Users.create(name: 'Viktoria', gender: 'female', test_id: 1)
Users.create(name: 'Eugen', gender: 'male', test_id: 2)
Users.create(name: 'Andrew', gender: 'male', test_id: 2)
Users.create(name: 'Viktoria', gender: 'female', test_id: 3)
Users.create(name: 'Eugen', gender: 'male', test_id: 4)
Quetions.create(body: 'What language are you learning?', test_id: 1)
Quetions.create(body: 'What language are you learning?', test_id: 2)
Quetions.create(body: 'What language are you learning?', test_id: 3)
Quetions.create(body: 'What language are you learning?', test_id: 4)
Answers.create(body: 'English', correct: = false, question_id = 1)
Answers.create(body: 'France', correct: = false, question_id = 1)
Answers.create(body: 'Deutsch', correct: = false, question_id = 1)
Answers.create(body: 'Ruby', correct: = true, question_id = 1)
Answers.create(body: 'Japanese', correct: = false, question_id = 2)
Answers.create(body: 'Chinese', correct: = false, question_id = 2)
Answers.create(body: 'Kinyarwanda', correct: = false, question_id = 2)
Answers.create(body: 'HTML', correct: = true, question_id = 2)
Answers.create(body: 'Vietnamese', correct: = false, question_id = 3)
Answers.create(body: 'Korean', correct: = false, question_id = 3)
Answers.create(body: 'Georgian', correct: = false, question_id = 3)
Answers.create(body: 'CSS', correct: = true, question_id = 3)
Answers.create(body: 'Portuguese', correct: = false, question_id = 4)
Answers.create(body: 'Spanish', correct: = false, question_id = 4)
Answers.create(body: 'Uzbek', correct: = false, question_id = 4)
Answers.create(body: 'Machine learning', correct: = true, question_id = 4)