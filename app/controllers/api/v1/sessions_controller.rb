module Api
  module V1
    class SessionsController < ApplicationController      
      include CurrentUserConcern      
      before_action :restrict_access

       def create
   
           user = User
               .find_by(email: params["user"]["email"])
               .try(:authenticate, params["user"]["password"])
   
           if user 
               session[:user_id] = user.id
               render json: {
                   status: :created,
                   logged_in: true,
                   user: user
                 }
           else
               render json: { status: 401 }
           end
       end
   
     def logged_in 
       if @current_user
           render json: {
               logged_in: true, 
               user: @current_user
           }
       else
       render json:{logged_in: false}
       end
     end 
     
     def logout
       reset_session
       render json: {status: 200, logged_out: true}
     end

  private ####### private method
    def restrict_access #provides secure header token 
      authenticate_or_request_with_http_token do |token, options|
        ApiKey.exists?(access_token: token)
      end
    end #ends restrict_access
     
   end #ends class
  end #ends module 1
end #ends module 2