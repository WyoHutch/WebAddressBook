class TblAddrsController < ApplicationController
  before_action :set_tbl_addr, only: %i[ show edit update destroy ]

  # GET /tbl_addrs or /tbl_addrs.json
  def index
    @tbl_addrs = TblAddr.all
  end

  # GET /tbl_addrs/1 or /tbl_addrs/1.json
  def show
  end

  # GET /tbl_addrs/new
  def new
    @tbl_addr = TblAddr.new
  end

  # GET /tbl_addrs/1/edit
  def edit
  end

  # POST /tbl_addrs or /tbl_addrs.json
  def create
    @tbl_addr = TblAddr.new(tbl_addr_params)

    respond_to do |format|
      if @tbl_addr.save
        format.html { redirect_to @tbl_addr, notice: "Tbl addr was successfully created." }
        format.json { render :show, status: :created, location: @tbl_addr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tbl_addr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_addrs/1 or /tbl_addrs/1.json
  def update
    respond_to do |format|
      if @tbl_addr.update(tbl_addr_params)
        format.html { redirect_to @tbl_addr, notice: "Tbl addr was successfully updated." }
        format.json { render :show, status: :ok, location: @tbl_addr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tbl_addr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_addrs/1 or /tbl_addrs/1.json
  def destroy
    @tbl_addr.destroy
    respond_to do |format|
      format.html { redirect_to tbl_addrs_url, notice: "Tbl addr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_addr
      @tbl_addr = TblAddr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tbl_addr_params
      params.require(:tbl_addr).permit(:last_name, :first_name, :state, :city, :zip, :phone, :email)
    end
end
