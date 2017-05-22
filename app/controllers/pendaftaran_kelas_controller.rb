class PendaftaranKelasController < ApplicationController
  before_action :set_pendaftaran_kela, only: [:show, :edit, :update, :destroy]

  # GET /pendaftaran_kelas
  # GET /pendaftaran_kelas.json
  def index
    @pendaftaran_kelas = PendaftaranKela.all
  end

  # GET /pendaftaran_kelas/1
  # GET /pendaftaran_kelas/1.json
  def show
  end

  # GET /pendaftaran_kelas/new
  def new
    @pendaftaran_kela = PendaftaranKela.new
  end

  # GET /pendaftaran_kelas/1/edit
  def edit
  end

  # POST /pendaftaran_kelas
  # POST /pendaftaran_kelas.json
  def create
    @pendaftaran_kela = PendaftaranKela.new(pendaftaran_kela_params)

    respond_to do |format|
      if @pendaftaran_kela.save
        format.html { redirect_to @pendaftaran_kela, notice: 'Pendaftaran kela was successfully created.' }
        format.json { render :show, status: :created, location: @pendaftaran_kela }
      else
        format.html { render :new }
        format.json { render json: @pendaftaran_kela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pendaftaran_kelas/1
  # PATCH/PUT /pendaftaran_kelas/1.json
  def update
    respond_to do |format|
      if @pendaftaran_kela.update(pendaftaran_kela_params)
        format.html { redirect_to @pendaftaran_kela, notice: 'Pendaftaran kela was successfully updated.' }
        format.json { render :show, status: :ok, location: @pendaftaran_kela }
      else
        format.html { render :edit }
        format.json { render json: @pendaftaran_kela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pendaftaran_kelas/1
  # DELETE /pendaftaran_kelas/1.json
  def destroy
    @pendaftaran_kela.destroy
    respond_to do |format|
      format.html { redirect_to pendaftaran_kelas_url, notice: 'Pendaftaran kela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pendaftaran_kela
      @pendaftaran_kela = PendaftaranKela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pendaftaran_kela_params
      params.require(:pendaftaran_kela).permit(:program, :penganjur, :tujuan, :tempohmasamula, :tempohmasatamat)
    end
end
