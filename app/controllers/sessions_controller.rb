
class SessionsController < ApplicationController

    def new

    end
    
    def create
        binding.pry
    end



    def auth
      request.env['omniauth.auth']
    end


end
