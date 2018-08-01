
class SessionsController < ApplicationController

    def new

    end

    def create

        @user = User.find_or_create_by(:uid => auth['uid']) do
            
        end
        session[:user_id] = @user.id

    end

    private

    def auth
      request.env['omniauth.auth']
    end


end
