json.data do
  json.job do
    json.partial! 'api/v1/jobs/job', job: @job
  end
end
