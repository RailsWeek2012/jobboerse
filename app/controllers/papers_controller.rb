class PapersController < ApplicationController

  def index
    @paper = Paper.new(:name => params[:name])
  end

  # def create
#    @paper = Paper.new(params[:paper])
 #   if @paper.save
#      flash[:notice] = "Successfully created gallery."
 #     redirect_to
 #   else
 #     render :action => 'new'
 #   end
  #end

end
