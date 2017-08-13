User.create(email: "jasonw4dev@gmail.com", password: "password", password_confirmation: "password", confirmed_at: DateTime.now)

10.times do
  Job.create({
    title: Faker::Job.title,
    field: Faker::Job.field,
    key_skill: Faker::Job.key_skill,
    description: Faker::Lorem.paragraph(2, true),
    user_id: 1
    })
end
