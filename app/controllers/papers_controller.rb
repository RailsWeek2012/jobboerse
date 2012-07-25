class PapersController < ApplicationController

  def index
    @paper = Paper.new(:name => params[:name])
  end

   def create

   @paper = Paper.new(params[:paper])

    if @paper.save
      flash[:notice] = "Bewerbung erfolgreich hochgeladen."
      redirect_to root_path
    else
      render :action => 'new'
    end
 end

end
