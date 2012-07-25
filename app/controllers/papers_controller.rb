class PapersController < ApplicationController


  def self.index
    @paper = Paper.new(:name => params[:name])
  end

   def create

   @paper = Paper.new(params[:paper])
   @paper.user = current_user
   @paper.application = Application.find(session[:application_id])
   session[:application_id] = nil


    if @paper.save
      flash[:notice] = "Bewerbung erfolgreich hochgeladen."
      redirect_to root_path
    else
      render :action => 'new'
    end
 end

end
