class HiMomsController < ApplicationController
  before_action :set_hi_mom, only: [:show, :edit, :update, :destroy]

  # GET /hi_moms
  # GET /hi_moms.json
  def index
    @hi_moms = HiMom.all
  end

  # GET /hi_moms/1
  # GET /hi_moms/1.json
  def show
  end

  # GET /hi_moms/new
  def new
    @hi_mom = HiMom.new
  end

  # GET /hi_moms/1/edit
  def edit
  end

  # POST /hi_moms
  # POST /hi_moms.json
  def create
    @hi_mom = HiMom.new(hi_mom_params)

    respond_to do |format|
      if @hi_mom.save
        format.html { redirect_to @hi_mom, notice: 'Hi mom was successfully created.' }
        format.json { render :show, status: :created, location: @hi_mom }
      else
        format.html { render :new }
        format.json { render json: @hi_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hi_moms/1
  # PATCH/PUT /hi_moms/1.json
  def update
    respond_to do |format|
      if @hi_mom.update(hi_mom_params)
        format.html { redirect_to @hi_mom, notice: 'Hi mom was successfully updated.' }
        format.json { render :show, status: :ok, location: @hi_mom }
      else
        format.html { render :edit }
        format.json { render json: @hi_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hi_moms/1
  # DELETE /hi_moms/1.json
  def destroy
    @hi_mom.destroy
    respond_to do |format|
      format.html { redirect_to hi_moms_url, notice: 'Hi mom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hi_mom
      @hi_mom = HiMom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hi_mom_params
      params.fetch(:hi_mom, {})
    end
end
