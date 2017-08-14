
10.times do
  Job.create({
    title: Faker::Job.title,
    field: Faker::Job.field,
    key_skill: Faker::Job.key_skill,
    description: Faker::Lorem.paragraphs(sentence_count=8, 2),
    contact: Faker::Internet.email,
    uid: "97p839qnR9go0LI0lvL5hPoRozt2"
  })
end
