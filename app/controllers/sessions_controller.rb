
class SessionsController < ApplicationController

    def new

    end

    def create
        @user = create_or_find_by(:uid => auth['info']['uid'])
        binding.pry
    end

    def auth
      request.env['omniauth.auth']
    end


end
