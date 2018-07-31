class UserController < ApplicationController
  def new
    user = User.new
    user.username = params[ "username" ]
    user.bio = params[ "bio" ]
    user.save

    #verifie et redirige la page vers show
    if user.username != nil
    redirect_to "/show"
    else
      puts "error"
    end
  end

  def show
    @users = User.all
  end
end
