module DashboardHelper
  def account_sum
    @mentries = Mentry.all
    total = 0
      @mentries.each do |mentry|
        if mentry.maccount.name == "Checking"
        total += mentry.amount
        end
      end
      number_to_currency(total)
  end

  def maccount_list
      @maccounts = Maccount.all
      arr = []
      @maccounts.each do |maccount|
         arr << maccount.name
      end
      return arr
      # account = []
      # arr.each do |a|
      #   account << a
      # end
      # return account
  end

  def maccount_totals
      @maccounts = Maccount.all
      arr = []
      @maccounts.each do |maccount|
        arr << maccount.mentries.sum(:amount)
      end
      num = []
      arr.each do |a|
        num << number_to_currency(a)
      end
      return num
  end

end
