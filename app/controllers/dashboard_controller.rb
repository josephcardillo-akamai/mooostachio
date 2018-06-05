class DashboardController < ApplicationController
  def index
    @mentries = Mentry.all
    @mcategories = Mcategory.all
    @mcategory = @mcategories.find_by(params[:name])
    @maccounts = Maccount.all
    @mentry = Mentry.new
    @entry = Mentry.first
  end

  def show
    @maccounts = Maccount.all
    @mentry = Mentry.new(mentry_params)
    @mentry.user_id = current_user.id
    @mcategories = Mcategory.all

    if @mentry
        if @mentry.mtype_id == nil || @mentry.mtype_id == nil || @mentry.maccount_id == nil || @mentry.mcategory_id == nil || @mentry.mlocation_id == nil
          p 'nil'
        elsif @mentry.mtype.name == 'debit'
          @mentry.amount = @mentry.amount * -1
        elsif @mentry.mtype.name == 'transfer from'
          @mentry.amount = @mentry.amount * -1
        elsif @mentry.mtype.name == 'withdrawal'
          @mentry.amount = @mentry.amount * -1
        elsif @mentry.mtype.name == 'payment'
          @mentry.amount = @mentry.amount * -1
        elsif @mentry.mtype.name == 'check'
          @mentry.amount = @mentry.amount * -1
        elsif @mentry.mtype.name == 'charge'
          @mentry.amount = @mentry.amount * -1
        end
    end

    if @mentry.save
      # puts '****************************'
      # puts params.inspect
      # puts '****************************'
      respond_to do |format|
        format.js
      end
    else
      render :index
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentry
      @mentry = Mentry.find(params[:id])
    end

    def type_set
      if @mentry.mtype.name == "debit"
        @mentry.amount = @mentry.amount * -1
      end

      if @mentry.mtype.name == "transfer from"
        @mentry.amount = @mentry.amount * -1
      end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def mentry_params
      params.require(:mentry).permit(:amount, :date, :note, :maccount_id, :mcategory_id, :mlocation_id, :mtype_id, :mstatus_id, :split, :entry_id, :user_id)
    end

end
