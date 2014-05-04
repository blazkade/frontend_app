class AddeshopsController < ApplicationController
  before_action :set_addeshop, only: [:show, :edit, :update, :destroy]

  # GET /addeshops
  # GET /addeshops.json
  def index
    @addeshops = Addeshop.all
  end

  # GET /addeshops/1
  # GET /addeshops/1.json
  def show
  end

  # GET /addeshops/new
  def new
    @addeshop = Addeshop.new
  end

  # GET /addeshops/1/edit
  def edit
  end

  # POST /addeshops
  # POST /addeshops.json
  def create
    @addeshop = Addeshop.new(addeshop_params)
    @addeshop.status = "ceka na vyrizeni"
    respond_to do |format|
      if @addeshop.save
      #   redirect_to :controller=>'send', :action=>'data', :my_eshopAddress => @addeshop.eshopAddress
      # end
        format.html { redirect_to @addeshop, notice: 'Addeshop was successfully created.' }
        format.json { render :show, status: :created, location: @addeshop }
      else
        format.html { render :new }
        format.json { render json: @addeshop.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /addeshops/1
  # PATCH/PUT /addeshops/1.json
  def update
    respond_to do |format|
      if @addeshop.update(addeshop_params)
        format.html { redirect_to @addeshop, notice: 'Addeshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @addeshop }
      else
        format.html { render :edit }
        format.json { render json: @addeshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addeshops/1
  # DELETE /addeshops/1.json
  def destroy
    @addeshop.destroy
    respond_to do |format|
      format.html { redirect_to addeshops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addeshop
      @addeshop = Addeshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addeshop_params
      params.require(:addeshop).permit(:eshopAddress)
    end
end
