class BewerbungController < ApplicationController

  def has_application?

    @user = current_user



    redirect_to new_application_path



  end

end
