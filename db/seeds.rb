User.destroy_all
Feedback.destroy_all

5.times do
  User.create(first_name: Faker::GameOfThrones.character, last_name:Faker::GameOfThrones.city, interest: Faker::GameOfThrones.quote, username: Faker::HowIMetYourMother.character, password_digest: 'n', image_url: '/')
end

Feedback.create(user_id: 1, comment: Faker::HowIMetYourMother.catch_phrase, colleague_id: 3)
Feedback.create(user_id: 2, comment: Faker::HowIMetYourMother.catch_phrase, colleague_id: 1)
Feedback.create(user_id: 3, comment: Faker::HowIMetYourMother.catch_phrase, colleague_id: 5)
Feedback.create(user_id: 4, comment: Faker::HowIMetYourMother.catch_phrase, colleague_id: 2)
Feedback.create(user_id: 5, comment: Faker::HowIMetYourMother.catch_phrase, colleague_id: 4)
