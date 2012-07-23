class UsersController < ApplicationController

  def index
    @user = User.new
  end #new

  def create
    @user = User.new(params[:user])

    if @user.save


      redirect_to root_path, flash[:notice] => "Herzlich Willkommen"

    else
      render "index"

    end

  end #create
end
