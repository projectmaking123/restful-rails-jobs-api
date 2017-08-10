

10.times do
  Job.create({
    title: Faker::Job.title,
    field: Faker::Job.field,
    key_skill: Faker::Job.key_skill
    })
end
