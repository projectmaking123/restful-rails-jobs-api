module Api
  module V1
    class UsersController < ApplicationController
      def create
        job = Job.find_by(id: params[:job_id])
        @user = User.find_or_create_by!(uid: params[:user][:uid]) do |user|
          user.email = params[:user][:email]
          user.name = params[:user][:name]
        end
        if @user
          job.applicants.push(@user)
          render :create
        else
          head(:unprocessable_entity)
        end
      end

      private
      def user_params
        params.require(:user).permit(:name, :email, :uid)
      end
    end
  end
end
