class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  # GET /gigs
  # GET /gigs.json

  # def index
  #   @giggles = Gig.where(["name LIKE ?","%#{params[:search]}%"])
  # end

  def index
    if params.has_key?('search')
      @gigs = Gig.joins(:location).where("name ILIKE ? OR postcode_address ILIKE ? OR street_address ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%",  "%#{params[:search]}%")
    else
      @gigs = Gig.all
    end
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show
  end

  # GET /gigs/new
  def new
    @gig = Gig.new
  end

  # GET /gigs/1/edit
  def edit
  end

  # POST /gigs
  # POST /gigs.json
  def create
    @gig = current_user.gigs.new(gig_params)
    location = Location.find_or_create_by({
      postcode_address: params[:location][:postcode_address],
      street_address: params[:location][:street_address]
    })
    @gig.location = location
    respond_to do |format|
      if @gig.save
        format.html { redirect_to @gig, notice: 'Gig was successfully created.' }
        format.json { render :show, status: :created, location: @gig }
      else
        format.html { render :new }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gigs/1
  # PATCH/PUT /gigs/1.json
  def update
    location = Location.find_or_create_by({
      postcode_address: params[:location][:postcode_address],
      street_address: params[:location][:street_address]
    })
    @gig.location = location
    respond_to do |format|
      if @gig.update(gig_params)
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig }
      else
        format.html { render :edit }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @gig.destroy
    respond_to do |format|
      format.html { redirect_to gigs_url, notice: 'Gig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gig
      @gig = Gig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gig_params
      params.require(:gig).permit(:name, :price, :photo_url, :start_time, :gig_image, :remote_gig_image_url, :user_id, :location_id)
    end
end
