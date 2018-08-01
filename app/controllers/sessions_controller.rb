
class SessionsController < ApplicationController

    def create
        binding.pry
    end



    def auth
      request.env['omniauth.auth']
    end

    
end
