
10.times do
  Job.create({
    title: Faker::Job.title,
    field: Faker::Job.field,
    key_skill: Faker::Job.key_skill,
    description: Faker::Lorem.paragraphs(sentence_count=8, 2),
    contact: Faker::Internet.email,
    location: "48 wall street new york ny",
    uid: "Em2bv95Q2eMI3IHRANcV1VRQllx1"
  })
end
