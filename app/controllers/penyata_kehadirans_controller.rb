class PenyataKehadiransController < ApplicationController
  before_action :set_penyata_kehadiran, only: [:show, :edit, :update, :destroy]

  # GET /penyata_kehadirans
  # GET /penyata_kehadirans.json
  def index
    @penyata_kehadirans = PenyataKehadiran.all
  end

  # GET /penyata_kehadirans/1
  # GET /penyata_kehadirans/1.json
  def show
  end

  # GET /penyata_kehadirans/new
  def new
    @penyata_kehadiran = PenyataKehadiran.new
  end

  # GET /penyata_kehadirans/1/edit
  def edit
  end

  # POST /penyata_kehadirans
  # POST /penyata_kehadirans.json
  def create
    @penyata_kehadiran = PenyataKehadiran.new(penyata_kehadiran_params)

    respond_to do |format|
      if @penyata_kehadiran.save
        format.html { redirect_to @penyata_kehadiran, notice: 'Penyata kehadiran was successfully created.' }
        format.json { render :show, status: :created, location: @penyata_kehadiran }
      else
        format.html { render :new }
        format.json { render json: @penyata_kehadiran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /penyata_kehadirans/1
  # PATCH/PUT /penyata_kehadirans/1.json
  def update
    respond_to do |format|
      if @penyata_kehadiran.update(penyata_kehadiran_params)
        format.html { redirect_to @penyata_kehadiran, notice: 'Penyata kehadiran was successfully updated.' }
        format.json { render :show, status: :ok, location: @penyata_kehadiran }
      else
        format.html { render :edit }
        format.json { render json: @penyata_kehadiran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penyata_kehadirans/1
  # DELETE /penyata_kehadirans/1.json
  def destroy
    @penyata_kehadiran.destroy
    respond_to do |format|
      format.html { redirect_to penyata_kehadirans_url, notice: 'Penyata kehadiran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_penyata_kehadiran
      @penyata_kehadiran = PenyataKehadiran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def penyata_kehadiran_params
      params.require(:penyata_kehadiran).permit(:tarikh, :masamula, :masatamat)
    end
end
