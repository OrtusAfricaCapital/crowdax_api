
module Api
  module V1
    class RegistrationsController < ApplicationController
      before_action :restrict_access
      def create
        user = User.create!(
          firstname: params['user']['firstname'],
          lastname: params['user']['lastname'],
          email: params['user']['email'],
          password: params['user']['password'],
          password_confirmation: params['user']['password_confirmation'],
          account_type: params['user']['account_type'],
          ##verified: params['user']['verified']      
        )
    
        if user
          session[:user_id] = user.id
          render json: {
            status: :created,
            user: user
          }
        else
          render json: { status: 500 }
        end #ends if clause 
        
      end #ends create method 

      
    private ####### private method
      def restrict_access #provides secure header token 
        authenticate_or_request_with_http_token do |token, options|
          ApiKey.exists?(access_token: token)
        end
      end #ends restrict_access

    end #ends class 
  end #ends V1 module
end #ends API module