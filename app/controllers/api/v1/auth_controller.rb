class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
   
    def create
      @user = User.find_by(username: user_login_params[:username])
      if @user && @user.authenticate(user_login_params[:password])
        token = JWT.encode({ user_id: @user.id }, 'Chlosa')
        
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password, Please try again' }, status: :unauthorized
      end
    end

    def show

      # byebug
      if current_user
        
        render json: {user: UserSerializer.new(current_user)}
      else
        render json:{error: "some error"}, status: 422
      end 
    end 
   
    private
   
    def user_login_params
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.require(:auth).permit(:username, :password)
    end
  end