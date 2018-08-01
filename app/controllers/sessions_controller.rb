
class SessionsController < ApplicationController

    def new

    end

    def create
        binding.pry
        @user = create_or_find_by(:uid => auth['info']['uid'])
    end

    def auth
      request.env['omniauth.auth']
    end


end
