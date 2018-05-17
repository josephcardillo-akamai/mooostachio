class DashboardController < ApplicationController
  def index
    @mentries = Mentry.all
    @mcategories = Mcategory.all
    @mcategory = @mcategories.find_by(params[:name])
    @maccounts = Maccount.all
    @mentry = Mentry.new
    @entry = Mentry.first
      puts '****************************'
      puts params.inspect
      # puts params[:to_date]
      puts "#{params[:to_date]['(1i)']}"
      puts '****************************'
    # if params[:search] == nil
    #   @mentries = Mentry.all
    # else
    #   to_search = params[:search]
    #   category_id = Mcategory.where(name: to_search).first.id
    #   @mentries = Mentry.where(mcategory_id: category_id)
    # end
  end

  def show
    @maccounts = Maccount.all
    @mentry = Mentry.new(mentry_params)
    @mentry.user_id = current_user.id
    @mcategories = Mcategory.all

      if @mentry.save && @mentry.mtype.name == 'Transfer'
        respond_to do |format|
          format.js
        end
      else
        respond_to do |format|
          format.js
        end
      end

    puts '****************************'
    puts params.inspect
    puts '****************************'
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

end
