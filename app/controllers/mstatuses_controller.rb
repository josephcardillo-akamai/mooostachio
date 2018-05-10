class MstatusesController < ApplicationController
  before_action :set_mstatus, only: [:show, :edit, :update, :destroy]

  # GET /mstatuses
  # GET /mstatuses.json
  def index
    @mstatuses = Mstatus.all
  end

  # GET /mstatuses/1
  # GET /mstatuses/1.json
  def show
  end

  # GET /mstatuses/new
  def new
    @mstatus = Mstatus.new
  end

  # GET /mstatuses/1/edit
  def edit
  end

  # POST /mstatuses
  # POST /mstatuses.json
  def create
    @mstatus = Mstatus.new(mstatus_params)

    respond_to do |format|
      if @mstatus.save
        format.html { redirect_to @mstatus, notice: 'Mstatus was successfully created.' }
        format.json { render :show, status: :created, location: @mstatus }
      else
        format.html { render :new }
        format.json { render json: @mstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mstatuses/1
  # PATCH/PUT /mstatuses/1.json
  def update
    respond_to do |format|
      if @mstatus.update(mstatus_params)
        format.html { redirect_to @mstatus, notice: 'Mstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @mstatus }
      else
        format.html { render :edit }
        format.json { render json: @mstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mstatuses/1
  # DELETE /mstatuses/1.json
  def destroy
    @mstatus.destroy
    respond_to do |format|
      format.html { redirect_to mstatuses_url, notice: 'Mstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mstatus
      @mstatus = Mstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mstatus_params
      params.require(:mstatus).permit(:name)
    end
end
