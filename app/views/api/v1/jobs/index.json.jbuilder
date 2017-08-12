json.data do
  json.array! @jobs do |job|
    json.partial! 'api/v1/jobs/job', job: job
  end
end
