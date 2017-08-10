module Api
  module V1
    class JobsController < ApplicationController
      def index
        jobs = Job.order('created_at DESC')
        render json: {status: 'Success', message: 'loaded jobs', data:jobs}, status: :ok
      end
    end
  end
end
