class ApplicationController < ActionController::API
    before_action :authorized
   
#     def encode_token(payload)
#       # should store secret in env variable
#       JWT.encode(payload, 'my_s3cr3t')
#     end
   
    def get_token

      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
    
    def decoded_token
        # if auth_header
        #     token = auth_header.split(' ')[1]
        #     byebug
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(get_token, 'Chlosa')
        rescue JWT::DecodeError
          nil
        end
      
    end
   
    def current_user
      if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
      end
    end
   
    def logged_in?
      !!current_user
    end
   
    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
  end