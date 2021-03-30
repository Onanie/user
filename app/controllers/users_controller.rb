class UsersController < ApplicationController
  def index
    render jsonapi: User.all
  end

  def show
    @user = User.find(params[:id])
    
  end

  def edit
    @user = User.find(params[:id])
   
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
        NotifierMailer.archived(@user).deliver_later
        redirect_to root_path
    else
      render :edit
    end
  end

end
