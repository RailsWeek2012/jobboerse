class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Willkommen auf Jobboerse"

      if current_user.is_company
           redirect_to new_company_profile_path
      else
          redirect_to new_user_profile_path
      end
    else
      render :new
    end
  end
end
