class DashboardController < ApplicationController
  def index
    @mentries = Mentry.all
    @mcategories = Mcategory.all
    @mcategory = @mcategories.find_by(params[:name])
    @maccounts = Maccount.all
    @mentry = Mentry.new
    @entry = Mentry.first

    if params[:to_date] != nil && params[:from_date] != nil
      # Set "to_date" params
      @to_date_year = "#{params[:to_date]['(1i)']}"
      @to_date_month = "#{params[:to_date]['(2i)']}"
      @to_date_day = "#{params[:to_date]['(3i)']}"

      # Set "from_date" params
      @from_date_year = "#{params[:from_date]['(1i)']}"
      @from_date_month = "#{params[:from_date]['(2i)']}"
      @from_date_day = "#{params[:from_date]['(3i)']}"

      # To convert "to_date" month to two digits if needed
      if @to_date_month.to_i < 10
        @to_date_month_two_digit = "0" + "#{@to_date_month}"
      else
        @to_date_month_two_digit = @to_date_month
      end

      # To convert "to_date" day to two digits if needed
      if @to_date_day.to_i < 10
        @to_date_day_two_digit = "0" + "#{@to_date_day}"
      else
        @to_date_day_two_digit = @to_date_day
      end


      # To convert "to_date" month to two digits if needed
      if @from_date_month.to_i < 10
        @from_date_month_two_digit = "0" + "#{@from_date_month}"
      else
        @from_date_month_two_digit = @from_date_month
      end

      # To convert "from_date" day from two digits if needed
      if @from_date_day.to_i < 10
        @from_date_day_two_digit = "0" + "#{@from_date_day}"
      else
        @from_date_day_two_digit = @from_date_day
      end


      # To convert "from_date" into correct format
      @from_date = "#{@from_date_year}-#{@from_date_month_two_digit}-#{@from_date_day}"

      # To convert "to_date" into correct format
      @to_date = "#{@to_date_year}-#{@to_date_month_two_digit}-#{@to_date_day}"

    end

    puts '****************************'
    puts @from_date
    puts @to_date
    puts '****************************'
  end

  def show
    @maccounts = Maccount.all
    @mentry = Mentry.new(mentry_params)
    @mentry.user_id = current_user.id
    @mcategories = Mcategory.all

    if @mentry
        if @mentry.mtype_id == nil || @mentry.mtype_id == nil || @mentry.maccount_id == nil || @mentry.mcategory_id == nil || @mentry.mlocation_id == nil
          p 'ASDFASDFASDFASDFASDFASDFASDF'
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
        end
    end

    if @mentry.save
      puts '****************************'
      puts params.inspect
      puts '****************************'
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
