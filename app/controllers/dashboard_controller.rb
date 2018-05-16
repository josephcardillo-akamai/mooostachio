class DashboardController < ApplicationController
  def index
    @mentries = Mentry.all
    @mcategories = Mcategory.all
    @mcategory = @mcategories.find_by(params[:name])
    @maccounts = Maccount.all
    @mentry = Mentry.new
    @entry = Mentry.first
    @search = Search.new
  end

  def show
    @maccounts = Maccount.all
    @mentry = Mentry.new(mentry_params)
    @mentry.user_id = current_user.id
    @mcategories = Mcategory.all
    @search = Search.new

      if @mentry.save && @mentry.mtype.name == 'Transfer'
        respond_to do |format|
          format.js
        end
      else
        respond_to do |format|
          format.js
        end
      end

      if @search.save
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentry
      @mentry = Mentry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentry_params
      params.require(:mentry).permit(:amount, :date, :note, :maccount_id, :mcategory_id, :mlocation_id, :mtype_id, :mstatus_id)
    end

    def search_params
      params.require(:search).permit(:start_date, :end_date)
    end
end
