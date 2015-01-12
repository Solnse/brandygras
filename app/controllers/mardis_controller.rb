class MardisController < ApplicationController
  before_action :set_mardi, only: [:show, :edit, :update, :destroy]

  # GET /mardis
  # GET /mardis.json
  def index
    @mardis = Mardi.all
  end

  # GET /mardis/1
  # GET /mardis/1.json
  def show
  end

  # GET /mardis/new
  def new
    @mardi = Mardi.new
  end

  # GET /mardis/1/edit
  def edit
  end

  # POST /mardis
  # POST /mardis.json
  def create
    @mardi = Mardi.new(mardi_params)

    respond_to do |format|
      if @mardi.save
        format.html { redirect_to @mardi, notice: 'Mardi was successfully created.' }
        format.json { render :show, status: :created, location: @mardi }
      else
        format.html { render :new }
        format.json { render json: @mardi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mardis/1
  # PATCH/PUT /mardis/1.json
  def update
    respond_to do |format|
      if @mardi.update(mardi_params)
        format.html { redirect_to @mardi, notice: 'Mardi was successfully updated.' }
        format.json { render :show, status: :ok, location: @mardi }
      else
        format.html { render :edit }
        format.json { render json: @mardi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mardis/1
  # DELETE /mardis/1.json
  def destroy
    @mardi.destroy
    respond_to do |format|
      format.html { redirect_to mardis_url, notice: 'Mardi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mardi
      @mardi = Mardi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mardi_params
      params[:mardi]
    end
end
