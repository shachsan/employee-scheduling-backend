class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]


    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            token=JWT.encode({user_id: @user.id}, 'SECRET')
            render json: { user: @user, jwt: token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end
     
      private
      def user_params
        params.permit(:username, :password_digest, :dept_manager_id, :associate_id)
      end
end
