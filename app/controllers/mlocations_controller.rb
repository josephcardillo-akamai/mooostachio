class MlocationsController < ApplicationController
  before_action :set_mlocation, only: [:show, :edit, :update, :destroy]

  # GET /mlocations
  # GET /mlocations.json
  def index
    @mlocations = Mlocation.all
  end

  # GET /mlocations/1
  # GET /mlocations/1.json
  def show

  end

  # GET /mlocations/new
  def new
    @mlocation = Mlocation.new
  end

  # GET /mlocations/1/edit
  def edit
  end

  # POST /mlocations
  # POST /mlocations.json
  def create
    @mlocation = Mlocation.new(mlocation_params)
    @mlocation.user_id = current_user.id
    respond_to do |format|
      if @mlocation.save
        format.html { redirect_to @mlocation, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @mlocation }
      else
        format.html { render :new }
        format.json { render json: @mlocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mlocations/1
  # PATCH/PUT /mlocations/1.json
  def update
    respond_to do |format|
      if @mlocation.update(mlocation_params)
        format.html { redirect_to @mlocation, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @mlocation }
      else
        format.html { render :edit }
        format.json { render json: @mlocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mlocations/1
  # DELETE /mlocations/1.json
  def destroy
    @mlocation.destroy
    respond_to do |format|
      format.html { redirect_to mlocations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mlocation
      @mlocation = Mlocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mlocation_params
      params.require(:mlocation).permit(:name)
    end
end
