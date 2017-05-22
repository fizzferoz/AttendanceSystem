class StatuskehadiranpengunamakmalsController < ApplicationController
  before_action :set_statuskehadiranpengunamakmal, only: [:show, :edit, :update, :destroy]

  # GET /statuskehadiranpengunamakmals
  # GET /statuskehadiranpengunamakmals.json
  def index
    @statuskehadiranpengunamakmals = Statuskehadiranpengunamakmal.all
  end

  # GET /statuskehadiranpengunamakmals/1
  # GET /statuskehadiranpengunamakmals/1.json
  def show
  end

  # GET /statuskehadiranpengunamakmals/new
  def new
    @statuskehadiranpengunamakmal = Statuskehadiranpengunamakmal.new
  end

  # GET /statuskehadiranpengunamakmals/1/edit
  def edit
  end

  # POST /statuskehadiranpengunamakmals
  # POST /statuskehadiranpengunamakmals.json
  def create
    @statuskehadiranpengunamakmal = Statuskehadiranpengunamakmal.new(statuskehadiranpengunamakmal_params)

    respond_to do |format|
      if @statuskehadiranpengunamakmal.save
        format.html { redirect_to @statuskehadiranpengunamakmal, notice: 'Statuskehadiranpengunamakmal was successfully created.' }
        format.json { render :show, status: :created, location: @statuskehadiranpengunamakmal }
      else
        format.html { render :new }
        format.json { render json: @statuskehadiranpengunamakmal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statuskehadiranpengunamakmals/1
  # PATCH/PUT /statuskehadiranpengunamakmals/1.json
  def update
    respond_to do |format|
      if @statuskehadiranpengunamakmal.update(statuskehadiranpengunamakmal_params)
        format.html { redirect_to @statuskehadiranpengunamakmal, notice: 'Statuskehadiranpengunamakmal was successfully updated.' }
        format.json { render :show, status: :ok, location: @statuskehadiranpengunamakmal }
      else
        format.html { render :edit }
        format.json { render json: @statuskehadiranpengunamakmal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuskehadiranpengunamakmals/1
  # DELETE /statuskehadiranpengunamakmals/1.json
  def destroy
    @statuskehadiranpengunamakmal.destroy
    respond_to do |format|
      format.html { redirect_to statuskehadiranpengunamakmals_url, notice: 'Statuskehadiranpengunamakmal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statuskehadiranpengunamakmal
      @statuskehadiranpengunamakmal = Statuskehadiranpengunamakmal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statuskehadiranpengunamakmal_params
      params.require(:statuskehadiranpengunamakmal).permit(:statuskehadiran, :statusmasuk)
    end
end
