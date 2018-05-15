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

  def chart_array
    @categories = Mcategory.all
    @entries = Mentry.all
    cat_amount_array = []
    chart_array = []
    @categories.each do |category|
      @entries.each do |entry|
        if category.name == entry.mcategory.name
        cat_amount_array.push(category.name)
        cat_amount_array.push(entry.amount)
        end
        chart_array.push(cat_amount_array)
        return chart_array
      end
    end
  end
end
