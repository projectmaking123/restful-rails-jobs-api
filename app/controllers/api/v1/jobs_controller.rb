module Api
  module V1
    class JobsController < ApplicationController
      def index
        jobs = Job.order('created_at DESC')
        render json: {status: 'Success', message: 'loaded jobs', data:jobs}, status: :ok
      end

      def show
        job = Job.find_by(id: params[:id])
        render json: {status: 'Success', message: 'loaded job', data:job}, status: :ok
      end

      def create
        job = Job.new(job_params)
        if job.save
          render json: {status: 'Success', message: 'saved job', data: job}, status: :ok
        else
          render json: {status: 'Error', message: 'not saved', data: job.errors},
          status: :unprocessable_entity
        end
      end

      def destroy
        job = Job.find_by(id: params[:id])
        job.destroy
        render json: {status: 'Success', message: 'removed job', data:job}, status: :ok
      end

      private

      def job_params
        params.permit(:title, :field, :key_skill, :description)
      end

    end
  end
end
