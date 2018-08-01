
class SessionsController < ApplicationController

    def new

    end

    def create
        binding.pry
        @user = User.find_or_create_by(:uid => auth['uid'])
        session[:user_id] = @user.id
        binding.pry
    end

    private

    def auth
      request.env['omniauth.auth']
    end


end
