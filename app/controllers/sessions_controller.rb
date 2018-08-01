
class SessionsController < ApplicationController

    def new

    end

    def create
        binding.pry
        @user = User.find_or_create_by(:uid => auth['info']['uid'])
        binding.pry
    end

    private

    def auth
      request.env['omniauth.auth']
    end


end
