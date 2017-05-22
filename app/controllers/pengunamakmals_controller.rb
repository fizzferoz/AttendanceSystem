class PengunamakmalsController < ApplicationController
  before_action :set_pengunamakmal, only: [:show, :edit, :update, :destroy]

  # GET /pengunamakmals
  # GET /pengunamakmals.json
  def index
    @pengunamakmals = Pengunamakmal.all
  end

  # GET /pengunamakmals/1
  # GET /pengunamakmals/1.json
  def show
  end

  # GET /pengunamakmals/new
  def new
    @pengunamakmal = Pengunamakmal.new
  end

  # GET /pengunamakmals/1/edit
  def edit
  end

  # POST /pengunamakmals
  # POST /pengunamakmals.json
  def create
    @pengunamakmal = Pengunamakmal.new(pengunamakmal_params)

    respond_to do |format|
      if @pengunamakmal.save
        format.html { redirect_to @pengunamakmal, notice: 'Pengunamakmal was successfully created.' }
        format.json { render :show, status: :created, location: @pengunamakmal }
      else
        format.html { render :new }
        format.json { render json: @pengunamakmal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pengunamakmals/1
  # PATCH/PUT /pengunamakmals/1.json
  def update
    respond_to do |format|
      if @pengunamakmal.update(pengunamakmal_params)
        format.html { redirect_to @pengunamakmal, notice: 'Pengunamakmal was successfully updated.' }
        format.json { render :show, status: :ok, location: @pengunamakmal }
      else
        format.html { render :edit }
        format.json { render json: @pengunamakmal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengunamakmals/1
  # DELETE /pengunamakmals/1.json
  def destroy
    @pengunamakmal.destroy
    respond_to do |format|
      format.html { redirect_to pengunamakmals_url, notice: 'Pengunamakmal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pengunamakmal
      @pengunamakmal = Pengunamakmal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pengunamakmal_params
      params.require(:pengunamakmal).permit(:nama, :nombormatrix, :masamasukprogram, :masakeluarprogram)
    end
end
