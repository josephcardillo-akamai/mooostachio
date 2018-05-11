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
  end
