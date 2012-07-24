class PapersController < ApplicationController
  def index
    @paper = Paper.new(:name => params[:name])
  end


end
