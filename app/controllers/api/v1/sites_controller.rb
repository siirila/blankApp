class Api::V1::SitesController < ApplicationController
  before_action :set_api_v1_site, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/sites
  # GET /api/v1/sites.json
  def index
    @api_v1_sites = Api::V1::Site.all
  end

  # GET /api/v1/sites/1
  # GET /api/v1/sites/1.json
  def show
  end

  # GET /api/v1/sites/new
  def new
    @api_v1_site = Api::V1::Site.new
  end

  # GET /api/v1/sites/1/edit
  def edit
  end

  # POST /api/v1/sites
  # POST /api/v1/sites.json
  def create
    @api_v1_site = Api::V1::Site.new(api_v1_site_params)

    respond_to do |format|
      if @api_v1_site.save
        format.html { redirect_to @api_v1_site, notice: 'Site was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_site }
      else
        format.html { render :new }
        format.json { render json: @api_v1_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/sites/1
  # PATCH/PUT /api/v1/sites/1.json
  def update
    respond_to do |format|
      if @api_v1_site.update(api_v1_site_params)
        format.html { redirect_to @api_v1_site, notice: 'Site was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_site }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/sites/1
  # DELETE /api/v1/sites/1.json
  def destroy
    @api_v1_site.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_sites_url, notice: 'Site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_site
      @api_v1_site = Api::V1::Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_site_params
      params.require(:api_v1_site).permit(:url)
    end
end
