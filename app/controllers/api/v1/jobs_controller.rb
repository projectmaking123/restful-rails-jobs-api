module Api
  module v1
    class JobController < ApplicationController
      def index
        jobs = Job.order('created_at DESC')
        render json: {status: 'Success', message: 'loaded jobs', data: jobs}, status: ok
      end
    end
  end
end
