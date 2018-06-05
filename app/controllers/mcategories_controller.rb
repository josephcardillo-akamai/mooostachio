class McategoriesController < ApplicationController
  before_action :set_mcategory, only: [:show, :edit, :update, :destroy]

  # GET /mcategories
  # GET /mcategories.json
  def index
    @mcategories = Mcategory.all
  end

  # GET /mcategories/1
  # GET /mcategories/1.json
  def show

  end

  # GET /mcategories/new
  def new
    @mcategory = Mcategory.new
  end

  # GET /mcategories/1/edit
  def edit
  end

  # POST /mcategories
  # POST /mcategories.json
  def create
    @mcategory = Mcategory.new(mcategory_params)
    @mcategory.user_id = current_user.id
    respond_to do |format|
      if @mcategory.save
        format.html { redirect_to root_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @mcategory }
      else
        format.html { render :new }
        format.json { render json: @mcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcategories/1
  # PATCH/PUT /mcategories/1.json
  def update
    respond_to do |format|
      if @mcategory.update(mcategory_params)
        format.html { redirect_to @mcategory, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @mcategory }
      else
        format.html { render :edit }
        format.json { render json: @mcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcategories/1
  # DELETE /mcategories/1.json
  def destroy
    @mcategory.destroy
    respond_to do |format|
      format.html { redirect_to mcategories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcategory
      @mcategory = Mcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mcategory_params
      params.require(:mcategory).permit(:name)
    end
end
