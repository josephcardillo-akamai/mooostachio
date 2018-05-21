class MaccountsController < ApplicationController
  before_action :set_maccount, only: [:show, :edit, :update, :destroy]

  # GET /maccounts
  # GET /maccounts.json
  def index
    @maccounts = Maccount.all
  end

  # GET /maccounts/1
  # GET /maccounts/1.json
  def show
    @mentries = Mentry.all
    @maccounts = Maccount.all

  end

  # GET /maccounts/new
  def new
    @maccount = Maccount.new
  end

  # GET /maccounts/1/edit
  def edit
  end

  # POST /maccounts
  # POST /maccounts.json
  def create
    @maccount = Maccount.new(maccount_params)
    @maccount.user_id = current_user.id
    respond_to do |format|
      if @maccount.save
        format.html { redirect_to @maccount, notice: 'Maccount was successfully created.' }
        format.json { render :show, status: :created, location: @maccount }
      else
        format.html { render :new }
        format.json { render json: @maccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maccounts/1
  # PATCH/PUT /maccounts/1.json
  def update
    respond_to do |format|
      if @maccount.update(maccount_params)
        format.html { redirect_to @maccount, notice: 'Maccount was successfully updated.' }
        format.json { render :show, status: :ok, location: @maccount }
      else
        format.html { render :edit }
        format.json { render json: @maccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maccounts/1
  # DELETE /maccounts/1.json
  def destroy
    @maccount.destroy
    respond_to do |format|
      format.html { redirect_to maccounts_url, notice: 'Maccount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maccount
      @maccount = Maccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maccount_params
      params.require(:maccount).permit(:name)
    end
end
