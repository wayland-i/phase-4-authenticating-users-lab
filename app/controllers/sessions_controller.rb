class SessionsController < ApplicationController

    #POST /
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
      end

    #DELETE
    def destroy
        session.delete :user_id
        head :no_content
    end

end
