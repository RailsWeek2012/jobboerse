class TendersController < ApplicationController

 # MORGEN FRAGEN
  before_filter :authenticate_user!, except: [:show_all]


  # GET /tenders
  # GET /tenders.json
  def index

    @tenders = current_user.tenders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tenders }
    end
  end

  # GET /tenders/1
  # GET /tenders/1.json
  def show
    @user = User.find(current_user.id)

    @company_tenders = @user.tenders

    @tender = Tender.where(:user_id => current_user.id)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tender }
    end
  end

  # GET /tenders/new
  # GET /tenders/new.json
  def new
    @tender = Tender.new

    @user = User.find(current_user.id)

    @company_profile = @user.company_profile

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tender }
    end
  end

  # GET /tenders/1/edit
  def edit


      @tender = Tender.find(params[:id])
  end

  # POST /tenders
  # POST /tenders.json
  def create
    @tender = Tender.new(params[:tender])


    respond_to do |format|
      if @tender.save
        format.html { redirect_to tenders_path, notice: 'Tender was successfully created.' }
        format.json { render json: @tender, status: :created, location: @tender }
      else
        format.html { render action: "new" }
        format.json { render json: @tender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tenders/1
  # PUT /tenders/1.json
  def update
    @tender = Tender.find(params[:id])

    respond_to do |format|
      if @tender.update_attributes(params[:tender])
        format.html { redirect_to @tender, notice: 'Tender was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenders/1
  # DELETE /tenders/1.json
  def destroy
    @tender = Tender.find(params[:id])
    @tender.destroy

    respond_to do |format|
      format.html { redirect_to tenders_url }
      format.json { head :no_content }
    end
  end

  def show_all

    @tender = Tender.all

  end

end
